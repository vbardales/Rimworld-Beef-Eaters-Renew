# In-game scenarios, run by Pickle

Played inside a running RimWorld by [Pickle](https://github.com/RimWorks/Rimworld-Pickle)
(`rimworks.pickle`, Workshop 3791648678). `Mod/` is a companion mod, **Beef Eaters Renew - Pickle
tests**, never published: it holds the feature files. Everything here is a built-in Pickle step
except the texture pass, which stages Nelim's Pickle Tools' `TextureOwner` for that one pass only.
Nothing here clicks through OS input.

Written 2026-09-27, applying `AUDIT.md`'s `preTest -> done` Gherkin criterion after the owner
confirmed the scope (relayed through TicketDispatcher): script only what only a running game
proves and what is about a decision this port made — not what the offline checker already
confirms, and not the vanilla engine's own reaction to a value the mod merely declares (see
`Authoring/README.md`, "do not duplicate an offline assertion... test the mod's declaration
offline and its own behavior in the relevant pass").

| Feature | Pass | Checks |
| --- | --- | --- |
| `01-wildness-defs` | minimal | `<Wildness>` under `statBases` survives the game's own load, computed and raw, on both animals — the fault this port exists to fix, and the one thing static XML parsing cannot rule out by itself (patches, inheritance) |
| `02-textures-load` | `wsl-deps.textures.map` | Each of the three own textures (bull, cow, beefalo) is answered by this mod's own packageId, not shadowed |
| `03-save-roundtrip` | minimal | A spawned animal of each kind, and its wildness stat, survive a real save/load round trip |
| `04-animal-gear-absent` | minimal | With Animal Gear not loaded, the guarded armour def does not exist and nothing was logged about it |
| `05-collision-with-original` | `wsl-deps.incompat-original.map` | With TheGoofyOne's original also loaded, RimWorld's own "Adding duplicate" warning still names both defNames — `@requires:TheGoofyOne.BeefEaters` skips it in every other pass |
| `08-animal-gear-present` | `wsl-deps.animalgear.map` | With Animal Gear (`Dylan.AnimalGear`, Workshop 1541438907) loaded, the guarded armour def exists and nothing is logged; `@requires` skips it elsewhere |
| `06-labels-english` / `06-labels-french` | minimal, one launch per language | The animal labels reach the def as the active language's text, not just that a DefInjected path resolves offline |
| `07-trade` | minimal | A local step (`Tests/Pickle/Source/TradeSteps.cs`) calls `TraderKindDef.WillTrade(ThingDef)` directly — the method the trade window itself calls — to prove `Base_Outlander_Standard` trades both animals on their declared tags, without forcing a trader or rolling RNG |

## The local step, and why it is not in PickleTools

Written 2026-09-27, closing what had been the one real, undone gap: no step in Pickle's built-in
catalogue or in `PickleTools/docs/steps.md` reads a trader's generated stock or checks whether a
`TraderKindDef` would handle a given `ThingDef`. Rather than force a trader and roll RNG — flaky,
and provable only probabilistically — `TradeSteps.cs` calls
`RimWorld.TraderKindDef.WillTrade(ThingDef)` itself, which is static def data decided once loading
finishes: no save, no forced trader, no RNG roll. Confirmed by decompiling the installed
`Assembly-CSharp.dll` with `ilspycmd` (RimWorld 1.6.4871 rev590, 2026-09-27) before writing a line
of the step, per the authoring guide's "Add C# only for a missing observation or action."

It lives in `Tests/Pickle/Source/`, local to this mod, not in `PickleTools`: the question is
generic enough that another mod's suite could want it, but promoting a step to shared
infrastructure is the owner's call, not this session's. `dotnet build -c Release` from
`Tests/Pickle/Source/` compiles it straight into `Tests/Pickle/Mod/Pickle/Assemblies/`.

## Checking the suite before it is queued

```powershell
powershell -ExecutionPolicy Bypass -File Tools\Check-PickleSteps.ps1
```

Compiles the local step patterns with Pickle's own Cucumber engine, then matches every step line
of every feature against Pickle's vocabulary, the engine's save steps, the TextureOwner tool and
the local steps: each line must resolve to **exactly one** step. An invalid pattern makes a run play
zero scenarios, and a step that does not exist or matches twice fails a healthy scenario, so all
three are cheaper to find here than in a queued run. Exit code 1 on any problem. It reads the
installed Pickle (Workshop 3791648678), Mono.Cecil from the NuGet cache and `PickleTools/TextureOwner`.

Run 2026-09-28 (31 step lines, 8 features): all resolve. It first reported `the save round trips`
unresolved, which was the checker's fault, not the suite's: the runner handles the save steps
without an attribute the extraction can see, and the installed Pickle's own `save-reload.feature`
uses each verbatim; the checker now lists them with that evidence. Seen failing on a deliberately
broken copy (an invalid pattern, two nonexistent lines): it reported exactly those.

It proves a line can be dispatched, never that it passes. Nothing here has run in a game.

## What is deliberately not here

**Scenarios A, C, D, E, F (partly), G, H (partly), J, L**, TESTING.md: reading a declared stat, a
training flag, a comfy-temperature value, a litter curve, or a biome weight is either already
proven by `Tools/Check-Mod.ps1` (no game needed), or is the vanilla engine reacting to a value
this mod merely supplies (`CompMilkable` producing milk, Biotech's gestation math, the trainer
reading `trainability`) — the authoring guide's own rule against testing that. `H`'s procedural,
multi-day biome spawn and `L`'s full breeding cycle stay out for the same reason as `NewColony`
in `PickleTools`: real in-game time nothing here can compress, not worth the machine-hours for
what a declared-value check already covers.

**Animal Gear present.** Covered by `08`. The mod was downloaded through `scripts/download-workshop-wsl.sh` under `Use-Wsl.ps1` on 2026-09-28 and its packageId read from its own `About.xml`: `Dylan.AnimalGear` (framework, name "Animal Gear", supports 1.6, hard dependency Harmony only). `Dylan.AnimalGearBasic` (1541439112) is content, not the guard target, and is not staged. The earlier search guess `dylan.animalgear` was right but unverified; it is now read.

## Setup, once

1. Enable Pickle and RimLogging.
2. Stage this suite through the shared launcher (below); the minimal pass needs no other mod.

## Run

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Pickle-Status.ps1
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Language English
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -DepMap Tests/Pickle/wsl-deps.textures.map -Filter 02-textures-load
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -DepMap Tests/Pickle/wsl-deps.incompat-original.map -Filter 05-collision-with-original
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Filter 06-labels-english -Language English
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod BeefEatersRenew -Filter 06-labels-french -Language French
```

None of this has been run yet — see `AUDIT.md`'s absolute rule against a session launching
RimWorld itself. Submit it through `Submit-PickleRun.ps1` per `AUDIT.md`, "Déposer un run au lieu
de le lancer", one request per pass above.

## Evidence

Per `AGENTS.md` and `AUDIT.md`: `Tests/Pickle/Evidence/` is disk-only, gitignored, never
committed — a run's captures and `Player.log` go there, not in Git. What belongs in the repository
is a short summary line per run under `docs/runs/` (`docs/runs/<date>-<short-sha>-summary.md`),
cited from `STATUS.md`. Keep, per pass, only the latest report for the revision now in the
repository, plus any older report that is the sole proof of a check the latest run did not
repeat; delete the rest as soon as a newer report supersedes it.
