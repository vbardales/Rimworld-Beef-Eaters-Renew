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
updated:      2026-10-29, BeE session: step DLL rebuilt (325a573), ticket eba1 filed (feature 12, v10 scenarios, 1.6); ChatGPT French review applied by owner order (256a66d); 8.m redone on the diff; candidates 2-5 (ninth version) still await Virginie. Older: 2026-10-25 shotlist v10, ticket 60bd red (undefined steps), scenario fixes of 2026-10-25 still to apply after eba1
publication_changelog_review_sha: 8d473e4d7d63c0d1752e423ad7f9e79cf976fff0
protocols_read_sha: cc1f93006ee3756009054a0389731cff310d8784
---
# Beef Eaters Renew — status

## 2026-10-13: 1.7, Preview, PUBLICATION.md, gallery

- **1.7**: `tested_1_7: yes` (run 88c2, 2 of 2 passed on 1.7; `docs/runs/history.md`). Virginie confirmed, `<li>1.7</li>` added to `supportedVersions` (`8c2844b`), CHANGELOG line added.
- `tested_1_7: yes` holds English only: 1.7 install ships no French pack (AUDIT.md, 2026-10-13), so French not proven on 1.7.
- **Preview** regenerated with 1.7 badge (`150a5db`); `0-preview.png` copy and both ICOs follow. Old defect (showcase without Belgian blue cow) gone: now shows cow and beefalo in barn.
- **About.xml** description generated from `## Steam description` block of `PUBLICATION.md` (`.github/publish.config.json` gained `aboutFromDescription` and `description`); names no RimWorld version, clears `rimworld-version` warning.
- **Gallery**: images 1 (barn) and 2 (cow + calf) accepted from run `20261012-gallery-v6b`; beefalo reframed tight, ticket 8a7d (no report) and ea15 (v7b, 1/1) refused, replaced by v8 (dd46). Ticket afc3 was earlier v6 run (exit 5, in-progress), not the 5/5 one.
- **Code review reopened and redone, 2026-10-13** (AUDIT.md 8.m): `bedb34a..fe3c067` read in full: `Mod/About/About.xml` (description generated from PUBLICATION.md, 1.7 added), `Mod/About/Preview.png`, `Tests/Pickle/Source/GallerySteps.cs` and trimmed `TradeSteps.cs` (test-side only, gallery steps split out, nothing ships), `Directory.Build.props` (build/ path). No defect. `Mod/Defs`, `Mod/Patches` and French files unchanged since `bedb34a`, so 1.6 runs stay valid for them.
- Protocols read at `8ca1edc7`; `AUDIT.md`, `scripts.md`, `STYLE_RIMWORLD.md`, `USE_THIS_INSTEAD.md` changed since, re-read before next stage change.

## AUDIT.md applied — 2026-10-10

Audit text of 2026-10-10 (fifteen states, `playTests` = everything needing running game). Revision
at entry: `2b42c56`; working tree: `Art/Gallery/0-preview.png`, `Art/ModIcon-source.png`, `Art/ModIcon.ico`,
`Art/Preview.ico`, `Mod/About/Preview.png` modified (owner's new ModIcon source and derived
images, not touched by this session).

**Old `done` -> `playTests[1.0.0]`** (correspondence table, AUDIT.md section 16). `stage` removed from
front matter, `workflow_stage` written in new vocabulary with target version.

Replayed offline on this revision: `Tools/Check-Mod.ps1` all ok; `Tools/Check-PickleSteps.ps1` 107 step lines
in 12 features, each resolving to exactly one step. Everything before `playTests` holds: dependencies and
four animal integrations (2026-10-01), `settings_audit: not_applicable`, translations complete (French
reviewed by Virginie 2026-10-02), Pickle suites written with scope and maps in `Tests/Pickle/README.md`
and `TEST_SCENARIOS.md`.

What `playTests` still lacks (all `unverified`, none a defect):
- **`11-def-values` played 2026-10-10, ticket 1de2: 9 of 9 passed** (exitReason passed, 9 discovered and played; earlier wrote 11, file has 9). Before that ticket 8265 came back `invalid` 2026-10-03, as did gallery
  ticket 743e. 2026-10-02 notes above called them "queued": they were not. Re-submitted this day.
