-- ─────────────────────────────────────────────────────────────────────────────
-- Stardust Chicago — Social Posts Batch 3
-- Date range: June 15 – July 19, 2026
-- Reel-heavy. Every Video/Reel/Stitch post includes a full video_script.
-- All posts include post_time based on platform best practices.
-- Run AFTER supabase-posts-batch2.sql (does NOT delete existing posts).
--
-- BEFORE RUNNING: Replace 'YOUR_USER_ID_HERE' with your actual Supabase user ID.
-- ─────────────────────────────────────────────────────────────────────────────

DO $$
DECLARE
  uid uuid := 'YOUR_USER_ID_HERE';
BEGIN

-- ══════════════════════════════════════════════════════════════════════════════
-- WEEK 1 · Jun 15–21 · Summer is here — warm nights, outdoor-to-indoor energy
-- ══════════════════════════════════════════════════════════════════════════════

-- ── POST 200 · Twitter/X Tweet · Jun 15 · Summer opener ──────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'summer is here. stardust chicago is open thursday, friday, saturday. 710 n clark, river north.',
'', '', '', '2026-06-15', '08:00');

-- ── POST 201 · TikTok Video · Jun 15 · Summer launch ─────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'summer karaoke at stardust chicago. outdoor heat, indoor energy. 710 n clark, river north. doors at 8.',
'',
'Summer opener — exteriors of the building on a warm night, then cut inside to the room coming alive. That outdoor-to-indoor warmth. Raw, natural.',
'Script: "summer is here. and stardust is open."

0:00 · 2s — Exterior: warm evening light on 710 N Clark, people walking in
0:02 · 2s — Front door opens, cool interior floods in — the threshold
0:04 · 2s — Inside: bar lit warm, room filling, first drinks poured
0:06 · 2s — Stage lit, mic ready, the room leaning toward it
0:08 · 2s — First singer of the summer — fully in it
0:10 · 2s — Wide room — people arriving still, energy climbing
0:12 · 4s — End card: STARDUST CHICAGO · EVERY THU FRI SAT · 710 N CLARK
Total: ~16s',
'2026-06-15', '10:00');

-- ── POST 202 · Instagram Reel · Jun 15 · Summer is here ──────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'summer nights at stardust chicago just hit different.

Thu · Fri · Sat · Doors 8pm
📍 710 N Clark, River North',
'#stardustchicago #karaokechicago #summerchicago #chicagonightlife #riverNorth #thingstodoinchicago',
'Warm-light summer reel: exterior-to-interior, that golden late-evening hour into a room fully alive.',
'Script: "summer nights at stardust chicago. the kind you don''t forget."

0:00 · 2s — Exterior evening light — the street, the signage, the city alive
0:02 · 2s — People pushing through the front door, warmth of the room
0:04 · 2s — Bar detail: condensation on glasses, the warm light
0:06 · 2s — Singer on stage, crowd gathered close
0:08 · 2s — Room wide — full summer crowd, loose and happy
0:10 · 2s — Close on two people singing along together, arms around each other
0:12 · 4s — End card: STARDUST CHICAGO · SUMMER · 710 N CLARK
Total: ~16s',
'2026-06-15', '11:00');

-- ── POST 203 · Instagram Story · Jun 18 · Thursday night ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Tonight. Thursday karaoke at Stardust.
Doors 8pm · Open till 2am
📍 710 N Clark',
'',
'Story (9:16). Warm crowd shot from inside. Bold text overlay. Countdown sticker to 8pm.',
'', '2026-06-18', '16:00');

-- ── POST 204 · TikTok Video · Jun 18 · Thursday summer heat ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'thursday night in june at stardust chicago. the room is warm. so is the crowd. 710 n clark.',
'',
'Summer Thursday vibe — windows open, warm air, the crowd loose and easy. Feels like the start of something. Raw footage, natural audio.',
'Script: "thursday night at stardust. summer is doing something to this room."

0:00 · 2s — Wide shot: windows open, warm evening light still coming through
0:02 · 2s — The bar — people leaning in, summer looseness in every posture
0:04 · 2s — Singer at mic, relaxed, confident — summer energy
0:06 · 2s — Crowd reacts — laughter, hands up, total buy-in
0:08 · 2s — Close on two regulars — they know this room
0:10 · 2s — Wide room, full now — the night fully arrived
0:12 · 4s — End card: STARDUST CHICAGO · EVERY THURSDAY · 710 N CLARK
Total: ~16s',
'2026-06-18', '10:00');

-- ── POST 205 · Instagram Reel · Jun 19 · Friday summer night ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'friday night in summer. there is nowhere else to be.

