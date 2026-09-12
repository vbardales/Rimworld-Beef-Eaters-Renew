---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
mod:          Beef Eaters Renew (unofficial)
packageId:    nelim.beefeatersrenew
repo:         Rimworld-Beef-Eaters-Renew
visibility:   public
detached:     yes
stage:        done
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
dependencies: none
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: the sixteen scenarios of TESTING.md, none played - no animal spawned, no pen built, no milk taken
  - unverified: the Animal Gear patch, inert without that mod and never exercised (scenario M)
  - unverified: AnimalFarm added to the pygmy beefalo, so it can be traded at all; no trader has been forced yet (scenario I)
  - unverified: incompatibleWith TheGoofyOne.BeefEaters, never seen firing in the mod list (scenario N)
  - unverified: English and French in-game display for all 21 owned text fields, generated recipe text and optional armour with Animal Gear enabled/disabled (scenario P)
session:      local_c1f0d325-e5cd-4552-abce-8d77af2f363d
updated:      2026-09-13, editorial audit findings fixed and affected checks passed; runtime unverified
---

# Beef Eaters Renew — status

## Editorial fixes after audit — 2026-09-13

The user requested correction of the audit findings. All editorial findings listed in the
audit below are now resolved in the working tree based on
`c1ace096293cb5338fce3ea824afee27a221e0c4`:

- Replaced the unsupported "quarter" comparison in About.xml and the preview HTML with
  a qualitative smaller muffalo crossbreed description. Re-rendered the delivered Preview.png
  using the existing HTML compositor and original illustration; no illustration was generated.
- Added the exact Steam-formatted Source code on GitHub link at the end of About's description.
- Removed the changelog's obsolete image-creation todo, corrected the texture count to twenty
  in TESTING.md and the checker comment, and corrected TESTING's load-order wording to five
  optional expansions rather than six required expansions.

Validation: `pwsh -NoProfile -File Tools/Check-Mod.ps1` passed (exit 0), including all six XML
files. Direct XML assertions confirmed the final source link and removal of the old size
claim. `git diff --check` passed. `node Art/render-preview.cjs` passed using the installed
runtime packages via NODE_PATH. New Art/preview-qa.json records Segoe UI without fallback,
896 x 504, 448,366 bytes and minimum contrast 5.87:1 (summary 7.19:1). The delivered image
and 268-pixel thumbnail were directly inspected: readable title/version, no clipping or
overlap, and distinct turquoise accent/ochre secondary ink.

Previous rendered preview, thumbnail, background and QA JSON are preserved in
`Art/archive-before-editorial-fix-2026-09-13/`. The original illustration and icon are unchanged.
New delivered Preview SHA-256:
`13125C984F428DDFBF4D9FE98DB50750277D57D5ED008792AFAB017AA2FECD70`.
Historical audit measurements and findings below describe the pre-fix revision.

`stage: done` remains justified. Settings, translations and dependency validations are
unaffected: no Def, patch, language resource or gameplay value changed. About metadata is
outside the in-game translation gate. All previously pending gameplay scenarios remain
unverified. Existing STATUS.md/TESTING.md edits were preserved; no commit or publication.

## Ordered workflow audit — 2026-09-13

**Verdict: `done` -> `done`.** This audit applies the user's nine-transition workflow,
including its explicit precedence over PUBLISHING.md, STYLE_RIMWORLD.md, MOD_SETTINGS.md
and TRANSLATIONS.md. Stage values here are literal workflow names, not numeric codes:
`dansMonoRepo -> horsMonoRepo -> ModIcon générée -> Preview générée -> preOptions ->
options -> l10n -> preTest -> done -> tested`. `done` means ready for final in-game
validation; it does not certify gameplay. The historical notes below are preserved.

