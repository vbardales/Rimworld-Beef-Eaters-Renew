# In-game scenarios, run by Pickle

Played inside running RimWorld by [Pickle](https://github.com/RimWorks/Rimworld-Pickle)
(`rimworks.pickle`, Workshop 3791648678). `Mod/` = companion mod **Beef Eaters Renew - Pickle
tests**, never published, holds feature files. All built-in Pickle steps except texture pass, which stages Nelim's Pickle Tools' `TextureOwner` for that pass only. No OS input clicks.

Written 2026-09-27, applying `AUDIT.md`'s `preTest -> done` Gherkin criterion after owner confirmed scope (relayed via TicketDispatcher): script only what only running game proves and what concerns a decision this port made. Not what offline checker already confirms, not vanilla engine's reaction to value mod merely declares (see `Authoring/README.md`, "do not duplicate an offline assertion... test the mod's declaration offline and its own behavior in the relevant pass").

| Feature | Pass | Checks |
| --- | --- | --- |
| `01-wildness-defs` | minimal | `<Wildness>` under `statBases` survives game's own load, computed and raw, both animals. This is the fault port exists to fix, and static XML parsing alone can't rule it out (patches, inheritance) |
| `02-textures-load` | `wsl-deps.textures.map` | Each of three own textures (bull, cow, beefalo) answered by this mod's own packageId, not shadowed |
| `03-save-roundtrip` | minimal | Spawned animal of each kind + its wildness stat survive real save/load round trip |
| `04-animal-gear-absent` | minimal | Animal Gear not loaded: guarded armour def doesn't exist, nothing logged about it |
| `05-collision-with-original` | `wsl-deps.incompat-original.map` | TheGoofyOne's original also loaded: RimWorld's own "Adding duplicate" warning still names both defNames. `@requires:TheGoofyOne.BeefEaters` skips it in all other passes |
| `08-animal-gear-present` | `wsl-deps.animalgear.map` | Animal Gear (`Dylan.AnimalGear`, Workshop 1541438907) loaded: guarded armour def exists, nothing logged. `@requires` skips elsewhere |
| `06-labels-english` / `06-labels-french` | minimal, one launch per language | Animal labels reach def as active language's text, not just DefInjected path resolving offline |
| `07-trade` | minimal | Local step (`Tests/Pickle/Source/TradeSteps.cs`) calls `TraderKindDef.WillTrade(ThingDef)` directly (method trade window itself calls) to prove `Base_Outlander_Standard` trades both animals on declared tags, no forced trader, no RNG |
| `15-reskin-compat` | `wsl-deps.reskin.map` | AUDIT 8.f: with local test copy of HannahBug's reskin (Workshop 2943088425, loads after), reskin answers three textures and wildness repair still holds. `@requires` skips elsewhere |
| `10-gallery-animals` | `wsl-deps.sanctuary.map` (English) | Not a test: five staged pictures for Workshop gallery, played at Sanctuary Backlot (`enclosure-south`, `barn`) with Nelim as farmer. `@review`, images read by eye. Local steps in `Source/GallerySteps.cs`. Rewritten 2026-10-10 (studio meadow gone) |

## The local step, and why it is not in PickleTools

Written 2026-09-27, closing the one real undone gap: no step in Pickle's built-in catalogue or `PickleTools/docs/steps.md` reads trader's generated stock or checks whether `TraderKindDef` would handle a given `ThingDef`. Instead of forcing trader and rolling RNG (flaky, only probabilistically provable), `TradeSteps.cs` calls
`RimWorld.TraderKindDef.WillTrade(ThingDef)` itself: static def data decided once loading finishes. No save, no forced trader, no RNG roll. Confirmed by decompiling installed
`Assembly-CSharp.dll` with `ilspycmd` (RimWorld 1.6.4871 rev590, 2026-09-27) before writing step, per authoring guide's "Add C# only for a missing observation or action."

Lives in `Tests/Pickle/Source/`, local to this mod, not `PickleTools`: question generic enough other suites could want it, but promoting step to shared infrastructure is owner's call, not this session's. `dotnet build -c Release` from
`Tests/Pickle/Source/` compiles straight into `Tests/Pickle/Mod/Pickle/Assemblies/`.

## Checking the suite before it is queued

```powershell
powershell -ExecutionPolicy Bypass -File ..\scripts\Check-Steps.ps1 -Mod BeefEatersRenew
```

Compiles local step patterns with Pickle's own Cucumber engine, then matches every step line of every feature against Pickle's vocabulary, engine's save steps, TextureOwner tool and local steps: each line must resolve to **exactly one** step. Invalid pattern makes run play zero scenarios; nonexistent or double-matching step fails healthy scenario. All three cheaper to find here than in queued run. Exit code 1 on any problem. Reads installed Pickle (Workshop 3791648678), Mono.Cecil from NuGet cache and `PickleTools/TextureOwner`.

Run 2026-09-28 (31 step lines, 8 features): all resolve. First reported `the save round trips` unresolved: checker's fault, not suite's. Runner handles save steps without attribute extraction can see, and installed Pickle's own `save-reload.feature` uses each verbatim; checker now lists them with that evidence. Seen failing on deliberately broken copy (invalid pattern, two nonexistent lines): reported exactly those.

Proves line can be dispatched, never that it passes. Nothing here run in game.

## What is deliberately not here

**Scenarios A, C, D, E, F (partly), G, H (partly), J, L**, TEST_SCENARIOS.md: reading declared stat, training flag, comfy-temperature value, litter curve, or biome weight is either already proven by `Tools/Check-Mod.ps1` (no game needed), or is vanilla engine reacting to value mod merely supplies (`CompMilkable` producing milk, Biotech gestation math, trainer reading `trainability`). Authoring guide's own rule forbids testing that. `H`'s procedural multi-day biome spawn and `L`'s full breeding cycle out for same reason as `NewColony` in `PickleTools`: real in-game time nothing here can compress, not worth machine-hours for what declared-value check already covers.

**Animal Gear present.** Covered by `08`. Mod downloaded via `scripts/download-workshop-wsl.sh` under `Use-Wsl.ps1` on 2026-09-28, packageId read from its own `About.xml`: `Dylan.AnimalGear` (framework, name "Animal Gear", supports 1.6, hard dependency Harmony only). `Dylan.AnimalGearBasic` (1541439112) is content, not guard target, not staged. Earlier search guess `dylan.animalgear` was right but unverified; now read.

## Setup, once

1. Enable Pickle and RimLogging.
2. Stage suite through shared launcher (below); minimal pass needs no other mod.

## Run

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Pickle-Status.ps1
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Language English
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -DepMap Tests/Pickle/wsl-deps.textures.map -Filter 02-textures-load
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -DepMap Tests/Pickle/wsl-deps.incompat-original.map -Filter 05-collision-with-original
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Filter 06-labels-english -Language English
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Filter 06-labels-french -Language French
```

None run yet. See `AUDIT.md`'s absolute rule against session launching RimWorld itself. Submit via `Submit-PickleRun.ps1` per `AUDIT.md`, "Déposer un run au lieu
de le lancer", one request per pass above.

## Evidence

Per `AGENTS.md` and `AUDIT.md`: `Tests/Pickle/Evidence/` disk-only, gitignored, never committed. Run's captures and `Player.log` go there, not Git. Repo gets short summary line per run under `docs/runs/` (`docs/runs/<date>-<short-sha>-summary.md`), cited from `STATUS.md`. Per pass, keep only latest report for revision now in repo, plus any older report that is sole proof of check latest run didn't repeat; delete rest once newer report supersedes.

## Language and the two label features

`06-labels-english` and `06-labels-french` each assert one language; pass runs in one language (`-Language`, default English). Full English pass therefore shows `06-labels-french` red, and reverse: red is the pass, not the mod. Play English passes with `-Filter '!06-labels-french'` and French pass with `-Filter '06-labels-french'` (other features language-independent). Found 2026-10-02 (run b655): texture pass, in English, ran French feature.

Same for Animal Gear: `04-animal-gear-absent` red by construction in pass staging Animal Gear (run ad6a, 2026-10-02: armour def exists there, which `08-animal-gear-present` proves green). Play that pass with `-Filter '!04-animal-gear-absent,!06-labels-french'`.