Stardust Chicago · 710 N Clark · River North
Open till 4am',
'#fridaynight #stardustchicago #karaokechicago #summerchicago #latenightchicago #riverNorth',
'Friday summer night reel — outdoor-to-indoor transition, room at full Friday energy, late night vibe.',
'Script: "friday summer night at stardust. open till 4am."

0:00 · 1.5s — Exterior: warm night, people heading in
0:01 · 1.5s — Door opens into the sound and light
0:03 · 1.5s — Bar packed, drinks in every hand
0:04 · 1.5s — Singer in full flight, room locked in
0:06 · 1.5s — Wide — the Friday crowd at its loosest
0:07 · 1.5s — Close on a face singing every word
0:09 · 1.5s — Late night bar — 2am energy, no one leaving
0:10 · 2s — On-screen: "EVERY FRIDAY · TILL 4AM"
0:12 · 4s — End card: STARDUST CHICAGO · 710 N CLARK
Total: ~16s',
'2026-06-19', '11:00');

-- ── POST 206 · TikTok Video · Jun 19 · Friday POV ────────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'friday night karaoke at stardust chicago. 710 n clark. open till 4am. come.',
'',
'POV walk-in on a summer Friday — handheld through the door, into the crowd, ending at the stage. Raw audio, no music overlay.',
'Script: "friday night. stardust chicago. walk in."

0:00 · 2s — POV: standing outside 710 N Clark, summer night, the sound leaking out
0:02 · 2s — Push through the door — sound hits, lights shift
0:04 · 2s — Moving through the crowd — faces, drinks, energy
0:06 · 2s — Approaching the bar — the bartender mid-pour
0:08 · 2s — Turning toward stage — singer coming into frame
0:10 · 2s — Stage fills frame — singer at peak, crowd behind you
0:12 · 4s — End card: STARDUST CHICAGO · EVERY FRIDAY · TILL 4AM
Total: ~16s',
'2026-06-19', '10:00');

-- ── POST 207 · TikTok Video · Jun 20 · Saturday summer uncut ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'saturday night at stardust chicago. first real summer weekend. till 5am.',
'',
'One uncut summer Saturday clip. The room at full capacity. Whatever is happening on stage, the crowd doing exactly what it does.',
'Script: "saturday. first real weekend of summer. stardust chicago."

0:00 · 22s — One uncut clip, raw audio. The room at full Saturday summer peak — whoever is on stage, the crowd exactly where it should be. Hot room, summer looseness, nowhere anyone is trying to be except here.
0:22 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~26s',
'2026-06-20', '10:00');

-- ── POST 208 · Instagram Reel · Jun 20 · Saturday peak crowd ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'first saturday of summer at stardust chicago. the room knew.

710 N Clark · River North · Till 5am',
'#saturdaynight #stardustchicago #karaokechicago #summerchicago #chicagonightlife #latenightchicago',
'Peak Saturday summer energy — wide room shots, crowd reactions, the room at its most alive.',
'Script: "first saturday of summer. this is what stardust looks like."

0:00 · 2s — Wide: summer Saturday crowd, wall to wall
0:02 · 2s — Singer fully committed, arms out, the crowd returns it
0:04 · 2s — Bar packed — summer drinks, summer heat, summer faces
0:06 · 2s — Close on a group, mid-chorus, arm in arm
0:08 · 2s — Different singer, different energy, same room loving it
0:10 · 2s — Wide again — the full thing, undeniable
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-06-20', '11:00');

-- ── POST 209 · Instagram Story · Jun 20 · Saturday night ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Saturday at Stardust.
Open till 5am.
📍 710 N Clark',
'',
'Story (9:16). Packed Saturday crowd photo. Bold text overlay. Countdown sticker to 8pm.',
'', '2026-06-20', '16:00');

-- ── POST 210 · Facebook Post · Jun 21 · Week 1 recap ─────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Facebook', 'Post', 'draft',
'First full summer weekend at Stardust Chicago. The room was exactly what a summer Saturday should be.

Three more nights next week — Thursday, Friday, Saturday.
Doors 8pm · 710 N Clark, River North',
'',
'Weekend recap photo — Saturday crowd at its peak, warm light, the room full.',
'', '2026-06-21', '13:00');

-- ── POST 211 · Instagram Carousel · Jun 23 · Summer venue feature ────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'the room in summer.

Slide 1: Exterior warm evening light
Slide 2: Bar detail — condensation, warm glow
Slide 3: Stage lit, crowd gathering
Slide 4: Room wide at capacity
Slide 5: Late-night bartender, last call energy

710 N Clark · River North · Thu Fri Sat',
'#stardustchicago #karaokebar #chicagobar #riverNorth #karaokechicago #summerchicago #chicagonightlife',
'5-slide summer venue carousel. Warm light throughout. The room as a character.',
'', '2026-06-23', '11:00');