Audited checkout: `C:/Users/nelim/Documents/rimworld/BeefEatersRenew`, its own `.git`;
delivered content: its `Mod/` directory. Revision:
`c1ace096293cb5338fce3ea824afee27a221e0c4`. At entry only STATUS.md was locally modified
(including the change from committed `preTest` to working-tree `done`). During the audit,
another writer updated STATUS.md's translation review and TESTING.md scenario P. Those
changes were read and preserved. The delivered `Mod/` files have no local diff against
the audited commit. This audit edits only STATUS.md; no implementation, image, commit,
publication or historical test result was created or replaced.

| Transition reached | Result | Evidence and scope |
|---|---|---|
| horsMonoRepo | validated | Git root is this standalone folder. Live `gh repo view vbardales/Rimworld-Beef-Eaters-Renew --json name,visibility,url,defaultBranchRef` returned PUBLIC, main and the configured URL. `git ls-remote origin HEAD` returned the audited SHA, establishing a pushed commit. STATUS, README, ATTRIBUTION and CHANGELOG exist in English; both attribution copies match. |
| ModIcon générée | validated; build not applicable | XML/content-only distribution, no C# project or assembly to compile. Direct inspection of the PNG: outlined orange winking mascot, ponytail, meat motif, dark background, no lettering. Measured 128 x 128, PNG, 21,228 bytes. |
| Preview générée | validated | Directly inspected delivered 896 x 504 PNG and the 268-pixel QA thumbnail: large pale muscular cow and smaller horned shaggy beefalo, high oblique view, regular plank floor, restrained warm palette, no concrete camera defect. 448,124 bytes, below 1 MB. No historical generation report or comparison screenshot is required to establish these observations. |
| preOptions | validated | English description; Renew remains a reduced secondary-colour suffix and (unofficial) is a separate tag. No linking word in the title requires treatment. The turquoise rule/badge visibly separates from the ochre secondary ink. Palette JSON and composition HTML agree; version badge matches declared 1.6. |
| options | not applicable justified; gate passed | See Settings audit below. The user's clarification permits the source-based no-settings decision without gameplay. |
| l10n | validated | All 21 owned fields inventoried and covered by English source values and French injections; checker passed. Generated recipe strings use native translated templates, also checked below. |
| preTest | validated | References and abstract parents resolve against Core alone; seven XML classes resolve. No mandatory third-party dependency or DLC is used. Listed DLC loadAfter entries are ordering hints, not requirements. Animal Gear is optional behind the sole FindMod guard, with no absent-mod branch. No LoadFolders or version-specific folders. Original packageId confirmed from installed upstream About.xml. |
| done | validated | TESTING.md A-P supplies actions and expected outcomes, with baseline/load-order/dev-mode preconditions and separate optional-mod/save cases. Applicable automated and XML checks executed successfully on this delivered revision. |
| tested | unverified | No scenario was executed in a running game by this audit. No attributable gameplay log, EN/FR interface result, new-game or existing-save result is available. Animal Gear present/absent runtime behaviour remains unverified, not a confirmed defect. |

### Settings audit

Inventory reviewed: two animal ThingDefs and PawnKindDefs, their milk/wool comps, race
statistics, training, roaming, spawning, trade tags, and the conditional armour recipe.
These are fixed species/content definitions, not an existing user configuration contract.
The port preserves species balance; no documented player setting requires XML editing.
Adding sliders for every balance constant would introduce a new feature without a stated
need. Armour availability follows installed Animal Gear automatically. There is no custom
settings/persistence code, Mod subclass, MainButtonDef, settings page or shortcut anywhere
in the distributed files. Thus `settings_audit: not_applicable` is justified by the content
inventory, not merely by the absence of a DLL. Defaults/input/persistence/reset and shortcut
tests are not applicable. No RIMMSQOL or other customization integration is claimed tested.

### Checks executed and evidence limits

Installed reference game: `1.6.4871 rev590` from RimWorld/Version.txt. Commands were run
from this checkout with PowerShell 7 (`pwsh -NoProfile -File`):

