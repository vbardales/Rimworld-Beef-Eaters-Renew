# Beef Eaters Renew: publication and testing history moved out of PUBLICATION.md and TESTING.md (2026-11-18, cleanUp 14.c)

Text of what was already sent or done. Older text also stays in git (see the commit of 2026-11-18 that removes it).

## PUBLICATION.md, status and blockers before 1.0.0 (done)


**Status: drafted, release text written 2026-11-17; the owner's review (11.j) is still to do.** The Workshop item has existed since 2026-10-01 (0.1.0 prepublication,
`Mod/About/PublishedFileId.txt` = 3811290251, Workshop item private, repository public). Nothing of the Workshop page has been posted
yet (the comments of the table below are tracked there). The workflow stage is `writeReleaseDocs[1.0.0]` (see `STATUS.md`).

## What blocks the publication

Only what is specific to this mod; the gates themselves are in `AUDIT.md`.

- The owner's review of this file and `CHANGELOG.md` (`publication_changelog_review_sha`, last reviewed at 0.1.x, due again for 1.0.x before publish) is not done. The gallery (images 0 to 6) and the Preview and echo are validated (2026-11-17).
- The rollback target cannot exist before the first publish (see "Fail fast").
- The owner's manual validations (see below).

## PUBLICATION.md, manual validations of the owner (1, 3, 4, 5 done 2026-11-18: subscribe test, gallery, description by hand, public; 2 is engine behaviour, left as is)

## Manual validations of the owner

`AUDIT.md` lists them among the things a `publish` does not skip without saying which. A proposal
drawn from `TEST_SCENARIOS.md`; it is hers to change.

| # | What to look at | Why a test cannot |
|---|---|---|
| 1 | Subscribe to the item once it exists, start a game with the installed copy, tame a Belgian Blue cow: the information card reads Wildness 5 % | The installed copy is what players get; the suite plays the working tree |
| 2 | A real save with either animal, then the mod removed: the animal is destroyed | A changed mod list is the game's handling |
| 3 | The gallery: which captures, in which order | A composition is a choice |
| 4 | The description pasted on the page, read once more | The page is edited by hand after creation |
| 5 | Then, and only then, the visibility, the comments subscription and "Watch all activity" (`PUBLISHING.md`) | Steam, by hand, by the owner |


## PUBLICATION.md, Steam change note 1.0.0 (sent 2026-11-18, run 44208035673, tag v1.0.0)

## Steam change notes

Written at upload time. Unlike the description, they go out again on every update. The version stands
alone on the first line, in BBCode, or the CI refuses the note.

### 1.0.0

```
[b]1.0.0[/b]

First release. Port of TheGoofyOne's Beef Eaters to the current RimWorld version.

[list]
[*]Wildness is a stat now, so both animals read 5% and 50% instead of defaulting to -1.
[*]The pygmy beefalo can be bought and sold: it carries the AnimalFarm trade tag.
[*]Optional patches for A Dog Said... Animal Prosthetics 2 and Dogs mate (Continued).
[*]The original mod is declared incompatible.
[*]English and French.
[/list]

No balance value was changed.

[url=https://github.com/vbardales/Rimworld-Beef-Eaters-Renew/blob/main/CHANGELOG.md]Full changelog[/url]
```


## PUBLICATION.md, collection and Use This Instead (done 2026-11-18, register USE_THIS_INSTEAD.md row posted)

## Collection "RimWorld through Nelim's eyes"

