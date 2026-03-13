-- ─────────────────────────────────────────────────────────────────────────────
-- Stardust Chicago — Best Mix Social Posts Seed
-- Date range: March 11 – April 10, 2026
-- Source: 36 posts scoring 3.0+ selected from batches 000, 010, 020
-- Run in Supabase SQL Editor (Authentication → bypass RLS as service role)
--
-- BEFORE RUNNING: Replace 'YOUR_USER_ID_HERE' with your actual Supabase user ID.
-- Find it in: Supabase → Authentication → Users → click your email → copy User UID
-- ─────────────────────────────────────────────────────────────────────────────

DO $$
DECLARE
  uid uuid := 'YOUR_USER_ID_HERE';
BEGIN

-- ── Clear existing posts ───────────────────────────────────────────────────────
DELETE FROM posts;


-- ── POST 01 · Instagram Story · Mar 11 · Score 3.0 · (020) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Three nights this week at Stardust.
Thu · Fri · Sat · Doors 8pm

📍 710 N Clark · River North',
'',
'Story (9:16). Bold text over a warm crowd shot — the room alive, not empty. Countdown sticker to Thursday.',
'2026-03-11');

-- ── POST 02 · Twitter/X Tweet · Mar 11 · Score 3.0 · (010) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'three nights of karaoke this week at stardust. thursday, friday, saturday. 710 n clark, river north.',
'', '', '2026-03-11');

-- ── POST 04 · TikTok Video · Mar 12 · Score 3.2 · (020) ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'thursday karaoke at stardust hits different. 710 n clark, river north, chicago. doors at 8.',
'',
'Thursday energy — the room warming up, regulars and newcomers. Quick cuts, raw footage. On-screen: "STARDUST · EVERY THURSDAY"',
'2026-03-12');

-- ── POST 05 · Instagram Story · Mar 13 · Score 4.0 · (010) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Friday starts at the mic.

📍 710 N Clark · Doors 8pm · Open till 4am',
'',
'Story (9:16). Bold text over stage shot — mic stand, warm stage wash, no people yet. Countdown sticker to doors.',
'2026-03-13');

-- ── POST 06 · TikTok Video · Mar 13 · Score 4.0 · (010) ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'friday night starts at stardust. 710 n clark, river north, chicago. karaoke till 4am.',
'',
'The moment the room starts filling up — people arriving, coats off, drinks in hand, the energy building. On-screen: "STARDUST CHICAGO · EVERY FRIDAY".',
'2026-03-13');

-- ── POST 07 · Instagram Story · Mar 14 · Score 4.0 · (000) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Saturday starts at the mic.

📍 710 N Clark · Doors 8pm · Open till 5am',
'',
'Story format (9:16). Bold text overlay on atmospheric bar photo. Add countdown sticker to 8pm.',
'2026-03-14');

-- ── POST 09 · Instagram Feed Post · Mar 16 · Score 3.0 · (020) ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'Weekend''s done. The songs are still stuck in our heads.

Back Thursday.
📍 710 N Clark · River North',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #weekendrecap #chicagobar #karaokelife #312',
'Single strong image — the room at peak energy from the weekend. Portrait orientation.',
'2026-03-16');

-- ── POST 10 · TikTok Video · Mar 16 · Score 3.0 · (010) ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'this is what stardust looks like on a karaoke night. we''re back thursday. 710 n clark, river north, chicago.',
'',
'Best uncut clip from the weekend — one moment, no edits, real sound. The kind of clip that makes someone feel like they missed something. On-screen at the end: "STARDUST · THU FRI SAT".',
'2026-03-16');

-- ── POST 11 · Instagram Feed Post · Mar 18 · Score 3.0 · (010) ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'The stage has been quiet for two days.

Not for long.

Thu · Fri · Sat · 710 N Clark · River North · Doors 8pm',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #wednesday #weekendplans #thingstodoinchicago #chicagoweekend #karaokenight #chicagobar',
'Atmospheric — the stage empty and lit. Just the mic stand in the wash. No people. Portrait orientation. Let the emptiness create anticipation.',
'2026-03-18');

-- ── POST 12 · Twitter/X Tweet · Mar 18 · Score 3.0 · (020) ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'tomorrow night at stardust. karaoke. 710 n clark, river north. doors at 8.',
'', '', '2026-03-18');

-- ── POST 13 · Instagram Story · Mar 19 · Score 3.0 · (020) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'It''s Thursday.
You already know what that means.

📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). Warm stage shot, bold text. The knowing Thursday regular energy.',
'2026-03-19');