-- ══════════════════════════════════════════════════════════════════════════════
-- WEEK 2 · Jun 22–28 · The regulars — spotlight the room, not just the singers
-- ══════════════════════════════════════════════════════════════════════════════

-- ── POST 212 · Twitter/X Tweet · Jun 24 · Wednesday countdown ────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'thursday at stardust chicago. 710 n clark. doors at 8. see you there.',
'', '', '', '2026-06-24', '08:00');

-- ── POST 213 · TikTok Video · Jun 25 · Thursday regulars ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'the regulars at stardust chicago know exactly what they''re doing. 710 n clark. every thursday.',
'',
'Regular-focused cut — faces in the crowd who look like they''ve been here a hundred times. The room, not the singers. That sense of a community that has already formed.',
'Script: "the regulars at stardust. they know."

0:00 · 2s — Wide room — regulars at their spots, familiar as furniture
0:02 · 2s — Close on a regular at the bar — relaxed, drink in hand, exactly where they want to be
0:04 · 2s — Two regulars talking — they know each other because of this room
0:06 · 2s — Regular at mic — no nerves, been here before
0:08 · 2s — Crowd: some faces new, some faces that know every word
0:10 · 2s — A regular orders without looking at the menu — the bar knows too
0:12 · 4s — End card: STARDUST CHICAGO · EVERY THURSDAY · 710 N CLARK
Total: ~16s',
'2026-06-25', '10:00');

-- ── POST 214 · Instagram Story · Jun 25 · Thursday night ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Tonight. Stardust Chicago.
Thursday karaoke · Doors 8pm
📍 710 N Clark',
'',
'Story (9:16). Close shot of the bar or stage — the warmth of the room before the crowd arrives. Bold text overlay.',
'', '2026-06-25', '16:00');

-- ── POST 215 · Instagram Reel · Jun 26 · The room itself ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'stardust chicago isn''t about the singer. it''s about what happens when the room decides to go with them.

710 N Clark · River North',
'#stardustchicago #karaokechicago #chicagonightlife #fridaynight #riverNorth #karaoke',
'Crowd-first reel — singers in background, the room in foreground. Faces, reactions, connection.',
'Script: "it''s not about the singer. it''s about the room."

0:00 · 2s — Stage in background, crowd in foreground — the crowd is the point
0:02 · 2s — Close on a face in the crowd, mouthing every word
0:04 · 2s — Group of strangers, arms around each other, mid-chorus
0:06 · 2s — Crowd clapping — the whole room synced up
0:08 · 2s — Singer glances back — the room is giving it back to them
0:10 · 2s — Wide room — the whole thing, undeniable
0:12 · 4s — End card: STARDUST CHICAGO · THE ROOM · 710 N CLARK
Total: ~16s',
'2026-06-26', '11:00');

-- ── POST 216 · TikTok Video · Jun 26 · Friday crowd energy ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'friday night at stardust chicago. the room has a thing. 710 n clark. till 4am.',
'',
'Fast-cut crowd energy. No single hero — the room is the subject. Rapid cuts, natural audio spikes.',
'Script: "friday night. the room at stardust has a thing."

0:00 · 1s — Bar wide, the room alive
0:01 · 1s — Crowd face — laughing, locked in
0:02 · 1s — Singer at mic — confident, summer loose
0:03 · 1s — Group reaction — total investment
0:04 · 1s — Bar — drinks going out fast
0:05 · 1s — Different singer, different song, same energy
0:06 · 1s — Two people singing along to each other
0:07 · 1s — Wide room — full
0:08 · 1s — Late night bar — 1am energy, no one leaving
0:09 · 1s — Someone discovering the song book for the first time
0:10 · 2s — On-screen: "EVERY FRIDAY · TILL 4AM"
0:12 · 4s — End card: STARDUST CHICAGO · 710 N CLARK
Total: ~16s',
'2026-06-26', '10:00');

-- ── POST 217 · Instagram Story · Jun 27 · Saturday story ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Saturday at Stardust.
Open till 5am.
📍 710 N Clark',
'',
'Story (9:16). Packed Saturday crowd — the room at its peak. Countdown sticker if useful.',
'', '2026-06-27', '16:00');

-- ── POST 218 · TikTok Video · Jun 27 · Saturday late night ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'saturday night karaoke at stardust chicago. till 5am. the room does not run out of energy. 710 n clark.',
'',
'Late-Saturday energy — the room past midnight, still going hard. The regulars who don''t leave.',
'Script: "saturday at stardust. it''s 2am. the room is full."

0:00 · 2s — Clock detail: 2:00am on a phone in the crowd
0:02 · 2s — Wide room — still packed, somehow even looser
0:04 · 2s — Singer at mic — 2am voice, total commitment
0:06 · 2s — Crowd reaction — fully locked in, nobody going anywhere
0:08 · 2s — Bar: late-night pour, bartender mid-flow
0:10 · 2s — Wide again — the room that does not quit
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-06-27', '10:00');