For the owner, at 13.c (collection https://steamcommunity.com/sharedfiles/filedetails/?id=3815982565): add this item, https://steamcommunity.com/sharedfiles/filedetails/?id=3811290251 (`Beef Eaters Renew (unofficial)`). Dependencies that are Nelim's mods: none (this mod has no dependency; its optional patches target A Dog Said... Animal Prosthetics 2 and Dogs mate (Continued), which are not Nelim's). DLC required: none. Workshop tags sent by the upload: Mod, 1.6, 1.7.

## Use This Instead

Renew mod: Mlie's Use This Instead page must be notified once, after the item is public (`USE_THIS_INSTEAD.md`).
The row goes in the register as `drafted` at `publish`, then `posted` once the owner has pasted this on
[the page](https://steamcommunity.com/sharedfiles/filedetails/?id=3396308787). Old name (`Beef Eaters`) and Workshop id read through the Steam API (GetPublishedFileDetails) on 2026-10-13; the author name `TheGoofyOne` and the packageId come from `ATTRIBUTION.md` and the About.xml `incompatibleWith`. `oldVersions` is 1.4 (the page: Version 1.1, updated to 1.4).

```
Hi Mlie! A replacement for [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034]Beef Eaters[/url] (TheGoofyOne, packageId TheGoofyOne.BeefEaters, RimWorld 1.4): [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3811290251]Beef Eaters Renew (unofficial)[/url] by Nelim (packageId nelim.beefeaters, RimWorld 1.6 and 1.7). Declared incompatible with the original. Thanks for the list!
```


## TESTING.md, Pickle scope of 2026-09-27, evidence plan, gate for tested of 2026-09-29 (all done: suite played, gate passed, 2026-11-18 non-regression green 29/29)

## Pickle scope — written 2026-09-27

**Gap found applying `AUDIT.md`, closed same day after owner's call.** The
`preTest -> done` transition requires Gherkin scenarios, scoped to what only running
game shows. A through P had none. Reading `PickleTools/docs/steps.md` and Pickle's
built-in catalogue changed first proposed count (B, I, M, N — four) after checking each
need against what exists:

- **B** (wildness) — `def raw stat` / `def stat`, at main menu, no save. Written.
- **K** (textures) — `TextureOwner`'s "answered by the mod" step, missed by first pass:
  cheap, no save, proves file actually read, not merely present. Written.
- **M** (Animal Gear) — only absent half written (no def, no log, Animal Gear not staged
  here). Present half needs that mod's packageId/Workshop id, not yet looked up.
- **N** (collision with original) — `mod ... is loaded` + `mod ... loads before ...` + repaired wildness still read (run 3cad found no duplicate warning logged; was
  `a warning matching`), staged against original itself (Workshop 1988048034, packageId
  read from installed copy), not assumed. Written.
- **O** (save round trip) — not in first proposal, added on inspection: `the save round trips`
  is built-in step, concern real (stat survives save, not just load).
  Narrowed to one process; two separate mod installs in one save not Pickle scenario. Written.
- **P** (English/French display) — added same way: DefInjected overwrites def field at
  load, so reading after load proves display, not just injection path resolving.
  Two feature files, one expected text per language, run under `-Language English` /
  `-Language French`. Written.
- **I** (pygmy beefalo trade tag) — only one no built-in or shared step covered; closed
  with local step, not forced onto wrong one. `Tests/Pickle/Source/TradeSteps.cs` calls
  `RimWorld.TraderKindDef.WillTrade(ThingDef)` directly — method trade window calls,
  found by decompiling installed `Assembly-CSharp.dll` — so no save, no forced trader,
  no RNG: static def data, decided once loading ends. Written.
- **A, C, D, E, F (partly), G, H (partly), J, L** — left as prose. Each either proven
  offline by `Tools/Check-Mod.ps1`, or vanilla engine reacting to value mod merely
  supplies (`CompMilkable`, Biotech's gestation math, `trainability`), out of scope per
  authoring guide's rule. `H`'s procedural multi-day biome spawn and `L`'s full breeding
  cycle stay out for same reason `NewColony` in `PickleTools` optional and costly: real
  in-game time nothing compresses, for what declared-value check already covers.

See `Tests/Pickle/README.md` for eight feature files, passes, full reasoning table.
None executed: `preTest -> done` requires scenarios exist and scoped, not run —
`done -> tested` is where execution and captures required. `STATUS.md` tracks
unexecuted state and remainder (Animal Gear present half only, now I written).

## Evidence to keep, once a suite exists

Written before any suite, so suite author need not guess. Per `AGENTS.md` and
`AUDIT.md`: `Tests/Pickle/Evidence/` is disk-only, gitignored, never committed — run
captures and `Player.log` go there, not Git. Repo gets short one-line text summary per
run under `docs/runs/`, named like `SkillIcons`
(`docs/runs/<date>-<short-sha>-summary.md`), cited from `STATUS.md`. Per mod and
scenario, keep only latest report for revision currently in repo, plus any older report
that is sole proof of check latest run didn't repeat; delete rest once newer report
supersedes. Report on superseded build proves nothing about shipping one.

### What to keep from a run

Per run, pass, scenario. Keep on disk, in `Tests/Pickle/Evidence/<run>/`, only:
`summary.md`/`junit.xml` (carries `exitReason`, discovered vs played counts, `setName`),
`@review` captures of scenarios having them, and `Player.log` only when scenario failed
or logged warning scenario asserts. Delete `report.html`, `messages.ndjson`, captures of
scenarios without `@review`, every superseded-revision report once new one in place.
Never delete report `STATUS.md` still cites: repoint first. In git: one line per run in
`docs/runs/history.md`, nothing else.

## Gate for `tested` (AUDIT.md text of 2026-09-29)

`done -> tested` needs all, none met yet:

1. No scenario tagged `@wip`. None today; scenario set aside gets repaired and replayed
   or deleted with reason, never left tagged.
2. Every conditional scenario run on map mounting its mod, report read (suite name and
   `setName` checked, report folder shared machine-wide):
   `02-textures-load` (`@requires:nelim.pickletools.textureowner`, map `wsl-deps.textures.map`),
   `05-collision-with-original` (`@requires:TheGoofyOne.BeefEaters`, map
   `wsl-deps.incompat-original.map`), `08-animal-gear-present` (`@requires:Dylan.AnimalGear`, map
   `wsl-deps.animalgear.map`). Scenario skipped for missing condition has not passed.
3. No manual test left to tick. Each of sixteen prose scenarios A-P covered by green
   Pickle scenario (table in `Tests/Pickle/README.md` says which) or listed here not
   applicable with reason. Still prose-only today: see `STATUS.md` `remaining`.
   `@review` captures still viewed, but that is reading image of state scenario already
   proved, not another manual test.
4. Minimal pass and every `@requires` pass green, `exitReason: passed` read before
   counts; English and French each own pass (`-Language`).

