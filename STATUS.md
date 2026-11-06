---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
mod:          Beef Eaters Renew (unofficial)
packageId:    nelim.beefeaters
repo:         Rimworld-Beef-Eaters-Renew
visibility:   public
detached:     yes
workflow_stage: shootGallery[1.0.0]
code_review_sha: 8a512a6f6f45ae9ac1a63c2d91de3a2478810e89
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
upstream_mod_remotes: N/A
dependencies: none
showcase:     complete
tested_on:     2026-10-02 cefade3 (min EN/FR, textures, original, Animal Gear, ADS 2 + Dogs mate, green after rerun) and 2026-10-10 bedb34a (11-def-values 9/9), RimWorld 1.6 (WSL); gallery pending; and 2026-10-13 (p17-beefeaters-01-wildness-defs, ticket 88c2, 2/2) RimWorld 1.7 (WSL, validated by Audit)
tested_1_7:   yes
workshop:     3811290251
remaining:
  - gallery 2026-10-17 (AUDIT 9.e), one day, subtitled (GALLERY.md): `0-preview.png` | `1-cow-calf.jpg` noon | `2-bull-face-on.jpg` afternoon | `3-barn-both.jpg` dusk, all three accepted by Virginie; originals in `Art/Gallery-clean/`, lines in PUBLICATION.md. Refused: beefalo evening torch picture (v8). Missing: a beefalo-alone picture. f557 done 2026-10-17 (5/5, all five refused: hay bale straddles the fence row z 222, duplicates of accepted pictures; bales moved to z 219-220 in features 12 and 13), refiled as 0556 (`12-gallery-animals-props`). Owner also refused 4 and 5: Nelim had no trousers, sweated, no farm clothes; props map aligned on SanctuaryBacklot (standalone shell, facial fixes, ShowHair added), own face now last step before the capture; accepted 1 and 3 (run v6b/v8) show the same undressed, flushed Nelim: to redo from 12 for a coherent series; features 12 and 13 now dress her (Apparel_Pants, BasicShirt, CowboyHat dyed) and call `Nelim has her own face`. ChatGPT French review applied 2026-10-17 (cow description musculature, CHANGELOG would win, PUBLICATION.md opening). Feature 12 rewritten 2026-10-18 as the farm day (director verdict: five pictures in one bare dirt pen read as one picture; now right-bank fog dawn, flower-garden noon, pen bull face on, river-bridge beefalo, barn; outfits follow the day; cell coordinates of the new places read on photographs, unverified, first run corrects them). After the run: add the trough and large bale (Mlie.AnimalFeedTroughSmall, VFEPD_HayBaleLarge) with the capture verdict to GALLERY-PROPS.md (AGENTS 9b). Audit rule 2026-10-18: polish every shot and transition, NPT catalogues first (shotlist self-rating 3/5 until captures are read; ticket f268 is no longer in the queue, feature 13 beefalo-alone to refile only if the farm day lacks one). Ticket 0556 DONE 2026-10-18 5/5 (director verdict: refused 2 noon (green blueprint ghost under cow, statues and wall bed clutter) and 5 barn (reads as hay floor with firepits and a yellow table, cow tinted orange; accepted 3-barn-both stays); the three kept candidates were then REFUSED by Virginie 2026-10-18 and deleted; she doubts the required Sanctuary mods were all loaded, under check). f268 ended exit 139 (crash) and (`13-gallery-beefalo`; both list tests=39, check the real count in summary.json at RUN_DONE , scenarios A face on, B with calf), then read captures, accept or refuse with Virginie, subtitle the kept one, `echo-source.png` review (AUDIT 9.f), `PUBLICATION.md` table. `publication_changelog_review_sha` done 2026-10-17
  - unverified 2026-10-13: `PUBLICATION.md` drafted (Steam block, About.xml generated from it); to read before posting: Use This Instead comment filled 2026-10-13 (old name `Beef Eaters` read through the Steam API; author name from ATTRIBUTION.md), Animal Gear author not thanked (unknown), Dogs mate author line, the four Workshop links, gallery table to complete once ticket 8a7d is read; echo review (`echo_review_sha`) and Virginie review of PUBLICATION.md + CHANGELOG.md (`publication_changelog_review_sha`) not done
  - unverified 2026-10-14: permission request to HannahBug for her HD reskin (Workshop 2943088425) posted by Virginie on 2026-10-14; her textures are not bundled before she answers. Yes: drop her 21 same-named PNGs into `Mod/Textures/` with credit (description, THANKS, ATTRIBUTION.md); she also may accept `nelim.beefeaters` as base. No answer or no: nothing changes
  - feature 2026-10-10 (relayed rules, for `writeDocs` and `publish`): Renew mod, so write a BBCode comment for Mlie's Use This Instead page (3396308787) in PUBLICATION.md and hand it to Virginie as a paste step, row `drafted` then `posted` in USE_THIS_INSTEAD.md; CHANGELOG `## [Unreleased]` becomes `## [1.0.0] - <send date>` in the commit sent to the dry-run