-- ── POST 219 · Instagram Reel · Jun 27 · Saturday the regulars ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'the people who keep coming back to stardust chicago. they know something.

710 N Clark · River North · Every Saturday till 5am',
'#saturdaynight #stardustchicago #karaokechicago #chicagonightlife #latenightchicago #riverNorth',
'Reel focused on the regulars — the faces that know the room, the ones who''ve made it their own.',
'Script: "they keep coming back. because this room keeps giving."

0:00 · 2s — Regular at the bar — they''ve been here before, you can tell
0:02 · 2s — Group of regulars — they found each other because of this room
0:04 · 2s — Regular at the mic — no hesitation, they know the drill
0:06 · 2s — Crowd of regulars singing along — every word, no exception
0:08 · 2s — Late night regular — 3am, still going
0:10 · 2s — Wide room — some new faces, some old ones, all the same
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-06-27', '11:00');

-- ── POST 220 · Twitter/X Tweet · Jun 28 · Weekend wrap ───────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'stardust chicago was open till 5am last night. the room earned it. back thursday.',
'', '', '', '2026-06-28', '08:00');


-- ══════════════════════════════════════════════════════════════════════════════
-- WEEK 3 · Jun 29–Jul 5 · July 4th weekend — patriotic but Stardust-style
-- ══════════════════════════════════════════════════════════════════════════════

-- ── POST 221 · Instagram Carousel · Jun 30 · July 4th week preview ───────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'this week at stardust chicago: thu · fri · july 4th saturday.

Slide 1: "THU JUN 2 · DOORS 8PM · 710 N CLARK"
Slide 2: "FRI JUL 3 · TILL 4AM"
Slide 3: "SAT JUL 4 · INDEPENDENCE DAY · TILL 5AM"
Slide 4: The room at its most packed
Slide 5: "710 N CLARK · RIVER NORTH · FREE TO SING"',
'#stardustchicago #july4th #independenceday #karaokechicago #chicagonightlife #riverNorth',
'5-slide July 4th week announcement carousel. Bold text, warm patriotic tones without being corny. Red and warm gold light in photos.',
'', '2026-06-30', '11:00');

-- ── POST 222 · TikTok Video · Jul 2 · Thursday July 4th week ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'thursday at stardust chicago. july 4th weekend starts now. 710 n clark, river north.',
'',
'July 4th week Thursday energy — the anticipation of the big weekend. The room aware that Saturday is going to be something.',
'Script: "thursday at stardust. july 4th weekend starts now."

0:00 · 2s — Wide room: Thursday crowd, already feeling the long weekend energy
0:02 · 2s — Bar packed — people who got off work and came straight here
0:04 · 2s — Singer at mic — something patriotic, something unexpected
0:06 · 2s — Crowd reacts — laughter, recognition, total buy-in
0:08 · 2s — Someone in the crowd with a small American flag — completely unironic
0:10 · 2s — Wide again — the room at Thursday peak, knowing Saturday is coming
0:12 · 4s — End card: STARDUST CHICAGO · JUL 4TH WEEKEND · 710 N CLARK
Total: ~16s',
'2026-07-02', '10:00');

-- ── POST 223 · Instagram Story · Jul 2 · Thursday 4th of July week ───────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'July 4th weekend starts tonight.
Stardust Chicago · Doors 8pm
📍 710 N Clark',
'',
'Story (9:16). Bold text overlay on a warm Thursday crowd shot. Firework emoji is acceptable here. Countdown sticker to 8pm.',
'', '2026-07-02', '16:00');

-- ── POST 224 · TikTok Video · Jul 3 · Friday July 4th eve ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'july 4th eve at stardust chicago. nobody was watching fireworks. they were here. 710 n clark. till 4am.',
'',
'July 3rd Friday — the city is in holiday mode, Stardust benefits. The room fuller than a regular Friday, the energy different.',
'Script: "july 3rd at stardust. nobody left early."

0:00 · 2s — Exterior: city in holiday mode, Stardust lit up
0:02 · 2s — Inside: Friday crowd, bigger than usual, holiday looseness
0:04 · 2s — Singer doing something patriotic — crowd immediately screams
0:06 · 2s — Crowd: arms up, full volume, completely unhinged (in the best way)
0:08 · 2s — Bar: the July 3rd pour — everyone staying late
0:10 · 2s — Wide room at 1am — still packed, no one leaving before 4
0:12 · 4s — End card: STARDUST CHICAGO · JULY 3RD · TILL 4AM · 710 N CLARK
Total: ~16s',
'2026-07-03', '10:00');

-- ── POST 225 · Instagram Reel · Jul 3 · Friday 4th eve reel ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'july 3rd at stardust chicago. the city had plans. this was the plan.