-- ── POST 17 · Facebook Post · Mar 20 · Score 3.0 · (020) ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Karaoke Night — This Friday at Stardust Chicago

No theme. No restrictions. No wrong answers.

Whatever song has been living rent-free in your head this week — tonight''s the night.

710 N Clark · River North · Doors 8pm · Open till 4am · Free to sing',
'',
'Photo album — 3-5 candid shots from a previous karaoke night. Different performers, different songs, different energy.',
'2026-03-20');

-- ── POST 19 · Facebook Event · Mar 21 · Score 3.0 · (020) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — Saturday at Stardust Chicago

River North, late night, open mic, no cover. Saturday night done right.

Doors 8pm · Open till 5am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Saturday Facebook Event. High-energy crowd photo as cover image.',
'2026-03-21');

-- ── POST 20 · Instagram Feed Post · Mar 23 · Score 4.0 · (020) ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'📍 710 N Clark · River North',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #weekendrecap #chicagobar #karaokelife #312',
'Strongest single image from the weekend — let the photo do all the talking. No caption needed beyond the location tag.',
'2026-03-23');

-- ── POST 21 · Twitter/X Tweet · Mar 23 · Score 4.0 · (010) ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'full room this weekend at stardust. back thursday. 710 n clark, river north.',
'', '', '2026-03-23');

-- ── POST 22 · Instagram Feed Post · Mar 25 · Score 4.0 · (020) ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'✦',
'#stardustchicago #stardust #chicago #rivernorth',
'Electro Swing early mood tease — ATMOSPHERE ONLY. Single image: something slightly out of time, warm and mysterious. No people. No genre. No event info.',
'2026-03-25');

-- ── POST 23 · Twitter/X Tweet · Mar 25 · Score 3.5 · (020) ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'something is taking shape at stardust. more soon.',
'', '', '2026-03-25');

-- ── POST 24 · Instagram Story · Mar 26 · Score 3.3 · (020) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Thursday at Stardust.

📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). Warm and intimate — the Thursday feeling. Bold text, simple and clean.',
'2026-03-26');

-- ── POST 25 · Instagram Reel · Mar 27 · Score 3.5 · (020) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'Last Friday of March.
Don''t waste it.

📍 710 N Clark · River North · Doors 8pm',
'#stardustchicago #karaoke #karaokenight #friday #fridaynight #chicagonightlife #rivernorth #chicagobar #livekaraoke #312 #thingstodoinchicago #weekendplans',
'The room coming alive — lights up, first people arriving, energy building. Quick cuts. On-screen: "LAST FRIDAY OF MARCH · STARDUST CHICAGO"',
'2026-03-27');

-- ── POST 26 · TikTok Video · Mar 27 · Score 3.1 · (010) ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'getting stardust ready for the last friday of march. 710 n clark, river north. karaoke till 4am.',
'',
'POV behind-the-scenes — mics being checked, lights coming up, bar being set. Quick cuts. Raw footage. On-screen: "getting stardust ready for tonight".',
'2026-03-27');

-- ── POST 27 · Instagram Story · Mar 28 · Score 4.0 · (000) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Last Saturday of March. Make it count.

📍 710 N Clark · Doors 8pm · Open till 5am',
'',
'Story (9:16) — strong performer photo or bar ambience. Poll sticker: "Are you coming tonight?" or countdown to doors.',
'2026-03-28');

-- ── POST 29 · Instagram Feed Post · Mar 30 · Score 4.0 · (020) ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'March closed on a high note.

Back Thursday.
📍 710 N Clark · River North',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #weekendrecap #chicagobar #karaokelife #312',
'End-of-month — best image from the March 28 weekend. Something that feels like a closing frame.',
'2026-03-30');

-- ── POST 30 · Instagram Feed Post · Apr 2 · Score 4.0 · (010) ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'✦',
'#stardustchicago #stardust #chicago #rivernorth',
'Electro Swing Week 1 teaser — MOOD ONLY. Different image from Mar 25. If Mar 25 was a wide atmospheric shot, this should be a close detail. Something that feels slightly out of time. No genre. No people. No event info. Just the ornament as caption.',
'2026-04-02');

-- ── POST 31 · TikTok Video · Apr 2 · Score 4.0 · (010) ──────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'stardust chicago',
'',
'Atmosphere-only teaser video. Different angle from any previous teaser — try a slow close-up of a single lit detail (a candle, the bar edge, a glass). 10 seconds. Ambient audio only. No on-screen text except the Stardust logo at the very end.',
'2026-04-02');