- `Tools/Check-Mod.ps1`: passed all five groups, including six XML parses, Wildness values,
  textures, metadata, trade tags, attribution equality and optional patch structure.
- `../scripts/Check-XmlFields.ps1 -ModPath ./Mod`: four files checked, no unknown fields.
- `../scripts/Check-DefInjected.ps1 -TransMod ./Mod`: 21 keys, zero errors and no unresolved
  targets reported. Its offline patch processing is not a running-game integration test.
- `../scripts/Check-DefRefs.ps1 -ModPath ./Mod -GameData 'C:/Program Files (x86)/Steam/steamapps/common/RimWorld/Data/Core'`:
  three ThingDefs, no unresolved or wrongly typed references, all parents resolved.
- `../scripts/Check-XmlClasses.ps1 -ModPath ./Mod -TypeLists ../rw16_types.txt`:
  all seven referenced classes resolved. The first invocation omitted mandatory TypeLists
  and did not run; the corrected invocation above passed.
- Read the installed assembly's `RimWorld.RecipeDefGenerator` using ilspycmd with
  `DOTNET_ROLL_FORWARD=Major` (its initial .NET 6 launch failed; .NET 8 roll-forward worked).
  Armour recipe label, description and work text use RecipeMake, RecipeMakeDescription and
  RecipeMakeJobString. Verified their English XML and French archive entries: all three
  contain matching `{0}` parameters and real translations. No redundant mod recipe keys
  are needed. No mod-owned formatting parameters, duplicate/empty entries or raw keys found.
- System.Drawing decoded both delivered images and measured their PNG format/dimensions
  and byte sizes. Visual review covered the actual delivered images; existing palette,
  HTML and QA JSON were inspected without rerendering or overwriting historical artefacts.
  Historical numerical contrasts/font measurements were not newly measured by this audit.

Initial sandbox-only GitHub access failed; authorized read-only access then succeeded.
Licence classification remains `silent` under the project's policy, based on the detailed
2026-09-12 upstream review retained below and the installed original inspected again here
(no LICENSE/COPYING, support through 1.4, matching original packageId). This audit does not
claim a fresh review of every Steam comment or infer upstream permission. No new third-party
licence should be invented; the lack of a LICENSE file is justified for this unlicensed
third-party content. The public/unofficial notices match the documented project decision.

### Remaining mandatory validation and separate editorial observations

For `done -> tested`, execute the relevant A-P scenarios in RimWorld 1.6, record actual
results and inspect logs, including English/French text, a new colony and an existing save,
and Animal Gear enabled/disabled for the shipped integration. Settings interaction and
persistence are not applicable; verify the expected absence of an empty settings entry.
Record the exact game/integration versions and revision, then rerun affected regressions
after any corrections. No game session or Animal Gear test environment was exercised here.

Non-blocking editorial findings, separate from missing mandatory gameplay checks:

- About's introductory text and the preview say "a quarter" of a muffalo's size, whereas
  the detailed description and Def body sizes are 1.0 versus 2.4 (about 42%). The numeric
  shorthand is inconsistent if intended as body size. Prefer a qualitative smaller-animal
  description when those materials are next revised; this is not a visual camera defect.
- The GitHub source link exists, but About's description does not end with the exact Steam
  `[url=...]Source code on GitHub[/url]` form prescribed for publication. Align it before
  publication; this does not invalidate the requested development/test transitions.
- CHANGELOG's release todo still asks to add images already delivered, and TESTING's
  opening texture count says nineteen although twenty PNG textures are shipped. These
  stale counts do not indicate missing artefacts or failed tests.

Image SHA-256 anchors:
ModIcon `6BE5801B0B5DD8554CECC37F0FB722AF43B80E984096FC59A96D19E2672F4EAE`;
Preview `6C03BF042A1F9EC60EF187DE9834CE151B8A44B9ACD79717D98AC46640CDDF94`.

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