710 N Clark · River North · Till 4am',
'#july4th #stardustchicago #karaokechicago #chicagonightlife #fridaynight #latenightchicago',
'July 3rd reel — holiday energy in a karaoke bar, the room in full summer patriotic mode without trying.',
'Script: "the city had plans for july 3rd. stardust was the plan."

0:00 · 2s — Wide room, holiday crowd — bigger, louder, more
0:02 · 2s — Singer choosing the most obvious patriotic song, the crowd erupting
0:04 · 2s — Group of people, arms around each other, screaming the words
0:06 · 2s — Bar: holiday cocktails, everyone buying a round
0:08 · 2s — Singer finishes, crowd goes genuinely wild
0:10 · 2s — Wide room — packed, the July energy undeniable
0:12 · 4s — End card: STARDUST CHICAGO · JULY 3RD · 710 N CLARK
Total: ~16s',
'2026-07-03', '11:00');

-- ── POST 226 · TikTok Video · Jul 4 · Independence Day Saturday ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'july 4th at stardust chicago. karaoke is the most american thing we could think of. 710 n clark. till 5am.',
'',
'July 4th Saturday — the big night. The room at its most chaotic and wonderful. The stars and stripes of karaoke: anyone can get on that mic.',
'Script: "july 4th. stardust chicago. karaoke is the most american thing."

0:00 · 2s — Wide room: Saturday July 4th crowd, wall to wall
0:02 · 2s — Singer doing something bold and american — the mic as a birthright
0:04 · 2s — Crowd: full volume, fireworks-adjacent energy
0:06 · 2s — Someone in the crowd waving a flag — nobody told them to
0:08 · 2s — Late night: 3am on July 4th, the room still going
0:10 · 2s — Wide again — the kind of night that justifies a holiday
0:12 · 4s — End card: STARDUST CHICAGO · JULY 4TH · TILL 5AM · 710 N CLARK
Total: ~16s',
'2026-07-04', '10:00');

-- ── POST 227 · Instagram Reel · Jul 4 · Independence Day reel ────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'july 4th at stardust chicago. the most american thing we could think of: a room where anyone can sing.

710 N Clark · River North · Till 5am',
'#july4th #independenceday #stardustchicago #karaokechicago #chicagonightlife #saturdaynight',
'Independence Day reel — the karaoke-as-freedom angle. Raw, warm, a little funny. July 4th crowd at its absolute best.',
'Script: "july 4th. everyone gets a mic. that''s kind of the point."

0:00 · 2s — Wide room, full capacity, July 4th energy
0:02 · 2s — Singer steps up — you would not have predicted them choosing this song
0:04 · 2s — The song lands — crowd goes completely in
0:06 · 2s — Different singer — opposite energy, just as committed
0:08 · 2s — Crowd: arm in arm, full volume, the room as a single thing
0:10 · 2s — Wide — the whole room, Independence Day at Stardust
0:12 · 4s — End card: STARDUST CHICAGO · JULY 4TH · 710 N CLARK
Total: ~16s',
'2026-07-04', '11:00');

-- ── POST 228 · Instagram Story · Jul 4 · Independence Day story ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Independence Day at Stardust Chicago.
Open till 5am.
📍 710 N Clark',
'',
'Story (9:16). July 4th crowd photo — the room packed, warm light. Bold text overlay. American flag emoji is fine here.',
'', '2026-07-04', '16:00');

-- ── POST 229 · Facebook Post · Jul 4 · Independence Day ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Happy Fourth of July from Stardust Chicago.

We''re open tonight till 5am — because karaoke is honestly the most American thing we could offer. One mic, one room, anyone can get up there.

See you tonight.

Doors 8pm · 710 N Clark, River North · No cover',
'',
'July 4th Facebook post. Warm crowd photo or stage shot with American flag visible somewhere naturally.',
'', '2026-07-04', '13:00');

-- ── POST 230 · Twitter/X Tweet · Jul 5 · July 4th recap ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'stardust chicago was open till 5am on july 4th. the room earned it. back thursday.',
'', '', '', '2026-07-05', '08:00');


-- ══════════════════════════════════════════════════════════════════════════════
-- WEEK 4 · Jul 6–12 · Mid-summer peak — the room at its best
-- ══════════════════════════════════════════════════════════════════════════════

-- ── POST 231 · Instagram Carousel · Jul 7 · Mid-summer feature ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'mid-summer at stardust chicago. the room at its best.