-- ── POST 32 · Instagram Story · Apr 3 · Score 3.4 · (020) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Friday at Stardust.
The mic is live.

📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). High energy — packed room, stage lit. Bold text. Countdown sticker.',
'2026-04-03');

-- ── POST 33 · TikTok Video · Apr 3 · Score 3.4 · (020) ──────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'it''s friday. stardust chicago is open. 710 n clark, river north. karaoke till 4am.',
'',
'The room filling up — energy building, people arriving. Quick cuts, phone footage. On-screen: "STARDUST CHICAGO · OPEN TONIGHT"',
'2026-04-03');

-- ── POST 34 · Facebook Event · Apr 3 · Score 3.0 · (020) ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Friday at Stardust Chicago

The one where you finally sing that song you''ve been thinking about all week.

Doors 8pm · Open till 4am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Friday Facebook Event. High-energy performer or crowd photo as cover image.',
'2026-04-03');

-- ── POST 35 · Instagram Feed Post · Apr 4 · Score 3.5 · (010) ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'Something new is arriving at Stardust.

📍 710 N Clark · River North',
'#stardustchicago #stardust #chicago #rivernorth #comingsoon',
'Electro Swing Week 1 continuation. A different detail from previous teasers — art deco geometry, a vintage texture, something that doesn''t quite fit the current era. No people. No genre. The mystery continues.',
'2026-04-04');

-- ── POST 37 · Instagram Feed Post · Apr 6 · Score 3.0 · (010) ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Feed Post', 'draft',
'The weekend closed with a full room.

See you Thursday.
📍 710 N Clark · River North',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #weekendrecap #chicagobar #312',
'Best image from the Apr 3-4 weekend. Crowd energy preferred.',
'2026-04-06');

-- ── POST 38 · Instagram Reel · Apr 8 · Score 3.65 · (020) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Reel', 'draft',
'The swing era never ended.
It just got louder.

Coming soon to Stardust Chicago.
📍 710 N Clark · River North',
'#stardustchicago #electroswing #swingmusic #caravanpalace #parovstelar #chicago #rivernorth #chicagonightlife #vintagestyle #jazzvibes #speakeasy #electrojazz #comingsoon',
'Electro Swing Week 2 — genre reveal. Drop straight into audio (Caravan Palace or Parov Stelar — pick the 15 seconds that hits hardest). Art deco visuals, warm amber. On-screen: "electro swing is coming to stardust chicago"',
'2026-04-08');

-- ── POST 39 · TikTok Video · Apr 8 · Score 5.0 · (010) ──────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'TikTok', 'Video', 'draft',
'the swing era never ended. it just got louder. electro swing is coming to stardust chicago. 710 n clark, river north.',
'',
'Open cold on audio — no title card, just the music. Let it play for 3 seconds before any text appears. On-screen: "imagine jazz." → pause → "but it makes you want to dance." → "electro swing is coming to stardust chicago." End with logo.',
'2026-04-08');

-- ── POST 40 · Facebook Post · Apr 8 · Score 3.8 · (020) ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Something new is coming to River North — and it sounds like nothing else in Chicago right now.

It''s called electro swing. The energy of the jazz age, rebuilt for tonight''s dancefloor. Think Caravan Palace. Think Parov Stelar. Think the sound you didn''t know you were missing.

Coming soon to Stardust Chicago.
📍 710 N Clark · River North · stardustchi.com',
'',
'Art-deco inspired graphic or atmospheric photo. Link to "Lone Digger" by Caravan Palace on YouTube in the post.',
'2026-04-08');

-- ── POST 41 · Twitter/X Tweet · Apr 8 · Score 3.7 · (020) ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'the swing era never ended. it just got louder. electro swing is coming to stardust chicago. 710 n clark, river north.',
'', '', '2026-04-08');

-- ── POST 42 · Instagram Story · Apr 9 · Score 4.0 · (010) ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Thursday at Stardust.
The mic is live.

📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). Warm bar detail or stage shot. Simple text. Intimate Thursday energy.',
'2026-04-09');

-- ── POST 43 · Instagram Story · Apr 10 · Score 3.75 · (020) ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Story', 'draft',
'Friday at Stardust.
The weekend starts now.

📍 710 N Clark · Doors 8pm',
'',
'Story (9:16). High-energy Friday feel — stage lit, crowd building. Bold text overlay.',
'2026-04-10');

-- ── POST 44 · Facebook Event · Apr 10 · Score 3.55 · (020) ─────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Friday at Stardust Chicago

River North. Late night. Free to sing. No excuses.