- Reds of 2026-10-02 replayed green on fixed build: animals 69c3 (2 of 2 passed, Dogs mate patch
  fired), textures, original collision, English and French labels, Animal Gear present. `04-animal-gear-absent`
  red by construction in pass mounting Animal Gear (expected, filtered with `!04-animal-gear-absent`).
- Code review once at end (8.m), then gallery (`shootGallery`).
- Non-regression (whole suite, both languages) deposited after commit, not before (AUDIT.md, fail fast).

Housekeeping: `STATUS.md` was 41 KB (linter WARN over 40): 2026-09-13 and 2026-09-27 dated audits moved
to `docs/runs/status-journal-2026-09.md`. `protocols_read_sha` written by `Mark-ProtocolsRead.ps1` after
reading `AUDIT.md`, `AGENTS.md`, `PICKLE.md` and dispatcher's `WELCOME.md` / `SUBMIT.md` in current text.
Session registered with Ticket Manager (owner `local_b22832e9-f66c-4721-88a4-4fe30019e592`).

## AUDIT.md re-applied — 2026-10-01

Re-read `AUDIT.md` (2026-09-29 text), `AGENTS.md`, `TRANSLATIONS.md` (2026-09-30) and other
protocol documents (hashes in `docs/PROTOCOLS-READ.md`). Revision at entry: `fdb5c3a`; only
`Mod/About/PublishedFileId.txt` untracked.

**Verdict: `stage: done` and `workflow_stage: done` unchanged.** Nothing before `done` regressed:
`Tools/Check-Mod.ps1` (exit 0) and `Tools/Check-PickleSteps.ps1` (34 step lines in 9 features, each
resolving to exactly one step; default Pickle path moved to `1.6\Assemblies`) both pass. `workflow_stage` missing from front matter, now written.

- **0.1.0 pre-published, 2026-10-01.** `Mod/About/PublishedFileId.txt` exists (3811290251). Written 14:38 that day, so upload held `Mod/` at `720c0de`; `Preview.png` recomposed
  later (`fdb5c3a`, 20:05), not in item. Committed as `Add published Workshop file ID for
  0.1.0`, with `## [0.1.0]` CHANGELOG entry. Act of pre-publishing not a stage: item private and untested, so `prepublished` not claimed. 2026-09-28 paragraph below
  saying 0.1.0 not pre-published replaced by this one.
- **`.dds`**: none on disk or in git; `*.dds` now in `.gitignore` as guard.
- **Evidence**: no `Tests/Pickle/Evidence/` exists (no run ever happened), nothing to delete.
  Rule on what to keep now written in `TEST_SCENARIOS.md`, "Evidence to keep".
- **French review, 2026-10-01: corrections applied, review not validated yet.** Virginie asked: milk and meat wording, `sabot gauche/droit`, beefalo robustness and "about half the size", race name `Blanc Bleu Belge`. `FRENCH_REVIEW.md` regenerated; `translation_fr` stays `partial` until she re-reads.
- **French review validated by Virginie, 2026-10-02** (relayed in chat, recorded here by session): `Blanc Bleu Belge` consistent as breed name, `beefalo pygmée` correct, descriptions natural and faithful, no dynamic colon agreement. Revision reviewed: `3eef8da`; French text last changed in `55393db`. `FRENCH_REVIEW.md` regenerated from clean tree, header now names commit. `translation_fr: complete`.
- **Original mod repository**: none found. Steam page 1988048034 links no source, GitHub search
  for mod name and author returns only this repository, 2026-09-12 review found
  nothing. `upstream_mod_remotes: N/A` stands; no code to base on, no PR target.
- **New `tested` criteria** (no `@wip`, every conditional scenario run, no manual test left) in
  `TEST_SCENARIOS.md`, "Gate for `tested`". No `@wip` exists. Three features conditional
  (`02` TextureOwner, `05` original mod, `08` Animal Gear), need own pass.
