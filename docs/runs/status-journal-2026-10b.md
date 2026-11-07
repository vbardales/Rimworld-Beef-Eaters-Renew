# BeE status journal, 2026-10-18 to 2026-10-29 (moved from STATUS.md on 2026-11-07)

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

