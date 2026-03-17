/**
 * check-camera-settings.mjs
 *
 * Fetches Apple and Android camera support pages daily and uses Claude to
 * verify whether the "How to set it" instructions in src/lib/defaults.js
 * are still accurate. If they've drifted, updates the file in place and
 * signals the workflow to open a PR.
 *
 * Required env: ANTHROPIC_API_KEY
 * Writes to:    GITHUB_OUTPUT (changed, diff_summary)
 */

import fs from 'fs'
import { appendFileSync } from 'fs'
import Anthropic from '@anthropic-ai/sdk'

const DEFAULTS_PATH = 'src/lib/defaults.js'

// Apple's iPhone video settings guide (stable URL — update if Apple moves it)
const APPLE_URL =
  'https://support.apple.com/guide/iphone/change-video-settings-iphb4b7d313f/ios'

// Android camera help (generic — Android is fragmented so we check Google's own Pixel docs)
const ANDROID_URL =
  'https://support.google.com/pixelphone/answer/2840857'

// The sentinel string we're looking for in the file
const SENTINEL = '**How to set it:**'

// ─── helpers ──────────────────────────────────────────────────────────────────

async function fetchPage(url) {
  const res = await fetch(url, {
    headers: {
      'User-Agent':
        'Mozilla/5.0 (compatible; StardustSettingsBot/1.0; +https://github.com/tallmansamadam/stardustShowBible)',
    },
    signal: AbortSignal.timeout(15_000),
  })
  if (!res.ok) throw new Error(`HTTP ${res.status} from ${url}`)
  return res.text()
}

function setOutput(key, value) {
  const out = process.env.GITHUB_OUTPUT
  if (out) appendFileSync(out, `${key}=${value}\n`)
  else console.log(`[output] ${key}=${value}`)
}

// ─── main ─────────────────────────────────────────────────────────────────────

async function main() {
  const fileContent = fs.readFileSync(DEFAULTS_PATH, 'utf8')

  // Find the target line
  const lineIndex = fileContent
    .split('\n')
    .findIndex((l) => l.startsWith(SENTINEL))

  if (lineIndex === -1) {
    console.log('Could not find "How to set it:" line in file — skipping.')
    setOutput('changed', 'false')
    return
  }

  const currentLine = fileContent.split('\n')[lineIndex]
  console.log('Current instruction line:\n', currentLine)

  // Fetch support pages — failures are non-fatal
  let appleHtml = ''
  let androidHtml = ''

  try {
    appleHtml = await fetchPage(APPLE_URL)
    console.log(`Fetched Apple page (${appleHtml.length} chars)`)
  } catch (e) {
    console.warn('Could not fetch Apple support page:', e.message)
  }

  try {
    androidHtml = await fetchPage(ANDROID_URL)
    console.log(`Fetched Android page (${androidHtml.length} chars)`)
  } catch (e) {
    console.warn('Could not fetch Android support page:', e.message)
  }

  if (!appleHtml && !androidHtml) {
    console.log('Neither support page was reachable — skipping update.')
    setOutput('changed', 'false')
    return
  }

  // Strip HTML tags for readability
  const stripTags = (html) => html.replace(/<[^>]+>/g, ' ').replace(/\s+/g, ' ')
  const appleText = stripTags(appleHtml).slice(0, 6000)
  const androidText = stripTags(androidHtml).slice(0, 3000)

  // Ask Claude
  const client = new Anthropic()

  const response = await client.messages.create({
    model: 'claude-opus-4-6',
    max_tokens: 512,
    messages: [
      {
        role: 'user',
        content: `You are verifying whether the camera settings instructions in a style guide are still accurate.

CURRENT INSTRUCTION LINE in the style guide:
${currentLine}

APPLE SUPPORT PAGE (text extracted from HTML):
${appleText}

ANDROID SUPPORT PAGE (text extracted from HTML):
${androidText}

Task:
1. Check whether the iPhone navigation path (Settings → Camera → Record Video → ...) matches what Apple's current documentation describes.
2. Check whether the Android navigation path is still reasonable for modern Android phones.
3. If either path has changed or is clearly wrong based on the source material, write a corrected replacement for the full instruction line. Keep the same format and tone — start with "**How to set it:**".

Respond with JSON only, no markdown:
{
  "changed": true or false,
  "reason": "one sentence explanation",
  "new_line": "the full corrected line, or null if unchanged"
}`,
      },
    ],
  })

  let result
  try {
    const raw = response.content[0].text.trim()
    result = JSON.parse(raw)
  } catch (e) {
    console.warn('Could not parse Claude response:', response.content[0].text)
    setOutput('changed', 'false')
    return
  }

  console.log('Claude result:', JSON.stringify(result, null, 2))

  if (!result.changed || !result.new_line) {
    console.log('Instructions are current:', result.reason)
    setOutput('changed', 'false')
    return
  }

  // Apply the update
  const lines = fileContent.split('\n')
  lines[lineIndex] = result.new_line
  const updated = lines.join('\n')

  if (updated === fileContent) {
    console.log('File unchanged after attempted edit — no diff detected.')
    setOutput('changed', 'false')
    return
  }

  fs.writeFileSync(DEFAULTS_PATH, updated, 'utf8')
  console.log('File updated.\nNew line:', result.new_line)

  setOutput('changed', 'true')
  // Sanitise reason for use as a single-line output value
  setOutput('diff_summary', result.reason.replace(/\n/g, ' ').replace(/"/g, "'"))
}

main().catch((e) => {
  console.error('Unhandled error:', e)
  process.exit(1)
})