Doors 8pm · Open till 4am · 710 N Clark St · River North',
'',
'Recurring Friday Facebook Event. High-energy crowd or performer photo as cover image.',
'2026-04-10');

-- ── POST 45 · Twitter/X Tweet · Mar 13 · Friday night-of ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'friday night at stardust — the room fills up fast, the singing gets louder, and somewhere around midnight someone always does something you wouldn''t believe. 710 n clark.',
'', '', '2026-03-13');

-- ── POST 46 · Twitter/X Tweet · Mar 14 · Saturday night-of ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'saturday night at stardust. open till 5am. you have no excuse. 710 n clark, river north.',
'', '', '2026-03-14');

-- ── POST 47 · Facebook Event · Mar 14 · Saturday karaoke ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Saturday at Stardust Chicago

Saturday night in River North, and there is exactly one place to be.

One mic. An endlessly patient crowd. A songbook that doesn''t judge. Whatever you''ve been holding back all week — tonight is the night to let it out.

Doors 8pm · Open till 5am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Saturday Facebook Event. High-energy crowd photo as cover — the room at its loudest and most alive.',
'2026-03-14');

-- ── POST 48 · Facebook Post · Mar 16 · Weekend recap ────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Three nights. Hundreds of songs. An extraordinary weekend at Stardust.

Thursday through Saturday, the room was exactly what a late-night karaoke bar in River North should be — packed, loud, and full of people who showed up ready to actually sing.

We''ll be back Thursday. Put it in your calendar.

📍 710 N Clark · River North · Doors 8pm',
'',
'Best photo from the weekend — crowd energy or a performer mid-song. Warm, candid, and real.',
'2026-03-16');

-- ── POST 49 · Twitter/X Tweet · Mar 19 · Thursday promo ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'thursday at stardust. the week isn''t over — it''s just getting to the good part. 710 n clark, river north.',
'', '', '2026-03-19');

-- ── POST 50 · Facebook Event · Mar 19 · Thursday karaoke ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Thursday at Stardust Chicago

It''s Thursday. The week isn''t over, but the best part of it starts tonight.

Come in, put your name on the list, and let the room take it from there.

Doors 8pm · Open till 4am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Thursday Facebook Event. Warm, intimate atmosphere photo as cover — the Thursday feeling, not the Saturday energy.',
'2026-03-19');

-- ── POST 51 · Twitter/X Tweet · Mar 26 · Thursday night-of ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'thursday karaoke is already going strong at stardust. get here before the list fills up. 710 n clark.',
'', '', '2026-03-26');

-- ── POST 52 · Facebook Event · Mar 26 · Thursday karaoke ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Thursday at Stardust Chicago

Second-to-last Thursday of March. The room has been remarkable every single night this month — tonight is no exception.

Put your name on the list. Sing the one you''ve been saving.

Doors 8pm · Open till 4am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Thursday Facebook Event. Warm bar photo — intimacy over energy for the Thursday feel.',
'2026-03-26');

-- ── POST 53 · Twitter/X Tweet · Mar 28 · Saturday night-of ──────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'last saturday of march at stardust. the room is extraordinary tonight. open till 5am. 710 n clark, river north.',
'', '', '2026-03-28');

-- ── POST 54 · Facebook Post · Mar 28 · Last Saturday of March ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Post', 'draft',
'Last Saturday of March — Tonight at Stardust Chicago

March has been an incredible month. Full rooms, unforgettable performances, and enough extraordinary late nights to carry you well into April.

Tonight is the closing chapter. Come in, put your name on the list, and give March the send-off it deserves.

Doors 8pm · Open till 5am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Strong atmospheric or crowd photo — something that feels like a proper finale, not just another night.',
'2026-03-28');

-- ── POST 55 · Instagram Carousel · Mar 30 · March recap ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'March at Stardust.

Nine nights. Hundreds of songs. A room that showed up every single time.

April is going to be even better.

📍 710 N Clark · River North',
'#stardustchicago #karaoke #chicagonightlife #rivernorth #monthlyrecap #chicagobar #karaokelife #312 #chicago',
'5–7 slide carousel. Best moments from March: crowd shots, performer moments, atmospheric bar details. Warm and candid throughout. Last slide: "See you in April." with the Stardust logo and address.',
'2026-03-30');

-- ── POST 56 · Facebook Event · Apr 2 · Thursday karaoke ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Thursday at Stardust Chicago

First Thursday of April. New month, same exceptional Thursday energy.

There''s also something new on the horizon at Stardust — stay tuned for what''s coming later this month.