Slide 1: Wide room at peak capacity — mid-summer Saturday
Slide 2: Singer at mic, fully committed
Slide 3: Crowd reaction — the room going with them
Slide 4: Bar detail — mid-summer drinks, condensation on glass
Slide 5: "THU · FRI · SAT · 710 N CLARK · RIVER NORTH"',
'#stardustchicago #karaokechicago #summerchicago #chicagonightlife #riverNorth #midnightchicago',
'5-slide mid-summer carousel. The room at its absolute peak — these are the nights that define the summer.',
'', '2026-07-07', '11:00');

-- ── POST 232 · Twitter/X Tweet · Jul 8 · Wednesday hype ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'mid-summer karaoke at stardust chicago. thursday friday saturday. 710 n clark. doors at 8.',
'', '', '', '2026-07-08', '08:00');

-- ── POST 233 · TikTok Video · Jul 9 · Thursday mid-summer ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'thursday night karaoke at stardust chicago. mid-summer. the room is at its best right now. 710 n clark.',
'',
'Mid-summer Thursday — the room has hit its stride. The singers are bolder, the crowd looser, the nights longer. The room at its peak.',
'Script: "mid-summer thursday at stardust. this is what the room looks like when it''s at its best."

0:00 · 2s — Wide room: mid-summer Thursday, the room at full confidence
0:02 · 2s — Singer who has clearly been here before — no nerves, full commitment
0:04 · 2s — Crowd: the regulars and the new faces, all the same level now
0:06 · 2s — Bar: the mid-summer pour — everyone knows what they want
0:08 · 2s — Stage: the next singer waiting — the queue is long tonight
0:10 · 2s — Wide again — the room at its mid-summer peak
0:12 · 4s — End card: STARDUST CHICAGO · EVERY THURSDAY · 710 N CLARK
Total: ~16s',
'2026-07-09', '10:00');

-- ── POST 234 · Instagram Story · Jul 9 · Thursday night ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Mid-summer Thursday at Stardust.
Doors 8pm · Open till 2am
📍 710 N Clark',
'',
'Story (9:16). Mid-summer crowd shot — the room confident, the energy high. Bold text overlay. Countdown sticker to 8pm.',
'', '2026-07-09', '16:00');

-- ── POST 235 · TikTok Video · Jul 10 · Friday peak summer ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'friday night karaoke at stardust chicago. mid-summer. the room knows what it''s doing. 710 n clark. till 4am.',
'',
'Friday mid-summer peak — the room at its most confident. Singers who have found their courage over the summer, crowd that knows how to respond.',
'Script: "mid-summer friday. the room at stardust has figured itself out."

0:00 · 1.5s — Wide room: mid-summer Friday, wall to wall
0:01 · 1.5s — Singer approaching mic with total confidence
0:03 · 1.5s — They open their mouth — the crowd already reacts
0:04 · 1.5s — Mid-song: the singer fully locked in, no self-consciousness
0:06 · 1.5s — Crowd: singing every word, arms up
0:07 · 1.5s — Bar: the Friday pour, mid-summer thirst
0:09 · 1.5s — Different singer — completely different song, same commitment
0:10 · 2s — On-screen: "EVERY FRIDAY · TILL 4AM"
0:12 · 4s — End card: STARDUST CHICAGO · 710 N CLARK
Total: ~16s',
'2026-07-10', '10:00');

-- ── POST 236 · Instagram Reel · Jul 10 · Friday the room ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'mid-summer friday night at stardust chicago. the room has found its voice.

710 N Clark · River North · Till 4am',
'#fridaynight #stardustchicago #karaokechicago #summerchicago #chicagonightlife #latenightchicago',
'Mid-summer Friday reel — the room at its most confident, singers bolder, crowd more responsive than any week before.',
'Script: "mid-summer. the room at stardust has found its voice."

0:00 · 2s — Wide room: peak Friday mid-summer crowd
0:02 · 2s — Singer: no hesitation, they''ve done this before — this summer
0:04 · 2s — The song lands: crowd is already there before the chorus
0:06 · 2s — Close on the crowd — fully invested, every face in
0:08 · 2s — Late night: 2am, the room still full, no signs of leaving
0:10 · 2s — Wide — the room at its mid-summer best
0:12 · 4s — End card: STARDUST CHICAGO · EVERY FRIDAY · TILL 4AM
Total: ~16s',
'2026-07-10', '11:00');

-- ── POST 237 · Instagram Story · Jul 11 · Saturday story ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Saturday at Stardust. The room at its best.
Open till 5am.
📍 710 N Clark',
'',
'Story (9:16). Mid-summer Saturday crowd — the room at peak capacity. Bold text. Countdown sticker.',
'', '2026-07-11', '16:00');

-- ── POST 238 · TikTok Video · Jul 11 · Saturday mid-summer uncut ─────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'mid-summer saturday at stardust chicago. this is the room at its best. 710 n clark. till 5am.',
'',
'One long uncut clip. Mid-summer Saturday room at absolute peak. The crowd, the singer, the room as a single organism.',
'Script: "mid-summer saturday. stardust chicago. this is what it looks like at its best."