- **Animal integrations decided 2026-10-01 (PUBLISHING.md rule of 2026-09-28/10-01), Virginie agreeing to scope.** Four mods, read in installed Workshop folders: **ADS 2** patched (`Patches/ADS2.xml`): vanilla Cow in ADS_Cat2 and ADS_Cat1 only, Muffalo in all three, so BelgianBlueCow gets Cat1+Cat2, PygmyBeefalo Cat1+Cat2+Cat3; `loadBefore` ADS 2 added to About.xml. **Dogs mate** patched (`Patches/DogsMate.xml`): BelgianBlueCow into group `Cow`, PygmyBeefalo into group `Bison` (description makes it bull x muffalo cross). **Nocturnal Animals**: not applicable, no patch - its `Patches/Core` files name neither Cow nor Muffalo, so both analogues stay diurnal, so do these animals. **Better Crossbreeding**: not applicable - no vanilla analogue crosses, so crossbreed would be new design, not porting; revisit on Virginie's call.
  integrations (ADS 2, Nocturnal Animals, Dogs mate, Better Crossbreeding) before `preTest`.
  Listed in `remaining` as `unverified`; may move `stage` once read against Defs.
- Missing documents, unchanged: `PUBLICATION.md` (needed from `tested -> prepublished`),
  `LICENSE` (deliberate, `licence: silent`), `BACKLOG.md`, `NOTES.md`, `BUGS.md`.

Older dated audits (2026-09-13, 2026-09-27) moved to `docs/runs/status-journal-2026-09.md` on 2026-10-10.

## Historical status notes

Status card, read by sweep over every mod rather than asking each thread one at a time. Lives at root, never inside `Mod/`, so Steam never receives it.

Card in English, like repository around it: README, changelog, attribution and every
commit message.

Fields above read off disk 2026-09-12 by sweep, which left two corrupted — `licence` read `licence_ou:` and `licence_at` had swallowed a `vitrine:` key. Repaired here, along with four sweep could not know:

- **`stage`** — `done`, accepted by user 2026-09-13. Implementation, French translation,
  automated checks and showcase complete. Unplayed manual scenarios remain recorded
  as verification limits, not blockers to completion decision. Workshop publication
  not performed; `done` does not claim runtime validation or publication.
- **`tested_on`** — empty, accurate not omission. Neither animal ever seen in running game. No calf spawned, no information card read, no pen filled.
- **`licence`** — `silent`. Original states nothing in any of four places `ATTRIBUTION.md`
  lists, and stopped at 1.4 in March 2023. Published on Workshop's custom for abandoned
  mods: named credit, takedown on request.
- **`remaining`** — manual game scenarios and French display unverified. Previous preview defect fixed 2026-09-13: new illustration clearly contrasts large pale muscular Belgian blue with small horned shaggy beefalo.

`remaining` categories: `feature` for something missing from first release, `defect` for known fault left unfixed, `unverified` for what could not be checked.

`session` field not touched: comes from sweep, names session group, not this
conversation.

`licence` vocabulary: `open` explicit licence, `silent` no licence and dead source,
`alive` no licence but living source, `forbidden` written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

