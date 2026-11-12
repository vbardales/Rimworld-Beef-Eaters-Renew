# STATUS.md journal moved out, 2026-10-10

Dated audits moved verbatim from STATUS.md (2026-09-27, editorial fixes and ordered workflow audit of 2026-09-13). The old text also stays in git.

## AUDIT.md re-applied — 2026-09-27

Re-read `AUDIT.md` in full against the current text (it has grown since the 2026-09-13 audits
below) and re-checked this mod's state on disk, not just the stage this file declared.

**Verdict: `done` unchanged, one real gap surfaced and mostly closed.** `preTest -> done` requires
Gherkin scenarios scoped to what only a running game can show, with their scope justified.
`TESTING.md`'s sixteen scenarios (A-P) were prose only, and none had ever been translated to
Pickle, nor had any note explained why prose alone was enough. That gap was not caught by either
2026-09-13 audit, whose `done` row only checked the automated/XML side.

Closed the same day, after relaying the scope through TicketDispatcher for the owner's call: six
Gherkin features now exist under `Tests/Pickle/` (wildness B, textures K, save round trip O,
Animal Gear absent M, collision with the original N, English/French labels P), written only after
actually reading `PickleTools/docs/steps.md`, Pickle's own built-in catalogue and the authoring
guide rather than assuming a step existed. The first proposal (B, I, N) undercounted what a real
running-game criterion covers (K, O, P belonged too) and overcounted what exists: **scenario I,
the pygmy beefalo's trade tag reaching a trader, has no matching step anywhere** and stays prose,
a genuine gap rather than a scenario forced onto the wrong tool. None of the six has been
executed — `preTest -> done` asks that they exist and be scoped, not that they have run;
execution and reviewed captures belong to `done -> tested`. Not retrograding `stage` for the
remaining scenario I gap: `done`'s substance — port correctness, translations, settings
inapplicability — is unaffected by this one criterion, and AUDIT.md gives the owner, not the
audit, the override call. See `Tests/Pickle/README.md` for the full reasoning and pass matrix.

**Housekeeping done the same day, none of it touching `stage`:**
- No `.dds` file exists anywhere in this repository; nothing to move or gitignore.
- `Tests/Pickle/Evidence/` is gitignored ahead of any run existing, per `TESTING.md`'s evidence
  section and `Tests/Pickle/README.md`.
- The original mod (`TheGoofyOne.BeefEaters`) has no linked source repository anywhere the
  2026-09-12 licence review or this pass could find; nothing to branch from or send a PR to. Its
  Workshop id (1988048034) is recorded in `Tests/Pickle/wsl-ids.map` for the incompatibility pass.
- `docs/PROTOCOLS-READ.md` records which of AUDIT.md's referenced documents this session read,
  at what depth, including the Pickle docs read once a suite became worth writing.
- `packageId` dropped its `renew` suffix: `nelim.beefeatersrenew` -> `nelim.beefeaters`, at the
  owner's request, updated everywhere it appeared (`About.xml`, this file, `TESTING.md`,
  `CLAUDE.md`, `Tools/Check-Mod.ps1`) before any Workshop item is confirmed to exist.
- **Replaced 2026-10-01 (kept for history): at 2026-09-28 `0.1.0` had not been pre-published.** The Steam Workshop junction
  (`RimWorld/Mods/BeefEatersRenew` -> this repo's `Mod/`) exists, but per `PUBLISHING.md`
  ("Juste après") the upload itself writes `About/PublishedFileId.txt` straight into that folder
  — and a junction to this repository's `Mod/` means it would have landed here too. Nothing did,
  on two separate checks a day apart. Absence of that file **is** absence of the item, by the
  owner's own call once asked. No `## [0.1.0]` entry is added to `CHANGELOG.md`; `1.0.0` stays the
  only version, `unreleased`.
- **Closed 2026-09-28: scenario I now has a Pickle scenario.** `Tests/Pickle/Source/TradeSteps.cs`
  is a small local step, `dotnet build`-verified, calling `RimWorld.TraderKindDef.WillTrade`
  directly rather than forcing a trader and rolling RNG. Found by decompiling the installed
  `Assembly-CSharp.dll` with `ilspycmd` before writing it, once asked to write the missing steps
  rather than leave the gap documented. See `Tests/Pickle/README.md`, "The local step, and why it
  is not in PickleTools." Seven features now exist under `Tests/Pickle/`, none executed.

> **Art/ restructured 2026-10-02**, see "Preview source migration" at the end of this file: the local Preview chain named in the dated sections below (`preview.html`, `render-preview.cjs`, `compose-preview.cjs`, `preview-palette.json`, `preview-qa.json`, `preview-background.png`, `Preview-layout.html`, `archive-before-editorial-fix-2026-09-13/`, `Preview-archive-2026-09-12.png`, `PROMPT_Preview.md`) no longer exists; those sections stay as history.

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

