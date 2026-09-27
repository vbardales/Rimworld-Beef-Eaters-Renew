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
| `06-labels-english` / `06-labels-french` | minimal, one launch per language | The animal labels reach the def as the active language's text, not just that a DefInjected path resolves offline |

## What is deliberately not here

**Scenario I (trade)**, TESTING.md: whether `AnimalFarm` on the pygmy beefalo actually reaches a
trader's generated stock. No step in Pickle's own catalogue or in this collection's `PickleTools`
reads trader stock or forces one to generate; `def "PygmyBeefalo" field "tradeTags"` would only
reread what the offline checker already confirms about the declared tag, not that a trader
picks it up. This stays a genuine, documented gap rather than a scenario built on the wrong step,
until such a step exists somewhere in Pickle or PickleTools.

**Scenarios A, C, D, E, F (partly), G, H (partly), J, L**, TESTING.md: reading a declared stat, a
training flag, a comfy-temperature value, a litter curve, or a biome weight is either already
proven by `Tools/Check-Mod.ps1` (no game needed), or is the vanilla engine reacting to a value
this mod merely supplies (`CompMilkable` producing milk, Biotech's gestation math, the trainer
reading `trainability`) — the authoring guide's own rule against testing that. `H`'s procedural,
multi-day biome spawn and `L`'s full breeding cycle stay out for the same reason as `NewColony`
in `PickleTools`: real in-game time nothing here can compress, not worth the machine-hours for
what a declared-value check already covers.

**Animal Gear present.** `04` proves the guard is silent without it. Proving the guard actually
fires with it present needs Animal Gear's own packageId and Workshop id, neither looked up yet.

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
