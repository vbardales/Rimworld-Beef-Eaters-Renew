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
code_review_sha: bedb34a1f17300aae13d54a347574ac24af5cb15
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
upstream_mod_remotes: N/A
dependencies: none
showcase:     complete
tested_on:     2026-10-10, bedb34a, RimWorld 1.6 (WSL), 11-def-values 9/9 (partial: see remaining)
workshop:     3811290251
remaining:
  - unverified 2026-10-10: gallery `10-gallery-animals` rewritten 2026-10-10 for SanctuaryBacklot (5 pictures, map `wsl-deps.sanctuary.map`), first run pending; no accepted image in `Art/Gallery/` apart from `0-preview.png`
  - unverified 2026-10-10: the sixteen prose scenarios of TESTING.md (A-P), none played - no animal spawned, no pen built, no milk taken
  - defect found 2026-10-02 (run f84f, min EN at cefade3, 3 passed 8 failed 8 skipped): the 8 reds were all `names more than one def (PawnKindDef, ThingDef)`, Pickle def steps refuse the animals shared defNames; fixed by two local steps naming the ThingDef (commit dd32b9f), rerun of 01, 03, 06-english submitted; 06-french red likely same cause and rides the pending FR ticket
  - textures pass b655 (2026-10-02): 9 passed 5 failed 5 skipped; textures red = animals are Graphic_Multi, bare texPath is no file, steps now name the _south file, rerun submitted; label-French reds = French feature run under an English pass, not a mod defect (Tests/Pickle/README.md, "Language and the two label features")
  - original-collision pass 3cad (2026-10-02): 9 passed 3 failed 7 skipped; the original loads (its wildness XML error is logged) but 1.6 logs no `Adding duplicate` line, the scenario asserted a guess; rewritten to load order + wildness wins, rerun submitted; French reds = language pass, not a defect
  - Animal Gear pass ad6a (2026-10-02): 9 passed 3 failed 7 skipped; `08-animal-gear-present` PASSED (the guarded patch fires with Animal Gear loaded, closing scenario M); the 3 reds are `04-animal-gear-absent` (red by construction when the mod is present) and the two French labels (language pass) - no defect, no rerun
  - ADS 2 + Dogs mate pass c166 (2026-10-02): 10 passed 3 failed 6 skipped; both mods load with this one without a word (green); the Dogs mate patch DID fire (Cow patched by Dogs mate and Beef Eaters Renew) - the red was my step naming the mod by packageId instead of display name, fixed, rerun submitted; 2 French reds = language pass
  - gallery run 8ab8 (2026-10-02) green but its three images read by Claude and rejected: animals thumbnail-sized at PickleTools zoom 9 on the orange studio floor; rewritten with local spawn+camera steps (cow, bull, beefalo, together), gallery v2 submitted; nothing copied to Art/Gallery yet
  - gallery v3 (2026-10-02, ec71e99): staged story (evening on the cattle farm), lamp + rose + bush placed around each subject then removed, per owner's rule; ticket 743e (queued as v2) plays this tree; images still to be read by eye before any is copied to Art/Gallery/; the decor is plain Core props, a colonist-free scene, no tattoos/clothes apply to animals
  - 2026-10-02 c404f1d: TESTING.md now maps A-P to a Pickle scenario or a reasoned not-applicable (gate criterion 'no manual test left'); new feature 11-def-values (author's numbers read after load), ticket 8265 submitted; the gallery (743e) and Dogs mate rerun (69c3) still queued
  - unverified: SEVENTH TICKET (gallery, feature 10, map galerie) submitted 2026-10-02 at c2290ce; captures to read by eye, then copy chosen ones to Art/Gallery/ as 1-..png
  - evidence trimmed 2026-10-05 (disk request): Tests/Pickle/Evidence/20261001-* kept as summary + junit + Player.log only (their reds are superseded by the 20261002-*-rerun folders; the greens they alone prove, 04, 07, 08, 09-load, stay readable in summary.json); 20261002-gallery (rejected v1 images) deleted, its verdict is in the gallery line below
  - unverified: SIX PICKLE TICKETS SUBMITTED 2026-10-02 at cefade3 (min EN, min FR, textureowner, original, animalgear, animals; ids 20261002-072839-419-f84f .. -072850-480-c166, evidence Tests/Pickle/Evidence/20261001-*): awaiting RUN_DONE, verdicts not read; keep the Mod tree frozen until then
  - unverified: the eight Tests/Pickle features (wildness, textures, save round trip, Animal Gear absent, collision with the original, EN/FR labels, trade via a local WillTrade step), written 2026-09-27, none executed; every step line resolves to exactly one step per Tools/Check-PickleSteps.ps1 (2026-09-28) - see Tests/Pickle/README.md
  - unverified: the Animal Gear patch firing with Animal Gear loaded (scenario M, Tests/Pickle/08): feature written and step-checked; Dylan.AnimalGear (Workshop 1541438907) read from its own About.xml after a steamcmd download 2026-09-28, but never run
  - unverified: the ADS 2 and Dogs mate patches (Mod/Patches/ADS2.xml, DogsMate.xml) applied in a running game with those mods loaded; offline XPath check only (Tools/Check-Mod.ps1, section 6, shown able to fail). No Pickle map mounts them yet
  - unverified: the `tested` gate of AUDIT.md (2026-10-01 text): no `@wip` (none exists), every `@requires` feature run with a map that mounts its mod (02 textureowner, 05 original, 08 Animal Gear), no manual scenario left to tick - TESTING.md "Gate for `tested`" maps A-P to green Pickle or N/A
session:      local_c1f0d325-e5cd-4552-abce-8d77af2f363d
updated:      2026-10-10, the mod's own session - playTests[1.0.0] exit criteria met, code review done, now shootGallery[1.0.0]
protocols_read_sha: a959f76528043543b1ac9025b40dc8efcefd9e56
---

# Beef Eaters Renew — status

## AUDIT.md applied — 2026-10-10

Audit text of 2026-10-10 (fifteen states, `playTests` = everything that needs a running game). Revision
at entry: `2b42c56`; working tree: `Art/Gallery/0-preview.png`, `Art/ModIcon-source.png`, `Art/ModIcon.ico`,
`Art/Preview.ico`, `Mod/About/Preview.png` modified (the owner's new ModIcon source and its derived
images, not touched by this session).

**Old `done` -> `playTests[1.0.0]`** (correspondence table, AUDIT.md section 16). `stage` removed from the
front matter, `workflow_stage` written in the new vocabulary with its target version.

Replayed offline on this revision: `Tools/Check-Mod.ps1` all ok; `Tools/Check-PickleSteps.ps1` 107 step lines
in 12 features, each resolving to exactly one step. Everything before `playTests` holds: dependencies and
the four animal integrations (2026-10-01), `settings_audit: not_applicable`, translations complete (French
reviewed by Virginie 2026-10-02), Pickle suites written with their scope and maps in `Tests/Pickle/README.md`
and `TESTING.md`.

What `playTests` still lacks (all `unverified`, none a defect):
- **`11-def-values` played 2026-10-10, ticket 1de2: 9 of 9 passed** (exitReason passed, 9 discovered and played; earlier I wrote 11, the file has 9). Before that its ticket 8265 had come back `invalid` on 2026-10-03, as had the gallery
  ticket 743e. The 2026-10-02 notes above called them "queued": they were not. Re-submitted this day.
- Reds of 2026-10-02 that were replayed green on a fixed build: animals 69c3 (2 of 2 passed, Dogs mate patch
  fired), textures, original collision, English and French labels, Animal Gear present. `04-animal-gear-absent`
  is red by construction in the pass that mounts Animal Gear (expected, filtered with `!04-animal-gear-absent`).
- Code review once at the end (8.m), then the gallery (`shootGallery`).
- Non-regression (whole suite, both languages) is deposited after the commit, not before (AUDIT.md, fail fast).

Housekeeping: `STATUS.md` was 41 KB (linter WARN over 40): the 2026-09-13 and 2026-09-27 dated audits moved
to `docs/runs/status-journal-2026-09.md`. `protocols_read_sha` written by `Mark-ProtocolsRead.ps1` after
reading `AUDIT.md`, `AGENTS.md`, `PICKLE.md` and the dispatcher's `WELCOME.md` / `SUBMIT.md` in their current text.
Session registered with the Ticket Manager (owner `local_b22832e9-f66c-4721-88a4-4fe30019e592`).

## AUDIT.md re-applied — 2026-10-01

Re-read `AUDIT.md` (2026-09-29 text), `AGENTS.md`, `TRANSLATIONS.md` (2026-09-30) and the other
protocol documents (hashes in `docs/PROTOCOLS-READ.md`). Revision at entry: `fdb5c3a`; only
`Mod/About/PublishedFileId.txt` was untracked.

**Verdict: `stage: done` and `workflow_stage: done` unchanged.** Nothing before `done` regressed:
`Tools/Check-Mod.ps1` (exit 0) and `Tools/Check-PickleSteps.ps1` (34 step lines in 9 features, each
resolving to exactly one step; its default Pickle path moved to `1.6\Assemblies`) both pass. `workflow_stage` was missing from the front matter and is now written.

- **0.1.0 pre-published, 2026-10-01.** `Mod/About/PublishedFileId.txt` exists (3811290251). It was
  written 14:38 that day, so the upload held `Mod/` at `720c0de`; `Preview.png` was recomposed
  later (`fdb5c3a`, 20:05) and is not in the item. Committed as `Add published Workshop file ID for
  0.1.0`, with the `## [0.1.0]` CHANGELOG entry. The act of pre-publishing is not a stage: the
  item is private and untested, so `prepublished` is not claimed. The 2026-09-28 paragraph below
  that says 0.1.0 was not pre-published is replaced by this one.
- **`.dds`**: none exists on disk or in git; `*.dds` is now in `.gitignore` as a guard.
- **Evidence**: no `Tests/Pickle/Evidence/` exists (no run ever happened), nothing to delete.
  The rule on what to keep is now written in `TESTING.md`, "Evidence to keep".
- **French review, 2026-10-01: corrections applied, review not validated yet.** Virginie asked: milk and meat wording, `sabot gauche/droit`, beefalo robustness and "about half the size", race name `Blanc Bleu Belge`. `FRENCH_REVIEW.md` regenerated; `translation_fr` stays `partial` until she re-reads.
- **French review validated by Virginie, 2026-10-02** (relayed in chat, recorded here by the session): `Blanc Bleu Belge` consistent as a breed name, `beefalo pygmée` correct, descriptions natural and faithful, no dynamic colon agreement. Revision reviewed: `3eef8da`; French text last changed in `55393db`. `FRENCH_REVIEW.md` regenerated from that clean tree, its header now names the commit. `translation_fr: complete`.
- **Original mod repository**: none found. Steam page 1988048034 links no source, GitHub search
  for the mod name and author returns only this repository, and the 2026-09-12 review found
  nothing. `upstream_mod_remotes: N/A` stands; there is no code to base on and no PR target.
- **New `tested` criteria** (no `@wip`, every conditional scenario run, no manual test left) are
  in `TESTING.md`, "Gate for `tested`". No `@wip` exists. Three features are conditional
  (`02` TextureOwner, `05` original mod, `08` Animal Gear) and need their own pass.
- **Animal integrations decided 2026-10-01 (PUBLISHING.md rule of 2026-09-28/10-01), Virginie agreeing to the scope.** Four mods, read in their installed Workshop folders: **ADS 2** patched (`Patches/ADS2.xml`): vanilla Cow is in ADS_Cat2 and ADS_Cat1 only, Muffalo in all three, so BelgianBlueCow gets Cat1+Cat2 and PygmyBeefalo Cat1+Cat2+Cat3; `loadBefore` ADS 2 added to About.xml. **Dogs mate** patched (`Patches/DogsMate.xml`): BelgianBlueCow into group `Cow`, PygmyBeefalo into group `Bison` (its description makes it a bull x muffalo cross). **Nocturnal Animals**: not applicable, no patch - its `Patches/Core` files name neither Cow nor Muffalo, so both analogues stay diurnal, and so do these animals. **Better Crossbreeding**: not applicable - no vanilla analogue crosses, so a crossbreed would be new design, not porting; revisit on Virginie's call.
  integrations (ADS 2, Nocturnal Animals, Dogs mate, Better Crossbreeding) before `preTest`.
  Listed in `remaining` as `unverified`; it may move `stage` once read against the Defs.
- Missing documents, unchanged: `PUBLICATION.md` (needed from `tested -> prepublished`),
  `LICENSE` (deliberate, `licence: silent`), `BACKLOG.md`, `NOTES.md`, `BUGS.md`.

Older dated audits (2026-09-13, 2026-09-27) moved to `docs/runs/status-journal-2026-09.md` on 2026-10-10.

## Historical status notes

Status card, read by a sweep over every mod rather than by asking each thread one at a time. It
lives at the root, never inside `Mod/`, so Steam never receives it.

This card is in English, like the repository around it: README, changelog, attribution and every
commit message.

The fields above were read off the disk on 2026-09-12 by the sweep, which left two of them
corrupted — `licence` read `licence_ou:` and `licence_at` had swallowed a `vitrine:` key. They are
repaired here, along with the four the sweep could not know:

- **`stage`** — `done`, accepted by the user on 2026-09-13. Implementation, French translation,
  automated checks and showcase are complete. The unplayed manual scenarios remain recorded
  as verification limits, not blockers to this completion decision. Workshop publication has
  not been performed; `done` does not claim runtime validation or publication.
- **`tested_on`** — empty, and that is accurate rather than an omission. Neither animal has ever
  been seen in a running game. No calf spawned, no information card read, no pen filled.
- **`licence`** — `silent`. The original states nothing in any of the four places `ATTRIBUTION.md`
  lists, and it stopped at 1.4 in March 2023. Published on the Workshop's custom for abandoned
  mods: named credit, takedown on request.
- **`remaining`** — manual game scenarios and French display remain unverified. The previous preview defect was fixed on 2026-09-13: the new illustration clearly contrasts a large pale muscular Belgian blue with a small horned shaggy beefalo.

The `remaining` categories: `feature` for something missing from a first release, `defect` for a
known fault left unfixed, `unverified` for what could not be checked.

The `session` field was not touched: it comes from the sweep and names the session group, not this
conversation.

The `licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

`upstream_mod_remotes`, distinct from both `repo` (this mod's own repository name) and `origin`
(this repository's own git remote): the git repository URLs of the *source* mods this port draws
from, one per `- ` list item, `N/A` when none is found. Here, `N/A` — no GitHub link for
TheGoofyOne's Beef Eaters (Workshop 1988048034) anywhere in its installed files or its live
Workshop page, confirmed 2026-09-12 and rechecked 2026-09-28 with a bounded grep over the
installed copy per `SEARCHING.md`, not the full Workshop corpus (one already-identified source
mod, not an unknown-collision search).

## Translation audit — 2026-09-13

Applied `../PUBLISHING.md` and `../TRANSLATIONS.md` to the content at revision
`c1ace096293cb5338fce3ea824afee27a221e0c4`. Reviewed both files under `Mod/Defs/`,
`Mod/Patches/Armor.xml`, both French DefInjected files and the full published file list.
There are no assemblies, UI source, Keyed strings, custom grammar resources, version
folders or LoadFolders. The optional Animal Gear patch is included in this inventory.

| Owned text source | English source fields | French entries |
|---|---:|---:|
| BelgianBlueCow ThingDef: name, description, three named attacks | 5 | 5 |
| BelgianBlueCow PawnKindDef: name, male name, calf and plural | 4 | 4 |
| PygmyBeefalo ThingDef: name, description, five named attacks | 7 | 7 |
| PygmyBeefalo PawnKindDef: name, calf and plural | 3 | 3 |
| Optional Apparel_PygmyBeefaloArmour: name and description | 2 | 2 |
| Total | 21 | 21 |

All owned text uses native translatable Def fields. English is supplied by the original
Def values; a duplicate English language folder is unnecessary. French covers all 21
fields, including nested attack handles and calf labels. Reviewed meaning and terminology;
no empty values, duplicate keys, untranslated placeholders, parameter tokens or rich-text
markup were found. The two horn handles are distinct (`horn-0` and `horn-1`).

The mod references vanilla resources for milk, wool, meat, leather, body parts and attack
capacities; it supplies no replacement text for them and uses no dependency Keyed keys.

### Systematic French review — prepared 2026-09-30, unread

None of the 21 French fields above agrees with a pawn: they are all animal or apparel
names and descriptions, so TRANSLATIONS.md's `{PAWN_gender ? ... : ... : ...}` three-segment
switch and its neutral middle dot do not apply to this mod. Nothing here was reworded for
that rule.

`FRENCH_REVIEW.md` was generated by `Tools/Generate-FrenchReview.ps1` from the shipped
`Mod/Languages/French/DefInjected/{PawnKindDef,ThingDef}/BeefEaters.xml` against
`Mod/Defs/` and `Mod/Patches/Armor.xml` (English is the mod's only source language; no
separate Original text exists — see `ATTRIBUTION.md`). All 21 rows resolved against the
shipped Defs; none is flagged `?`.

**Not yet reviewed by Virginie.** `translation_fr` stays `partial` until she reads
`FRENCH_REVIEW.md` herself and records the review here; no session marks its own French
reviewed.
The armour recipe is generated by the game from the apparel Def and its localized label;
there is no separate mod-owned recipe sentence. About metadata, identifiers, paths and
repository documentation are outside the in-game translation gate.

Validation rerun on 2026-09-13:

- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`: 21 keys,
  zero errors, no unresolved targets reported, exit 0, against installed game types.
- `powershell -NoProfile -ExecutionPolicy Bypass -File Tools/Check-Mod.ps1`: all checks
  passed, exit 0, including all six XML files and the optional patch guard.
- XML inventory: 21 owned source fields matched to 14 ThingDef and 7 PawnKindDef
  French entries; zero duplicate keys or empty values in either translation file.

The three `complete` fields certify the offline translation gate only. No in-game language
test was performed. Scenario P and `remaining` track both languages, generated recipe text
and Animal Gear present/absent cases. The existing user-accepted `stage: done` is preserved.
After text, Def, patch or language-resource changes, reset the affected translation fields
to `unchecked` and repeat this audit before claiming the gate is complete again.

## Verification on 2026-09-12

- **French translation:** added 21 DefInjected fields in
  `Mod/Languages/French/DefInjected/ThingDef/BeefEaters.xml` and
  `Mod/Languages/French/DefInjected/PawnKindDef/BeefEaters.xml`: animal descriptions and names,
  bull/calf labels and plurals, named attacks, and optional armour. The external
  `Check-DefInjected.ps1 -TransMod ./Mod` checked 21 keys with zero errors, using the installed
  game types. `Tools/Check-Mod.ps1` also passed, including all six XML files. In-game language
  switching and armour-present/absent cases remain unplayed; scenario P now covers them.
- **About links:** the description now has an explicit links section for GitHub source, issues,
  changelog, attribution/licence review and the original Workshop item. No port Workshop URL
  was invented: this port has not been published there.

- **Title:** `Beef Eaters Renew (unofficial)` already identifies the continuation and its
  unofficial status. Keep the existing suffix; no additional suffix is needed.
- **Manual functional tests:** sixteen scenarios, A-P, exist in `TESTING.md`, with steps and
  expected outcomes covering loading, wildness, production, pens, caravans, training, spawning,
  trade, graphics, breeding, Animal Gear, conflicts and saves. They remain unplayed and
  `tested_on` stays empty. The user subsequently accepted `done` on 2026-09-13.
  Scenario P now uses the full suffixed title.
- **Automated tests:** `powershell -NoProfile -ExecutionPolicy Bypass -File Tools/Check-Mod.ps1`
  passed with exit code 0. It checks XML parsing, the wildness migration, local texture paths,
  package metadata, trade tags and attribution consistency. Added checks protect the title,
  GitHub links and the Animal Gear patch guard. Malformed XML now stops the checker before
  dependent checks. Negative controls on a temporary copy detected all four introduced
  metadata/guard failures and returned one failure for malformed XML.
- **XML field validation:** `pwsh -NoProfile -File ../scripts/Check-XmlFields.ps1 -ModPath ./Mod`
  passed with exit code 0: four files checked, no unknown 1.6 fields. This external checker
  requires the installed game assemblies. Neither checker proves runtime behaviour or Animal
  Gear compatibility; scenario M remains outstanding.
- **GitHub:** the description and `<url>` in `Mod/About/About.xml` both contain
  `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`, matching the local Git remote.
- **Licence:** `silent`, the repository's classification for an upstream source with no stated
  licence and recorded as inactive. The follow-up below rechecks the evidence and its limits.
  No MIT, GPL or other explicit licence is present.
  The port's documented terms preserve credit, promise removal on the original author's
  request, and allow a continuation if the maintainer does not respond within a reasonable
  time. These terms do not establish an explicit upstream licence.

## Licence follow-up on 2026-09-12

`silent` is confirmed under this repository's classification after direct browser verification:

- The installed original Workshop item `1988048034` was inspected recursively. It contains
  no licence or copying file. Its XML and text files contain no licence, permission or
  redistribution restriction found by the search. Its `About.xml` has `<url>about:blank</url>`.
- The [original Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034)
  was read live in the Codex browser, including all three pages containing its 29 comments.
  It lists support through 1.4 and a last update of 11 March 2023.
  Neither its description nor any of its comments states reuse terms. Author comments concern
  updates and discussion of the animals;
  a reader's August 2025 proposal to merge the mod is not permission from the author.
- No upstream GitHub repository or explicit Beef Eaters reuse policy was found by targeted
  searches. This is a search result, not proof that none exists elsewhere.
- All nine [changelog entries](https://steamcommunity.com/sharedfiles/filedetails/changelog/1988048034)
  were read live: only automatic update notices, with no licence or restriction.
- The public [author profile](https://steamcommunity.com/profiles/76561197964775630)
  shows no general mod reuse policy or linked source repository.
- Browser access succeeded after the earlier web and shell requests failed. The earlier
  cached-page and unread-comments limitations are resolved. The installed copy was not refreshed.

Here `silent` describes this mod's apparent inactivity and lack of stated terms; it does not
establish that the author is inactive everywhere, nor supply an explicit redistribution licence.

## How the showcase was built

Illustration replaced and overlay recomposed on 2026-09-13 according to `../STYLE_RIMWORLD.md`.

- **Source:** new unlettered illustration generated with built-in ImageGen, saved in `Art/Preview.png` and visually checked before composition. The pale short-coated muscular cow and much smaller horned shaggy beefalo resolve the old subject mismatch. The previous source was archived before generation at `Art/Preview-archive-2026-09-12.png`; `Art/Preview-source.png` also remains untouched. The exact generation prompt is saved in `Art/PROMPT_Preview.md`.
- **Composition:** `Art/preview.html`, at 896 x 504. Name and summary preserved. The tag is
  separate from the title. Strong title words and summary share the same primary ink. Renew
  remains in the title at 65% (29.9 px), weight 600, in secondary ink. Placement, typography,
  rule and triangular version badge follow the guide. Version is read from the delivered
  `Mod/About/About.xml`, choosing the highest stable declared version (currently 1.6).
- **Palette:** `Art/preview-palette.json` is the sole colour reference, loaded by the HTML.
  The veil comes from the broad brown plank floor. The secondary ink is a lightened, coloured
  ochre from the dominant wood/straw family, not an average of the pixels. The vivid accent
  comes from the blue-green water visible in the trough, lightened and saturated into turquoise.
  This cool family clearly separates the rule and badge from the warm ochre secondary ink and
  dominant wooden scene. The darker veil is held across the text area to protect contrast.
- **Rendering:** `Art/render-preview.cjs` serves the local composition, waits for
  `document.fonts.ready` and image decoding, then captures at device scale 1. Run with Node.js,
  Playwright and sharp available through NODE_PATH. Actual Chrome platform fonts were verified:
  Segoe UI Semibold for the title, Segoe UI regular for tag/summary, Segoe UI Bold for the badge.
  No fallback font was used.
- **QA:** `Art/preview-qa.json` records font evidence, bounds, dimensions, size and contrast.
  `Art/preview-background.png` is the rendered background with lettering hidden. Minimum
  contrasts across the entire text rectangles, including corners and all interior pixels:
  primary title ink 8.76:1, Renew 6.78:1, summary 7.19:1, tag 5.87:1.
  Badge digits on the opaque accent: 8.88:1.
  Shadows were not credited in these measurements.
- **Visual checks:** inspected `Mod/About/Preview.png` at 896 x 504 and
  `Art/preview-268.png` at 268 px wide. No clipped text or overlap; title and version identifiable,
  reduced title suffix readable, rule visible, cool accent distinct from the warm secondary ink.
  Output: 448,124 bytes, below 900 KB. No publication performed.

The icon is unchanged: `Mod/About/ModIcon.png`, 128 x 128.
## What was fixed on 2026-09-12, and what it cost

Three faults, none of them introduced by the port, all found while writing `TESTING.md`.

**The pygmy beefalo was described as the opposite of what it is.** The README and the `About.xml`
called it a pen animal rather than a caravan animal. It has no `roamMtbDays`, so it is not a roamer
and needs no pen, and it carries `packAnimal`, so it hauls in a caravan like the muffalo it comes
from. The same sentence compared it to a muffalo of body size 2.7, where Core says 2.4. **The
wording was corrected, not the def** — a documentation fix changes no balance, where making the
files match the sentence would have been a design change on someone else's animal.

**The pygmy beefalo could not be traded at all.** Its only tag was `StandardAnimal`, which no trader
def in Core or in any expansion reads and which nothing in the game data declares. `AnimalFarm` was
added beside it, the original's dead tag left in place. **This one is design rather than porting**,
the only such change in the mod, and `ATTRIBUTION.md` says so in those words.

**The original could be enabled alongside this port.** Both declare `BelgianBlueCow` and
`PygmyBeefalo`, so RimWorld loaded both and the last one won without a word in the log.
`About.xml` now declares `incompatibleWith` naming `TheGoofyOne.BeefEaters`, whose packageId was
read off the copy subscribed on this machine rather than guessed.

**The Animal Gear patch still cannot be tested here.** It is kept exactly as TheGoofyOne wrote it,
behind his `PatchOperationFindMod`, and Animal Gear is not installed. Inert and silent in its
absence, unknown in its presence.


## Preview source migration — 2026-10-02

Copy, typography, layout and palette are consolidated in `Art/Preview.config.json`. The canonical inputs are `Art/Preview-source.png`, `Art/echo.png` and `Art/ModIcon-source.png`; the shared renderer writes temporary diagnostics under ignored `Art/.render/`. Existing distributed Preview, gallery and ICO outputs were preserved because they were present and coherent; no render was run for this migration. Superseded JSON files and generated QA intermediates were removed. Nothing published.

## playTests[1.0.0] closed, shootGallery[1.0.0] entered, 2026-10-10

Protocol update read first (AUDIT.md sentence on the `protocols_read_sha` ERROR, AGENTS.md markers and "while waiting", PUBLISHING.md and AUDIT.md 11.b/13.b, `USE_THIS_INSTEAD.md`), then `Mark-ProtocolsRead.ps1` (`a959f765`).

- Ticket 1de2 (`11-def-values`): 9 of 9 passed, exitReason passed.
- Every red of 2026-10-02 replayed green alone on a build that holds the fix: min-en-rerun 6/6, min-fr-rerun 6/6, textures-rerun 3/3, original-rerun 1/1, animals-rerun 2/2; Animal Gear present passed (ad6a). Two passes without optional mods, four with. No `@wip`. A-P all covered or not applicable (`TESTING.md`).
- Code review (8.m), `code_review_sha` = `bedb34a`, range first commit to HEAD, read in full: `Mod/Defs` (one added trade tag), both patches (guards hold, predicates repeat `@Name=`), `About.xml`, French DefInjected (keys match the defs), `Tests/Pickle/Source/TradeSteps.cs` (test-side only, never shipped). No defect found.
- Open for later states: `10-gallery-animals` never played (ticket 743e was `invalid`), gallery images, echo review, `PUBLICATION.md` absent, and at publish a `drafted` row in `USE_THIS_INSTEAD.md` (this is a Renew mod; source 1988048034, to be read from the Workshop page).
- Prune-Evidence dry run proposes deleting `20261002-min-en-rerun` (1.6 MB); not applied, the list was not trusted blindly.