`upstream_mod_remotes`, distinct from both `repo` (this mod's own repository name) and `origin`
(this repository's own git remote): git repository URLs of *source* mods this port draws
from, one per `- ` list item, `N/A` when none found. Here, `N/A` — no GitHub link for
TheGoofyOne's Beef Eaters (Workshop 1988048034) anywhere in installed files or live
Workshop page, confirmed 2026-09-12 and rechecked 2026-09-28 with bounded grep over
installed copy per `SEARCHING.md`, not full Workshop corpus (one already-identified source
mod, not unknown-collision search).

## Translation audit — 2026-09-13

Applied `../PUBLISHING.md` and `../TRANSLATIONS.md` to content at revision
`c1ace096293cb5338fce3ea824afee27a221e0c4`. Reviewed both files under `Mod/Defs/`,
`Mod/Patches/Armor.xml`, both French DefInjected files and full published file list.
No assemblies, UI source, Keyed strings, custom grammar resources, version
folders or LoadFolders. Optional Animal Gear patch included in inventory.

| Owned text source | English source fields | French entries |
|---|---:|---:|
| BelgianBlueCow ThingDef: name, description, three named attacks | 5 | 5 |
| BelgianBlueCow PawnKindDef: name, male name, calf and plural | 4 | 4 |
| PygmyBeefalo ThingDef: name, description, five named attacks | 7 | 7 |
| PygmyBeefalo PawnKindDef: name, calf and plural | 3 | 3 |
| Optional Apparel_PygmyBeefaloArmour: name and description | 2 | 2 |
| Total | 21 | 21 |

All owned text uses native translatable Def fields. English supplied by original
Def values; duplicate English language folder unnecessary. French covers all 21
fields, including nested attack handles and calf labels. Reviewed meaning and terminology;
no empty values, duplicate keys, untranslated placeholders, parameter tokens or rich-text
markup found. Two horn handles distinct (`horn-0` and `horn-1`).

Mod references vanilla resources for milk, wool, meat, leather, body parts and attack
capacities; supplies no replacement text for them, uses no dependency Keyed keys.

### Systematic French review — prepared 2026-09-30, unread

None of 21 French fields above agrees with a pawn: all animal or apparel
names and descriptions, so TRANSLATIONS.md's `{PAWN_gender ? ... : ... : ...}` three-segment
switch and neutral middle dot do not apply to this mod. Nothing reworded for
that rule.

`FRENCH_REVIEW.md` generated by `Tools/Generate-FrenchReview.ps1` from shipped
`Mod/Languages/French/DefInjected/{PawnKindDef,ThingDef}/BeefEaters.xml` against
`Mod/Defs/` and `Mod/Patches/Armor.xml` (English is mod's only source language; no
separate Original text exists — see `ATTRIBUTION.md`). All 21 rows resolved against
shipped Defs; none flagged `?`.

**Not yet reviewed by Virginie.** `translation_fr` stays `partial` until she reads
`FRENCH_REVIEW.md` herself and records review here; no session marks own French
reviewed.
Armour recipe generated by game from apparel Def and localized label;
no separate mod-owned recipe sentence. About metadata, identifiers, paths and
repository documentation outside in-game translation gate.

Validation rerun 2026-09-13:

- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`: 21 keys,
  zero errors, no unresolved targets reported, exit 0, against installed game types.
- `powershell -NoProfile -ExecutionPolicy Bypass -File Tools/Check-Mod.ps1`: all checks
  passed, exit 0, including all six XML files and optional patch guard.
- XML inventory: 21 owned source fields matched to 14 ThingDef and 7 PawnKindDef
  French entries; zero duplicate keys or empty values in either translation file.

Three `complete` fields certify offline translation gate only. No in-game language
test performed. Scenario P and `remaining` track both languages, generated recipe text
and Animal Gear present/absent cases. Existing user-accepted `stage: done` preserved.
After text, Def, patch or language-resource changes, reset affected translation fields
to `unchecked` and repeat this audit before claiming gate complete again.

## Verification on 2026-09-12

- **French translation:** added 21 DefInjected fields in
  `Mod/Languages/French/DefInjected/ThingDef/BeefEaters.xml` and
  `Mod/Languages/French/DefInjected/PawnKindDef/BeefEaters.xml`: animal descriptions and names,
  bull/calf labels and plurals, named attacks, optional armour. External
  `Check-DefInjected.ps1 -TransMod ./Mod` checked 21 keys with zero errors, using installed
  game types. `Tools/Check-Mod.ps1` also passed, including all six XML files. In-game language
  switching and armour-present/absent cases remain unplayed; scenario P now covers them.
- **About links:** description now has explicit links section for GitHub source, issues,
  changelog, attribution/licence review and original Workshop item. No port Workshop URL
  invented: port not published there.

- **Title:** `Beef Eaters Renew (unofficial)` already identifies continuation and unofficial status. Keep existing suffix; no additional suffix needed.
- **Manual functional tests:** sixteen scenarios, A-P, exist in `TEST_SCENARIOS.md`, with steps and
  expected outcomes covering loading, wildness, production, pens, caravans, training, spawning,
  trade, graphics, breeding, Animal Gear, conflicts and saves. Remain unplayed and
  `tested_on` stays empty. User subsequently accepted `done` 2026-09-13.
  Scenario P now uses full suffixed title.
- **Automated tests:** `powershell -NoProfile -ExecutionPolicy Bypass -File Tools/Check-Mod.ps1`
  passed with exit code 0. Checks XML parsing, wildness migration, local texture paths,
  package metadata, trade tags and attribution consistency. Added checks protect title,
  GitHub links and Animal Gear patch guard. Malformed XML now stops checker before
  dependent checks. Negative controls on temporary copy detected all four introduced
  metadata/guard failures and returned one failure for malformed XML.
- **XML field validation:** `pwsh -NoProfile -File ../scripts/Check-XmlFields.ps1 -ModPath ./Mod`
  passed with exit code 0: four files checked, no unknown 1.6 fields. External checker
  requires installed game assemblies. Neither checker proves runtime behaviour or Animal
  Gear compatibility; scenario M remains outstanding.
- **GitHub:** description and `<url>` in `Mod/About/About.xml` both contain
  `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`, matching local Git remote.
- **Licence:** `silent`, repository's classification for upstream source with no stated
  licence, recorded inactive. Follow-up below rechecks evidence and limits.
  No MIT, GPL or other explicit licence present.
  Port's documented terms preserve credit, promise removal on original author's
  request, allow continuation if maintainer does not respond within reasonable
  time. Terms do not establish explicit upstream licence.

## Licence follow-up on 2026-09-12

`silent` confirmed under repository's classification after direct browser verification:

- Installed original Workshop item `1988048034` inspected recursively. Contains
  no licence or copying file. XML and text files contain no licence, permission or
  redistribution restriction found by search. Its `About.xml` has `<url>about:blank</url>`.
- [Original Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034)
  read live in Codex browser, including all three pages containing its 29 comments.
  Lists support through 1.4 and last update 11 March 2023.
  Neither description nor comments states reuse terms. Author comments concern
  updates and discussion of animals;
  reader's August 2025 proposal to merge mod is not permission from author.
- No upstream GitHub repository or explicit Beef Eaters reuse policy found by targeted
  searches. Search result, not proof none exists elsewhere.
- All nine [changelog entries](https://steamcommunity.com/sharedfiles/filedetails/changelog/1988048034)
  read live: only automatic update notices, no licence or restriction.
- Public [author profile](https://steamcommunity.com/profiles/76561197964775630)
  shows no general mod reuse policy or linked source repository.
- Browser access succeeded after earlier web and shell requests failed. Earlier
  cached-page and unread-comments limitations resolved. Installed copy not refreshed.

Here `silent` describes mod's apparent inactivity and lack of stated terms; does not
establish author inactive everywhere, nor supply explicit redistribution licence.

## How the showcase was built

Illustration replaced and overlay recomposed 2026-09-13 according to `../STYLE_RIMWORLD.md`.

- **Source:** new unlettered illustration generated with built-in ImageGen, saved in `Art/Preview.png` and visually checked before composition. Pale short-coated muscular cow and much smaller horned shaggy beefalo resolve old subject mismatch. Previous source archived before generation at `Art/Preview-archive-2026-09-12.png`; `Art/Preview-source.png` also remains untouched. Exact generation prompt saved in `Art/PROMPT_Preview.md`.
- **Composition:** `Art/preview.html`, at 896 x 504. Name and summary preserved. Tag
  separate from title. Strong title words and summary share same primary ink. Renew
  remains in title at 65% (29.9 px), weight 600, secondary ink. Placement, typography,
  rule and triangular version badge follow guide. Version read from delivered
  `Mod/About/About.xml`, choosing highest stable declared version (currently 1.6).
- **Palette:** `Art/preview-palette.json` sole colour reference, loaded by HTML.
  Veil comes from broad brown plank floor. Secondary ink is lightened, coloured
  ochre from dominant wood/straw family, not pixel average. Vivid accent
  comes from blue-green water in trough, lightened and saturated into turquoise.
  Cool family clearly separates rule and badge from warm ochre secondary ink and
  dominant wooden scene. Darker veil held across text area to protect contrast.
- **Rendering:** `Art/render-preview.cjs` serves local composition, waits for
  `document.fonts.ready` and image decoding, then captures at device scale 1. Run with Node.js,
  Playwright and sharp available through NODE_PATH. Actual Chrome platform fonts verified:
  Segoe UI Semibold for title, Segoe UI regular for tag/summary, Segoe UI Bold for badge.
  No fallback font used.
- **QA:** `Art/preview-qa.json` records font evidence, bounds, dimensions, size and contrast.
  `Art/preview-background.png` is rendered background with lettering hidden. Minimum
  contrasts across entire text rectangles, including corners and all interior pixels:
  primary title ink 8.76:1, Renew 6.78:1, summary 7.19:1, tag 5.87:1.
  Badge digits on opaque accent: 8.88:1.
  Shadows not credited in measurements.
- **Visual checks:** inspected `Mod/About/Preview.png` at 896 x 504 and
  `Art/preview-268.png` at 268 px wide. No clipped text or overlap; title and version identifiable,
  reduced title suffix readable, rule visible, cool accent distinct from warm secondary ink.
  Output: 448,124 bytes, below 900 KB. No publication performed.

Icon unchanged: `Mod/About/ModIcon.png`, 128 x 128.
## What was fixed on 2026-09-12, and what it cost

Three faults, none introduced by port, all found while writing `TEST_SCENARIOS.md`.

**Pygmy beefalo described as opposite of what it is.** README and `About.xml`
called it pen animal rather than caravan animal. It has no `roamMtbDays`, so not roamer
and needs no pen, and carries `packAnimal`, so hauls in caravan like muffalo it comes
from. Same sentence compared it to muffalo of body size 2.7, where Core says 2.4. **Wording corrected, not def** — documentation fix changes no balance, where making
files match sentence would have been design change on someone else's animal.

**Pygmy beefalo could not be traded at all.** Only tag was `StandardAnimal`, which no trader
def in Core or any expansion reads and nothing in game data declares. `AnimalFarm` added beside it, original's dead tag left in place. **This one is design rather than porting**,
only such change in mod, and `ATTRIBUTION.md` says so in those words.

**Original could be enabled alongside this port.** Both declare `BelgianBlueCow` and
`PygmyBeefalo`, so RimWorld loaded both and last won without word in log.
`About.xml` now declares `incompatibleWith` naming `TheGoofyOne.BeefEaters`, whose packageId
read off copy subscribed on this machine rather than guessed.

**Animal Gear patch still cannot be tested here.** Kept exactly as TheGoofyOne wrote it,
behind his `PatchOperationFindMod`, and Animal Gear not installed. Inert and silent in its
absence, unknown in its presence.


## Preview source migration — 2026-10-02

Copy, typography, layout and palette consolidated in `Art/Preview.config.json`. Canonical inputs are `Art/Preview-source.png`, `Art/echo-preview.png` and `Art/ModIcon-source.png`; shared renderer writes temporary diagnostics under ignored `Art/.render/`. Existing distributed Preview, gallery and ICO outputs preserved because present and coherent; no render run for this migration. Superseded JSON files and generated QA intermediates removed. Nothing published.

## playTests[1.0.0] closed, shootGallery[1.0.0] entered, 2026-10-10

Protocol update read first (AUDIT.md sentence on `protocols_read_sha` ERROR, AGENTS.md markers and "while waiting", PUBLISHING.md and AUDIT.md 11.b/13.b, `USE_THIS_INSTEAD.md`), then `Mark-ProtocolsRead.ps1` (`a959f765`).

- Ticket 1de2 (`11-def-values`): 9 of 9 passed, exitReason passed.
- Every red of 2026-10-02 replayed green alone on build holding fix: min EN rerun 6/6, min-fr-rerun 6/6, textures-rerun 3/3, original-rerun 1/1, animals-rerun 2/2; Animal Gear present passed (ad6a). Two passes without optional mods, four with. No `@wip`. A-P all covered or not applicable (`TEST_SCENARIOS.md`).
- Code review (8.m), `code_review_sha` = `bedb34a`, range first commit to HEAD, read in full: `Mod/Defs` (one added trade tag), both patches (guards hold, predicates repeat `@Name=`), `About.xml`, French DefInjected (keys match defs), `Tests/Pickle/Source/TradeSteps.cs` (test-side only, never shipped). No defect found.
- Open for later states: `10-gallery-animals` never played (ticket 743e was `invalid`), gallery images, echo review, `PUBLICATION.md` absent, and at publish a `drafted` row in `USE_THIS_INSTEAD.md` (Renew mod; source 1988048034, to be read from Workshop page).
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