session:      local_b7712ad8-66e4-4aa9-9c9d-e9a97e78cb35
updated:      2026-11-06, BeE resumed (protocols read to 39b2d8ba; v10 candidates 2-5 git rm per GALLERY.md rule 2026-11-06, scenes rewritten in v11), NSB synced (animals and Nelim expression validated by Virginie), shotlist v11 scenes 2-5, ticket 0096 (feature 12, df064e3) queued. Before: 2026-11-05, Preview validated by Virginie (commit after 773ea01); test-shape conversion done (773ea01, Audit confirmed, no local script). BeE session resumed: Preview rerendered (new Preview.config.json format, icon bottom-left so the beefalo stays free, echo clear of text) and committed, 7b done; Local-scripts conversion (AGENTS.md mission 2026-11-05) deferred while ticket 3e82 runs. Before: 2026-11-03, BeE session: ticket 3e82 filed (feature 12 workshop, v10 scenarios, docker, refile of eba1 exit 3 infra, no report); candidates 2-5 (21 Oct run 30d6, in Art/Gallery) await Virginie accept/refuse, she said later; Preview regenerate (7b) rendered wrong (echo overlaps summary text, ModIcon bottom-right hides beefalo) so NOT committed: fix Preview.config.json echo/iconBadge placement then render; new rule 2026-11-03: sweat or no smile costs 0.5 at criterion d
publication_changelog_review_sha: 8d473e4d7d63c0d1752e423ad7f9e79cf976fff0
protocols_read_sha: f19f4980859a25c39295dfc37761de0f552b36da
---
# Beef Eaters Renew — status

Older dated sections (2026-09-12 to 2026-10-13, audits, licence, showcase, translation, playTests closing) moved to `docs/runs/status-journal-2026-10.md` on 2026-11-06.

## Shotlist self-rating, 2026-10-18, FIRST VERSION (superseded below by the a to k rerating)