In the meantime: come sing. The mic is live, the bar is ready, and the room will do the rest.

Doors 8pm · Open till 4am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Thursday Facebook Event. Warm bar detail or stage shot as cover.',
'2026-04-02');

-- ── POST 57 · Twitter/X Tweet · Apr 4 · Saturday + teaser ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'saturday night karaoke at stardust. also: something remarkable is coming to river north later this month. 710 n clark.',
'', '', '2026-04-04');

-- ── POST 58 · Facebook Event · Apr 4 · Saturday karaoke ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Saturday at Stardust Chicago

April is here, and Saturday night in River North belongs to Stardust.

Come in early, stay late, and sing the song you''ve been rehearsing in your head all week.

Also: watch this space — something extraordinary is coming to Stardust later this month.

Doors 8pm · Open till 5am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Saturday Facebook Event. High-energy crowd photo as cover.',
'2026-04-04');

-- ── POST 59 · Twitter/X Tweet · Apr 6 · Weekend recap ───────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'incredible weekend at stardust. back thursday. 710 n clark, river north.',
'', '', '2026-04-06');

-- ── POST 60 · Facebook Post · Apr 6 · Weekend recap ─────────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Post', 'draft',
'An incredible start to April at Stardust.

Thursday and Saturday, the room was exactly what a late-night karaoke bar should be — warm, packed, and alive with people who came ready to perform.

We''re back Thursday.

And if you''ve been paying attention to this week''s teasers — yes, something genuinely exciting is arriving at Stardust very soon. Details coming shortly.

📍 710 N Clark · River North',
'',
'Best image from the Apr 3–4 weekend — crowd energy or a standout performer moment. Warm and candid.',
'2026-04-06');

-- ── POST 61 · Twitter/X Thread · Apr 8 · Electro Swing reveal ───────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Thread', 'draft',
'thread: what is electro swing, and why is it coming to stardust chicago?

1/ electro swing is exactly what it sounds like. jazz-age energy rebuilt for a modern dancefloor. think caravan palace. think parov stelar. think the sound you didn''t know you were missing.

2/ we''ve been building something at stardust for a while now. the room, the late nights, the crowd that keeps showing up and surprising us. it was always going to lead somewhere like this.

3/ electro swing night is coming to 710 n clark, river north, chicago. late april. the date drops this week. stay tuned.',
'', '', '2026-04-08');

-- ── POST 62 · Instagram Carousel · Apr 8 · Electro Swing reveal ──────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Instagram', 'Carousel', 'draft',
'The swing era never ended.
It just got louder.

Electro swing is coming to Stardust Chicago.

📍 710 N Clark · River North',
'#stardustchicago #electroswing #swingmusic #caravanpalace #parovstelar #chicago #rivernorth #chicagonightlife #vintagestyle #jazzvibes #speakeasy #electrojazz #comingsoon',
'5-slide carousel reveal. Slide 1: art deco atmospheric still with title card. Slide 2: "The jazz age had the best energy." Slide 3: "Someone rebuilt it for a modern dancefloor." Slide 4: "It''s called electro swing." Slide 5: Stardust logo + "Coming soon · 710 N Clark · River North". Warm amber and black throughout.',
'2026-04-08');

-- ── POST 63 · Twitter/X Tweet · Apr 9 · Thursday night-of ───────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'thursday at stardust. the room is warm, the mics are live, and the list is already growing. 710 n clark.',
'', '', '2026-04-09');

-- ── POST 64 · Facebook Event · Apr 9 · Thursday karaoke ─────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Facebook', 'Event', 'draft',
'Karaoke Night — This Thursday at Stardust Chicago

Thursday night at Stardust. The list fills up fast, the room gets loud, and something about Thursdays here makes people perform like they actually mean it.

Come early. Stay late.

Also: electro swing is arriving at Stardust very soon. Stay tuned for the announcement.

Doors 8pm · Open till 4am · 710 N Clark St · River North
Free to sing · No cover',
'',
'Recurring Thursday Facebook Event. Warm, intimate bar photo — the Thursday feeling, not the Saturday energy.',
'2026-04-09');

-- ── POST 65 · Twitter/X Tweet · Apr 10 · Friday night-of ────────────────────

INSERT INTO posts (user_id, platform, post_type, status, content, hashtags, media_notes, date) VALUES
(uid, 'Twitter/X', 'Tweet', 'draft',
'friday night at stardust. last karaoke night before electro swing arrives. 710 n clark, river north. open till 4am.',
'', '', '2026-04-10');

END $$;