0:00 · 22s — One uncut clip, raw audio. Mid-summer Saturday peak: whoever is on stage, the crowd giving everything back. The room at the height of its summer confidence. Full. Loud. Nobody going anywhere.
0:22 · 4s — End card: STARDUST CHICAGO · MID-SUMMER · TILL 5AM
Total: ~26s',
'2026-07-11', '10:00');

-- ── POST 239 · Instagram Reel · Jul 11 · Saturday peak ───────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'mid-summer saturday at stardust chicago. the room at its absolute best.

710 N Clark · River North · Till 5am',
'#saturdaynight #stardustchicago #karaokechicago #summerchicago #chicagonightlife #latenightchicago',
'Mid-summer Saturday reel — the definitive summer night. The room at full capacity, full confidence, full voice.',
'Script: "mid-summer saturday. this is stardust at its best."

0:00 · 2s — Wide room: Saturday wall-to-wall, mid-summer confidence
0:02 · 2s — Singer: total ownership of the mic, mid-summer boldness
0:04 · 2s — Crowd reaction: immediate, total, no hesitation
0:06 · 2s — The room as a single voice — that moment where everyone is in together
0:08 · 2s — Late night: 3am, mid-summer, the room still gives
0:10 · 2s — Wide — the whole thing at once
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-07-11', '11:00');

-- ── POST 240 · Facebook Post · Jul 12 · Mid-summer recap ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Mid-summer at Stardust Chicago. Three nights a week. Every week. The room gets better every time.

Thursday, Friday, Saturday · Doors 8pm
710 N Clark, River North · Free to sing · No cover',
'',
'Mid-summer weekend recap. Wide room photo from Saturday — the room at its best.',
'', '2026-07-12', '13:00');


-- ══════════════════════════════════════════════════════════════════════════════
-- WEEK 5 · Jul 13–19 · The late-night pull — staying till 4am/5am
-- ══════════════════════════════════════════════════════════════════════════════

-- ── POST 241 · Twitter/X Tweet · Jul 14 · Late night angle ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'the stardust chicago crowd last saturday stayed till 5am. they didn''t want to leave. neither will you.',
'', '', '', '2026-07-14', '08:00');

-- ── POST 242 · Instagram Carousel · Jul 14 · Late night feature ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'the people who stay till 5am at stardust chicago know something you don''t.

Slide 1: 3am — the bar still going
Slide 2: 4am — late night singers, no audience left who doesn''t want to be there
Slide 3: 5am — the ones who outlasted the night
Slide 4: The room at late-night close-up: glasses, faces, warmth
Slide 5: "STARDUST CHICAGO · TILL 5AM · 710 N CLARK"',
'#stardustchicago #latenightchicago #karaokechicago #chicagonightlife #riverNorth #till5am',
'5-slide late-night carousel. The 3am-5am crowd. The ones who don''t leave. The room at its most honest.',
'', '2026-07-14', '11:00');

-- ── POST 243 · TikTok Video · Jul 16 · Thursday late-night pull ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'thursday at stardust chicago. the room that keeps you out later than you planned. 710 n clark.',
'',
'The late-night pull — starting early, ending late. The room that makes you miss your reasonable exit.',
'Script: "you go to stardust for one drink. you stay for three hours."

0:00 · 2s — Someone checking their phone: 8:30pm — they just arrived
0:02 · 2s — Same person: drink in hand, watching the first singer
0:04 · 2s — 10pm: they''re singing themselves — something happened
0:06 · 2s — 11pm: they''ve ordered another round, made three friends
0:08 · 2s — Midnight: they are not leaving, their phone says 22 texts unanswered
0:10 · 2s — Wide room: everyone is this person
0:12 · 4s — End card: STARDUST CHICAGO · EVERY THURSDAY · 710 N CLARK
Total: ~16s',
'2026-07-16', '10:00');

-- ── POST 244 · Instagram Story · Jul 16 · Thursday tonight ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Tonight. Stardust Chicago.
You''ll stay later than you planned.
📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). Late-night bar shot — warm, a little dark, the after-midnight energy. Bold text overlay.',
'', '2026-07-16', '16:00');

-- ── POST 245 · Instagram Reel · Jul 17 · Friday late night reel ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'it''s 3am at stardust chicago and the room is still full. nobody planned to stay this long. everyone is glad they did.

710 N Clark · River North · Till 4am',
'#latenightchicago #stardustchicago #karaokechicago #fridaynight #chicagonightlife #till4am',
'Late-night reel — 3am energy at Stardust. The crowd that doesn''t leave. The room that earns the late hour.',
'Script: "3am at stardust chicago. the room is full. nobody planned this."