Story (feature 12 header): one farm day, dawn to evening, Nelim leads the Belgian blue cow, her calf, the bull and the pygmy beefalo through the farm; one place per picture. Ratings read against run 0556 captures (read 2026-10-18, owner refused all three kept candidates; Moving Vanilla Eyes seed was missing, added, so Nelim's face is unproven until the rerun).

| # | shot | place, hour | now | main risk | rework to reach 4 |
|---|---|---|---|---|---|
| 1 | dawn, cow to the water | right-bank, 07 h fog | 3 | cow small and hunched in confusing grass, fog flattens it | tighter frame, cow 3/4 facing camera, cleaner patch of grass |
| 2 | noon, cow and calf | flower-garden, 12 h | 2 | green blueprint ghost under the cow, statues and a wall bed in frame | move the cells away from statues and bed, or another place |
| 3 | bull face on at the trough | enclosure-south, 15 h | 4 | bare dirt background | fence nearer, keep |
| 4 | beefalo and calf on the bridge | river-bridge, 17 h | 4 | none big | keep |
| 5 | evening, both side by side | barn, 19 h | 2 | reads as hay floor with firepits and a yellow table, orange tint on the cow | other place or accepted composition `3-barn-both`, no firepits in frame |

Lowest 2; scenes to redo 1, 2, 5. Older accepted `1-cow-calf`, `2-bull-face-on`, `3-barn-both` (undressed Nelim) stay until the farm day replaces them; feature 13 not needed.

## Shotlist rerated against GALLERY.md a to k, 2026-10-18 (after Audit's reading of the lines)

Feature 12 rewritten (header = story k plus one line per picture with time, decor, living, look, action, composition, risk and plan). Every picture has a different coat, hat, hair and face over Nelim's approved fixture kit; decor named and removed after each shot; cow, bull and beefalo all FACE the camera or are side by side; Show Hair under the hat. Not played, so the ratings are what the lines promise, to be read on the captures.

| # | place, hour | look (coat, hat, hair, face) | action | decor | living | risk, plan | a-k |
|---|---|---|---|---|---|---|---|
| 1 | right-bank 07 h fog | duster oat brown, hat wheat, Long, calm | leads the cow, hay | TorchLamp lit, Plant_Daylily | cow facing South | cow small in grass: tight frame | 4 |
| 2 | flower-garden 12 h | no coat, hat sky blue, Long, smile | holds Milk to the calf | 2 PlantPot with Plant_Daylily | cow, calf | ghost, statues, bed: frame narrowed to (147,100)-(159,106) | 4 |
| 3 | enclosure-south 15 h | jacket denim blue, hat leather brown, Long, neutral | pours hay | trough, large bale | bull facing South | bare dirt: trough and bale as warm masses | 4 |
| 4 | river-bridge 17 h | jacket moss green, beret burgundy, Long, smug | walks them over | 2 TorchLamp lit | beefalo, calf | none big | 4 |
| 5 | barn 19 h | cape plum, no hat, Long, her own face | sets down last hay | 1 TorchLamp lit, large bale, area cleared | cow, beefalo | campsite look: clear the area, one torch; else move to the pen at dusk | 4 (weakest) |

Lowest 4. Cell coordinates outside the pen unverified until the run. Fixes of the first table all applied in the feature.

## Ticket 8066 read, 2026-10-19 (farm day, a to k version)

4 of 5 passed, scene 2 failed on a bad step (`the cell (149, 102) already holds PlantPot`: a pot and a plant on one cell); fixed (pots dropped), scene 2 refiled alone as ba3f (`Tests/Pickle/Inbox/20261019-farm-day-scene2`). Captures read (evidence `Tests/Pickle/Inbox/20261018-farm-day-ak`):
- 1 dawn: 4. Cow faces the camera, torch and lily as the warm spot. Nelim small, face hidden by the hay, hair not visible under the hat.
- 3 bull: 4. As before, trough and bale, bull face on, denim jacket.
- 4 bridge: 4. Beefalo and calf, burgundy beret, torches. Hay hides her face, hair not visible under the beret.
- 5 barn: 3. Darker, still a hay floor with a chair pair and one fire pit at the left edge, cow reads grey. Nelim's long hair visible (no hat there).
Defect: Show Hair does not draw the hair under the hat in 1, 3 and 4 (visible in 5 with no hat); probable missing settings seed for `RaccoonCuddler.ShowHair` (3255379190), to ask NPT. Evidence moved to `Tests/Pickle/Inbox/` per the owner rule of 2026-10-19; greens minified in `Evidence/` with RELEASE.md, reds and superseded runs deleted; `.gitignore` has Inbox and Parked.

## Shotlist a to k, scene by scene, 2026-10-19 (write-shotlist; supersedes the table of 2026-10-18)

Scene 5 moved from the barn to `gravel-yard` (run 8066 read the barn as 3 even with the area cleared and one torch). Estimates are for the written lines; verdicts are the real read of run 8066 (scene 2 failed on a step, fixed, not yet read).

| # | a time frame | b decor | c living | d Nelim | e action | f composition | g subject | h risk / plan | est | verdict 8066 |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | right-bank 07 h fog, 60 ticks | TorchLamp lit, Plant_Daylily | cow facing South, daylily | duster oat brown, hat wheat, Long, calm | leads the cow, hay | tight (142,129)-(154,136) | the breed is big, the day begins | cow small in grass / tight frame | 4 | 4 |
| 2 | flower-garden 12 h clear | 2 Plant_Daylily, lily field | cow, calf | hat sky blue, no coat, Long, smile | holds Milk to the calf | (147,100)-(159,106), statues and bed out | calf and milk | ghost, statues, bed / narrowed frame | 4 | not read |
| 3 | enclosure-south 15 h | trough, large bale | bull facing South | denim jacket, hat leather brown, Long, neutral | pours hay | (145,217)-(155,224), fence on top | the build | bare dirt / two warm masses | 4 | 4 |
| 4 | river-bridge 17 h | 2 TorchLamp lit | beefalo, calf | moss jacket, burgundy beret, Long, smug | carries hay, walks them | (127,119)-(141,129) band | small pack animal | none big | 4 | 4 |
| 5 | gravel-yard 19 h | 2 TorchLamp lit, 2 Plant_YellowTallGrass, area cleared | cow, beefalo side by side | plum cape, no hat, Long, own face | sets down last hay | (167,141)-(177,150) | both home, huge and small | cow grey on gravel / ask NPT for a darker backdrop | 4 | barn version 3, redone |

No ✘ cell. Weak points kept honest: Nelim's hair is Long in all five (owner hat rule), so the look varies by coat, hat and face; her action is carrying an item, no pose step exists.

Correction after rereading SanctuaryBacklot `docs/GALERIE.md` (2026-10-19): Nelim's face is always her own (two brows, smirk, blink), called last before the shot, with the map at 20 degrees so she does not sweat; the face kits (calm, smile, neutral, smug) of the table above are dropped from feature 12. Her look varies by coat, hat and colour only; her expression no longer varies, column d loses its expression element. Hair stays Long under the hat (owner hat rule), Show Hair seed in place.

## Shotlist rethought, 2026-10-19 (supersedes the two tables above)

Owner asked to think the weak points through. Done in feature 12 (ninth version, "the day the herd moved in"): story rewritten as a herd bought at the trader's and settled in a day (dawn walk to the river, noon milking, afternoon bull at the trough, late afternoon beefalo and wool on the bridge, evening both side by side). Scene 5 moved to `plant-garden` (chosen on its empty photograph: the barn was a hay floor with fire pits, the gravel yard a busy grass and pool yard); scene 2 frame computed from the flower-garden photograph (ghost building x 150-152 z 100-102 and bed x 157.5-159.5 z 101.5-103.5 stay out). Nelim framed tighter (width 9 to 10 cells) so her face shows; items small (Milk, WoolMuffalo, names read in `Mod/Defs/Race_*.xml`) in scenes 2 and 4 to show the mod's milk and wool, none in scene 1. Torches only at dawn and evening. Face: own face then held neutral. Still unverified: all cells outside the pen (photograph readings), Show Hair under the hat, grey cow on grass at dusk (plan: ask NPT for a darker backdrop place), and every estimate of 4 until the captures are read. Tickets 0156 and f8eb cancelled, one full ticket refiled.

## Shotlist v10, 2026-10-23 (write-shotlist after rate-gallery mean 2.5; supersedes the tables above)

Header of `12-gallery-animals-props.feature` rewritten (story, one outfit for the day with a justified duster change, Hat Hair Control instead of Show Hair, pause recipe, thumbnail arithmetic). Opus director pass kept in the header. Scenarios below the header are still the ninth version: rewrite before any ticket. Own steps `I spawn ... named "<name>"` added in `Tests/Pickle/Source/GallerySteps.cs`, not built, not played.

| # | place, hour | frame | action and job | decor | living | j (thumbnail) | est | risk and plan |
|---|---|---|---|---|---|---|---|---|
| 1 | right-bank 07 h fog | WIDE 18x10 (136,128)-(154,138) | forced walk to (141,132), cow follows, instant: first steps to the water | TorchLamp lit, Plant_Daylily | cow Rosa walking West | cow 50-60 px | 4 | follow step expects a colonist leader (unverified); cells read on a photograph |
| 2 | flower-garden 12 h | CLOSE 8x5 (150,103)-(158,108), N 2.5 | forced job Milk on the cow, kneeling, calf waits | field only (stool and bucket dropped) | cow Rosa, calf Petite | cow ~100 px | 4 | Milk may refuse a cow not full: fallback job Wait; N 2.5 needs the Sanctuary frame step |
| 3 | enclosure-south 15 h | MEDIUM 10x7 (145,217)-(155,224) | forced haul of Hay to (149,218), bull already there | trough, large bale | bull Taureau face on | bull ~65 px | 4 | bare dirt: trough and bale as warm masses |
| 4 | river-bridge 17 h | MEDIUM 8x6 (132,121)-(140,127) | forced haul of WoolMuffalo to the east end, beefalo follow, calf lags | 2 Plant_YellowTallGrass | beefalo Pip, calf Minus | beefalo ~33 px, calf ~20 px | 4 | calf may not follow: fallback calf spawned ahead |
| 5 | plant-garden 19 h | MEDIUM-WIDE 14x10 (190,82)-(204,92) | forced haul of Hay between the two animals, paused one cell short | 2 TorchLamp lit, 2 Plant_YellowTallGrass | cow Rosa, beefalo Pip | cow ~55 px, beefalo ~20 px | 4 | cow melts into grass at dusk: torches both sides, else ask NPT |

Self-check: one story, variety wide/close/medium/medium-wide, opener (1) and closer (5), outfit continuity written, every scene at 4 on paper. Not verified: forced-job, walk, haul, follow and head-frame steps never played (announced by NPT 2026-10-23); Hat Hair Control seed and `showHairDefs`; the new naming steps compile. Candidates 2 to 5 (ninth version) still await Virginie.

## Open after ticket 60bd, written before sleep, 2026-10-25

- Ticket `20261024-145528-566-60bd` (feature 12, tree `5e6a507`, evidence to `Tests/Pickle/Inbox/20261024-farm-day-v10`): wait for `RUN_DONE`, read `summary.json` and `junit.xml`, open every capture (director verdict first), rate against the v10 plan (plan rated 4.8, e weak on 3 and 5).
- To fix in the scenarios after the read (owner, 2026-10-25): Nelim smiles on the default scenes (NPT order: own face, `"Nelim" mouth is "MouthSmile"`, `"Nelim" lids are "LidCheerful"`, capture, no tick between; drop `face is held neutral` there; assert `"Nelim" mouth reads "MouthSmile"`). Animals may be dressed when logical: step `the animal "Rosa" is dressed in "<def>"` (proof `the render tree of the animal "Rosa" draws "<def>"`), candidate `Apparel_LargeAnimalScarf` from Animal Apparel Collars and Kit Renew (fit on this breed unverified; list defNames with `the garment options are listed`). Gestures for the bull (3) and the two animals (5) not yet obtained by a job. Close frame of 2 at `the camera is centered on ... at root size 2.5` if the rectangle gives 3 to 4. NPT's `I advance the paused game by exactly {int} ticks` is built, not deployed.
- rate-gallery 2026-10-25 on the v10 plan: mean 4.2 (1: 4.5, 2: 4, 3: 4, 4: 4.5, 5: 4); k ok; all five lose 0.5 on d (face held neutral, smile rule of 2026-10-25), 2 loses 0.5 on b (nothing placed), 3 and 5 lose 0.5 on e (bull and animals have no job for their gesture). Steps unverified (`Check-PickleSteps.ps1` not found at the expected path).
- Asked NPT 2026-10-25 (one message: dusk place, gestures for 3 and 5, Animal Gear and animal apparel in the Sanctuary map, Roo hair, deploy of the pause and close-frame steps); NPT answered the same day, no refusal, so no arbitration. (1) Dusk place: `bare-clearing` (195,152) zoom 5, bare brown earth, flower border, about 14x14 free; avoid plant-garden (grass), emerald-clearing (green), calm-zone (cream melts the cow). (2) Animal gestures: only `"X" is forced to walk to (x, z)`, `"X" lies down`, `"X" follows "Y"`, `the animal "X" lies at (x, z) facing D`, `"X" stands at (x, z)`; no step for eating at a trough or head raised; NPT advises lies down for the bull (3), walk plus `I advance the paused game by exactly N ticks` for mid-stride (5); all compiled, not played (NPT ticket 1071 plays walk and advance first). (3) Apparel: the map does not carry the animal apparel mods, add AACaK and Animal Gear (Workshop ids) to this mod's own dep map; steps `the animal "X" is dressed in "<def>"`, `... is wearing ...`, `the render tree of the animal "X" draws "<def>"`; fit on this breed unknown, the dress step says why it refuses. (4) Hair: map loads rooboid.hdhair.continued (3559870636), `Roo_Royal_LongHD` not verified (the step lists hairstyles on failure); NPT cannot judge Long vs open hat. (5) Advance step pushed 8318f39, compiled, unplayed; `the camera is centered on "X" at root size 2.5` fails below the bound unless SimpleCameraSetting (3232415388) is in the map or `I am at the sanctuary` ran first (lifts 2-130). To apply after ticket 60bd is read: scenarios 3 and 5 with the new gestures, scene 5 to `bare-clearing`, smile, dep map with the apparel mods.
- Owner rules 2026-10-25: clothing and expressions are suggestions, not constraints; default expression is smiling; colonists other than NSB's need special authorization; special requests go to NPT first, owner arbitrates if NPT refuses.
- To ask (now sent to NPT, see above): TM, whether the Sanctuary map can load Animal Gear for one scene (beefalo armour); a darker or plainer dusk place than `plant-garden` (read `SANCTUAIRE-LIEUX.md`, else tell NPT the need; if NPT declines, Virginie arbitrates).
- Hair: `NELIM-PROFIL.md` canon under a closed cover is `Roo_Royal_LongHD`; the feature sets `Long`. Check that Roo is in the map and that `Long` suits an open hat; wardrobe is only a suggestion, not validated.
- Candidates `Art/Gallery/2-4..5-candidate-*.jpg` (ninth version, untracked) await Virginie, or replaced by the v10 captures. Then: reindex 1 to 5, subtitles in `PUBLICATION.md` and `Add-Subtitle.ps1`, echo review (`echo_review_sha`), `PUBLICATION.md` table.

## Ticket 60bd read, 2026-10-29

Red, exit 5, exitReason in-progress, 0 of 4 passed (scenario 5 never ran). Every scenario failed on `Undefined step: Beef Eaters Renew: I spawn an adult "<kind>" female/male named "<name>" at (x, z) facing <dir>`: the named spawn steps of `Tests/Pickle/Source/GallerySteps.cs` (6877db3) were not in the step assembly the run loaded. No capture proves anything (step0 frames only); evidence folder deleted. Next: ask NPT whether the mod's step assembly is rebuilt before a run (else how to build it), then refile feature 12. Scenario fixes of 2026-10-25 still to apply before the refile.

## ChatGPT French review applied, 8.m redone, 2026-10-29

Owner said "applique ce qui est pertinent" after reading the ChatGPT page 1 answer. Applied (256a66d): cow French description now opens with a verb ("La vache Blanc Bleu Belge est un énorme ongulé domestique..."), comma in the pygmy beefalo English description (`Mod/Defs/Race_PygmyBeefalo.xml`), "has existed since" in `PUBLICATION.md`. Not applied: the Animal Gear author sentence (not found in the current `PUBLICATION.md`). `FRENCH_REVIEW.md` regenerated; Check-Translations, Check-ModBasics, Check-DefInjected (21 keys, 0 errors) pass. Code review 8.m redone: `fe3c067..256a66d` under `Mod/` read in full (two French text edits, one English comma, Preview.png); no defect; `code_review_sha` = 256a66d. Ticket eba1 (feature 12, 1.6) queued: read at RUN_DONE.

Second ChatGPT pass 2026-10-29, owner said to apply what is relevant: hyphen in "milk-producing" (`Mod/Defs/Race_PygmyBeefalo.xml`, one-word diff read, 8.m refreshed, `code_review_sha` = 8a512a6f6f45ae9ac1a63c2d91de3a2478810e89) and PUBLICATION.md status line limited to the Workshop page. The Steam block holds no "milk producing" text, nothing to change there.

Third ChatGPT pass 2026-10-29, owner said to apply what is relevant: PUBLICATION.md "the beefalo alone is in picture 4, on the bridge" applied; "Belgian Blue" capital not applied (original Def wording, English label is lower case).

Fourth ChatGPT pass 2026-10-29, owner said to apply what is relevant: PUBLICATION.md "as five pictures of one farm day" applied; "sélectionnée" not applied (sélectionné agrees with ongulé).

## NSB

Sync 2026-11-06, second run the same day (first run read part of the docs; this one completes the tribe side). Rules (owner, 2026-11-05): everything in NSB is free; a colonist or domestic animal outside NSB needs express validation; a colonist's properties change only with express validation; every outfit is free.

Read: CATALOGUE-ANIMAUX, SANCTUAIRE-LIEUX (colonists/animals/faune/named places/animal spawn steps), EMBELLISSEMENT-LIEUX and DEPENDANCES-SANCTUAIRE (our places and hat/hair mods), NELIM-PROFIL (whole), NSB-ROSTER and APPARENCES-CANON (Nelim lines only), HUMAINS-PROFILS, LOOKS-VALIDATION (head), GALERIE-COLONS. SANCTUAIRE-CASES has no line for our places. NSB changed since the first run: nothing (`git log --since=2026-11-06` empty); no Docs commit seen since 2026-10-18, docs headers say 2026-11-05.

Updated (first run): scenarios of `12-gallery-animals-props` set hair `Roo_Royal_LongHD` (canon under a hat), `rooboid.hdhair.continued` 3559870636 in `wsl-deps.sanctuary-props.map`. This run, no further file change. Left alone: scene 5 at `plant-garden` (NPT advised `bare-clearing` 2026-10-25; pending with the smile and gesture fixes); outfit "fixture kit (corset, trousers) + cowboy hat + duster" is not an NSB wardrobe row, allowed (rule 4, farm story, shotlist says why); NSB suggests willows and reeds at `river-bridge`/`right-bank`, not used. Mouth: canon is `MouthLipsSmirk`; the default smile is the owner rule of 2026-10-25 (recorded here as "default expression is smiling", exact words not kept: rule 3 wants them quoted, so the smile is a paraphrased validation until Virginie repeats it). Ticket 3e82 holds the old tree: relaunch after the scenario edits.

Places read: 2026-11-06. Tribe read: 2026-11-06.

| Place | Shots | Changes for the gallery | Last read |
|---|---|---|---|
| `right-bank` (144,132) | 1 | TorchLamp lit, Plant_Daylily, removed after | 2026-11-06 |
| `flower-garden` (154,105), estimate | 2 | none; frame (150,103)-(158,108) avoids statues, bed | 2026-11-06 |
| `enclosure-south` (149,214) | 3 | trough, large bale (props map), area cleared | 2026-11-06 |
| `river-bridge` (135,126) | 4 | 2 Plant_YellowTallGrass at the ends | 2026-11-06 |
| `plant-garden` (190,85) | 5 | 2 TorchLamp, 2 Plant_YellowTallGrass; move to `bare-clearing` (195,152) pending | 2026-11-06 |

| Colonist | Shots | Outfit per shot | Last read | Exceptions |
|---|---|---|---|---|
| Nelim (NSB) | 1-5 | fixture kit (corset, trousers) + Apparel_CowboyHat wheat all day (farm day, open hat); Apparel_Duster oat brown at dawn (1, fog) and late wind (4, 5) | 2026-11-06 (profile whole) | hair `Roo_Royal_LongHD` = canon under a hat; expression: validated by Virginie 2026-11-06: "Nelim sourit comme dans le canon, à moins qu'il ne soit mieux d'un point de vue mise en scène, qu'elle ait une autre expression. Mais par défaut, si pas d'expression fournie, elle sourit" (canon mouth `MouthLipsSmirk`; another expression allowed when the staging is better) |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| Rosa (Belgian blue cow), Petite (calf), Taureau (bull) | 1, 2, 3, 5 | none | n/a | outside NSB, mod subject; validated by Virginie 2026-11-06: "Les animaux du mod DOIVENT être dans la gallery" |
| Pip (pygmy beefalo), Minus (calf) | 4, 5 | none (AACaK scarf idea unverified) | n/a | outside NSB, mod subject; validated by Virginie 2026-11-06: "Les animaux du mod DOIVENT être dans la gallery" |

## Shotlist v11, 2026-11-06 (write-shotlist 2, 3, 4, 5; supersedes the v10 table for scenes 2 to 5)

Header of `12-gallery-animals-props.feature` rewritten for scenes 2 to 5 (scene 1 only gets the smile lines), scenarios rewritten to match, Opus director pass kept in the header (kept, and kept differently, listed there). Changes: Nelim smiles (canon `MouthLipsSmirk` + `LidCheerful`, owner quote in the NSB section), `face is held neutral` dropped; frames by the camera steps (head of Nelim and the animal, or centered on the animal) at N 2.8, 3.5, 3.0, 3.6 so her face reads; exact tick pauses with `I advance the paused game by exactly N ticks`; scene 2 roses in the foreground and Nelim next to Rosa for the Milk job; scene 3 bull walks face on to the trough; scene 4 forced walks instead of `follows`; scene 5 moved to `bare-clearing`, herd gathered (cow, calf, beefalo, bull), beefalo walks toward the camera. Ticket 3e82 cancelled 2026-11-06, refiled as 0096 (`20261106-042613-997-0096`, df064e3, feature 12, map `wsl-deps.sanctuary-props.map`, evidence `Tests/Pickle/Inbox/20261106-farm-day-v11`).

| # | a time | b decor | c living | d Nelim | e action and instant | f frame | g subject | j thumbnail | est | risk |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | right-bank 07 h fog, 60+60 ticks | TorchLamp lit, Plant_Daylily | Rosa walking West | duster + hat, Roo_Royal_LongHD, smile | forced walk, cow follows, first steps to the water | rect 18x10, N 5.06 | the herd has arrived | cow 50-60 px | 4.5 | follow step expects a colonist leader |
| 2 | flower-garden 12 h clear, 60+150 | 2 Plant_Rose foreground | Rosa East, calf Petite West | hat only, smile | Milk job, bar half full, calf waits | head of Nelim and Rosa, N 2.8 | the milk | cow 94 px, face ~10 px | 4 | Milk may refuse a cow not full (fallback Wait); roses a thin decor |
| 3 | enclosure-south 15 h clear, 60+25 | trough, large bale | bull Taureau face on, walking | hat only, smile | bull walks to the trough, Nelim hauls Hay to (147,218) | centered on Taureau, N 3.5 | the build | bull 47 px | 4.5 | bare dirt; Nelim at the frame edge |
| 4 | river-bridge 17 h clear, wind, 60+40 | 2 Plant_YellowTallGrass (cells guessed) | Pip, Minus trailing | duster + hat, smile | haul WoolMuffalo, halfway, calf a step behind | head of Nelim and Pip, N 3.0 | small horned pack animal and its wool | beefalo 30 px, calf 18 px | 4 | grass cells may be water; 17 h read dim on v9 |
| 5 | bare-clearing 19 h clear, 60+30 | 2 torches lit, 2 tall grass, large bale | Rosa, Pip (toward camera), Petite, Taureau | duster + hat, smile | cow and beefalo mid-stride toward the hay, Nelim sets it down | head of Nelim and Pip, N 3.6 | the herd has moved in | cow 74 px, beefalo 25 px | 4.5 | crowded frame, bull at the edge |

Series k: ok (one story, wide / close / medium, opener 1 and closer 5, N 5.06, 2.8, 3.5, 3.0, 3.6). Self-score of the series 4.3 (mean of the estimates). Not verified: the advance, head-frame, walk, haul and `MouthLipsSmirk` steps and values, every cell outside the pen, the Milk gate. Needs no new step and no new owner question: Nelim's expression and the mod's animals are validated (NSB section).

## Ticket 0096 read, 2026-11-06 (farm day v11)

4 of 5 passed, scene 2 failed: `Nelim's job is RopeRoamerToHitchingPost, not Milk` (the cow's milk bar is not full, so Milk refused and the AI took a rope job). Captures read (step0 frames only): 1 dawn: cow faces East, Nelim seen from behind, smile unreadable; 3 bull: face on, hay bale and Nelim at the frame edge; 4 bridge: beefalo and calf good, hay hides her face; 5 evening: herd cut at the left edge, bull tinted blue, Nelim small. Scene 2 fallback applied (`Wait` job beside the cow, Milk only in the subtitle); refile scene 2 alone. Evidence in `Tests/Pickle/Inbox/20261106-farm-day-v11`. Not yet shown to Virginie.
Open question 2026-11-06 (Virginie): scene 2 `Milk` ended at once (cause inferred, not proven: milk bar not full; then the think tree took RopeRoamerToHitchingPost since Rosa roams). Choice: ask NPT for a "milk full" step then replay Milk, or refile with the `Wait` fallback already in the feature (1679c3a, risk: rope job returns).
Answered 2026-11-06 (Virginie: "wait"): scene 2 refiled alone with the `Wait` fallback as ticket dbbe (`20261106-094405-277-dbbe`, tree b233a9b, map `wsl-deps.sanctuary-props.map`, evidence `Tests/Pickle/Inbox/20261106-farm-day-v11-s2`); queue paused by Virginie, wait for `RUN_DONE` from the TM. At RUN_DONE: read summary.json and junit.xml, open the capture. If the rope job returns after Wait, ask NPT for a "milk full" step (gallery need, NPT first, Virginie arbitrates if refused). Then show Virginie the v11 captures (1, 3, 4, 5 read 2026-11-06: smile unreadable in 1 and 4, Nelim at the edge in 3, herd cut at the left and bull tinted blue in 5), accept or refuse; TM backlog digested and 3e82 reported obsolete.

## Shotlist v12, 2026-11-06 (write-shotlist 1, 3, 4, 5 after rate-gallery on 0096; scene 2 back to Milk)

Read: 0096 captures (1, 3, 4, 5 opened), dbbe (scene 2 failed: undefined step `is forced into the job {string}` without target; only the forms with `on "<target>"` exist). rate-gallery 2026-11-06: plan 4.9, image 3.4 (4 shots), adequacy 2.8: Nelim's face and smile unreadable in all four (carried Hay or Wool hid it, cow overlapped her, she sat at the frame corner), herd cut at the left edge in 5, 19 h tinted the white coats blue. NPT answered 2026-11-06: new step `Nelim's Pickle Tools: the animal "Rosa" is full of milk` (PickleTools 1370b58, compiled, not played); the tint is probably the dusk sky glow, neutral hours 9 to 15 h, proof by the same scene at noon.

Changes (feature 12 header and scenarios, one Opus director pass, remarks kept in the header): no carried item; Nelim walks SOUTH toward the camera in 1, 3, 4, 5; forced walks without `follows`; head frames and rectangles keep every named animal inside; hours moved to 07, 11, 13, 15, 17 so the coats stay white; scene 2 plays Milk again after the milk step. Old captures of v11 (Inbox 20261106-farm-day-v11 and -s2) deleted with the rewrite (GALLERY.md rule 2026-11-06); `Art/Gallery/1-3` are the older accepted pictures of another story, left until a v12 capture replaces them.

| # | a time | b decor | c living | d Nelim | e action and instant | f frame | g subject | j thumbnail | est | risk |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | right-bank 07 h fog, 60+40 | TorchLamp lit, Plant_Daylily | Rosa walking West | duster + hat, Roo_Royal_LongHD, smile | walks South ahead of the cow, turns down to the ford | rect 16x9 | the herd has arrived | cow 58 px | 4.5 | cells unverified; smile reads at full size only |
| 2 | flower-garden 11 h, 60+150 | 2 Plant_Rose | Rosa full of milk, calf Petite | hat only, smile | Milk job, calf waits | head of Nelim and Rosa N 2.8 | the milk | cow 94 px | 4.5 | Milk may end at once; face bent over the cow |
| 3 | enclosure-south 13 h, 60+30 | trough, large bale | bull Taureau face on, walking | hat only, smile | she and the bull reach the trough, mid-stride | head of Nelim and Taureau N 3.6 | the build | bull 47 px | 4.5 | bare dirt; cells unverified |
| 4 | river-bridge 15 h, 60+40 | 2 Plant_YellowTallGrass east bank | Pip, Minus trailing | duster + hat, smile | Pip and Minus cross toward her, calf a step behind | head of Nelim and Pip N 3.0 | small horned pack animal | beefalo 30 px | 4.5 | grass cells may be water |
| 5 | bare-clearing 17 h, 60+30 | 2 torches lit, 2 tall grass, bale | Rosa, Pip toward camera, Petite, Taureau | duster + hat, smile | she and Pip walk South, cow walks in | rect 14x8 | the herd has moved in | cow 70 px, beefalo 30 px | 4.5 | crowded; 17 h may still tint |

Series k: ok (one story, wide / close / medium / medium-wide, opener 1 and closer 5). Self-score 4.5 (mean). Not verified: every cell, the head-frame and rectangle steps on these cells, `MouthLipsSmirk`, the milk step (compiled, not played; the Azure lane may not carry NPT's new DLL). Ticket 035b (`20261106-152416-157-035b`, feature 12, tree 663fdaf, map `wsl-deps.sanctuary-props.map`, evidence `Tests/Pickle/Inbox/20261106-farm-day-v12`) filed 2026-11-06; wait for `RUN_DONE`, open every capture, then show Virginie.