0:00 · 2s — Clock: 3:00am on a phone — the late night is real
0:02 · 2s — Wide room: still packed, somehow even more alive
0:04 · 2s — Late-night singer: nobody is judging anything at 3am
0:06 · 2s — Crowd reaction: the 3am crowd gives more than any other
0:08 · 2s — Bar: the late pour, the bartender who has seen everything tonight
0:10 · 2s — Wide — the room at 3am, the ones who stayed
0:12 · 4s — End card: STARDUST CHICAGO · EVERY FRIDAY · TILL 4AM
Total: ~16s',
'2026-07-17', '11:00');

-- ── POST 246 · TikTok Video · Jul 17 · Friday late pull ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'friday night at stardust chicago. the people who stayed till 4am last week are already back. 710 n clark.',
'',
'The return — the people who experienced the late night once and came back for more. The room that creates regulars.',
'Script: "they came back. because 4am at stardust is worth coming back for."

0:00 · 2s — Regular walking in — they''ve done this before and you can tell
0:02 · 2s — They find their spot immediately — they know where it is
0:04 · 2s — Late night: the crowd thinning to the ones who mean it
0:06 · 2s — 2am: the room at its most honest — nobody here by accident
0:08 · 2s — The late-night singer: no crowd to impress, just the song
0:10 · 2s — Wide late-night room: the ones who stayed, the ones who came back
0:12 · 4s — End card: STARDUST CHICAGO · EVERY FRIDAY · TILL 4AM
Total: ~16s',
'2026-07-17', '10:00');

-- ── POST 247 · Twitter/X Tweet · Jul 17 · Friday late-night call ─────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'stardust chicago is open tonight till 4am. the room at its best after midnight.',
'', '', '', '2026-07-17', '08:00');

-- ── POST 248 · Instagram Story · Jul 18 · Saturday tonight ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Saturday at Stardust Chicago.
Open till 5am. Come late. Stay later.
📍 710 N Clark',
'',
'Story (9:16). Late-night Saturday crowd. Bold text overlay. The room after midnight.',
'', '2026-07-18', '16:00');

-- ── POST 249 · TikTok Video · Jul 18 · Saturday 5am ─────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'TikTok', 'Video', 'draft',
'it was 5am at stardust chicago and nobody wanted to leave. 710 n clark. every saturday.',
'',
'The 5am crowd — the ones who outlasted the night. The room at last call. The very end of the night that still felt like it could keep going.',
'Script: "5am at stardust chicago. last call. nobody moved."

0:00 · 2s — Clock detail: 4:50am — the night is almost done
0:02 · 2s — The room: thinner now, but the ones left are exactly who should be here
0:04 · 2s — Last singer of the night: no crowd pressure, just the song and the room
0:06 · 2s — The crowd for the last song: every face fully in, no irony
0:08 · 2s — Bar: last call pour, the bartender who made it through
0:10 · 2s — Wide: 5am at Stardust, the room at its most honest
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-07-18', '10:00');

-- ── POST 250 · Instagram Reel · Jul 18 · Saturday late night reel ────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'nobody leaves stardust chicago on a saturday because they want to. they leave because the lights come on.

710 N Clark · River North · Till 5am',
'#saturdaynight #stardustchicago #till5am #karaokechicago #chicagonightlife #latenightchicago',
'The late-night Saturday reel — 4am energy, the crowd that stayed, the room that earned every minute of the late hour.',
'Script: "you don''t leave stardust on a saturday. you get asked to leave."

0:00 · 2s — 4am: the room at late-night peak — thinner but more real
0:02 · 2s — Late-night singer: they''ve been waiting all night to get on that mic
0:04 · 2s — The crowd: every person left is fully invested, no half-measures
0:06 · 2s — The bar at 4am: the ones who made it
0:08 · 2s — Last song: the whole room for one last moment
0:10 · 2s — Wide: 5am, lights up, the night that won''t end finally ending
0:12 · 4s — End card: STARDUST CHICAGO · EVERY SATURDAY · TILL 5AM
Total: ~16s',
'2026-07-18', '11:00');

-- ── POST 251 · Facebook Post · Jul 19 · Summer wrap ─────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Another Saturday at Stardust Chicago open till 5am. Another room full of people who didn''t want the night to end.

Three more nights next week — Thursday, Friday, Saturday.
Doors 8pm · 710 N Clark, River North · Free to sing · No cover

Come for one drink. Stay till 5.',
'',
'Late-night Saturday recap photo — the room past midnight, the crowd that stayed.',
'', '2026-07-19', '13:00');

-- ── POST 252 · Twitter/X Tweet · Jul 19 · Late-night week close ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, video_script, date, post_time) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'stardust chicago last night: open till 5am, full room, nobody wanted to go. back thursday.',
'', '', '', '2026-07-19', '08:00');

END $$;
