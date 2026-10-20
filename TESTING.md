# Test scenarios

Two animals, twenty textures, one guarded patch, no assembly. Little here to break.
One thing that *was* broken broke **silently**. So mod need game, not file checker.

**Empty log not a pass.** Original fault: `<wildness>` element matched no field
in 1.6. Logs one line among hundreds at startup, both animals loaded anyway, both looked
normal. Only information card settles it.

Port changed one line per animal, textures byte-identical to original's. Most
of what follows asks: *did TheGoofyOne's two animals survive move intact?* Scenarios B and C
test repair.

Three other things found while writing this file, none port's doing, all three
since acted on: pygmy beefalo described as opposite of what it is (F), its
only trade tag one nothing in game reads (I), nothing stopped original being
enabled alongside port (N). Those three scenarios now verify fix, not pose question.

## Load order

```
nelim.beefeaters    this mod    after Core and all official expansions
```

`<loadAfter>` names Core and five optional expansions. No expansion required: mod inherits
`AnimalThingBase` and `AnimalKindBase` from Core, uses two Core bodies, touches nothing else.

**Original must stay off.** TheGoofyOne's Beef Eaters
([1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034),
`TheGoofyOne.BeefEaters`) defines same two defs under same `defName`, `BelgianBlueCow` and
`PygmyBeefalo`. `About.xml` now declares `<incompatibleWith>` naming it, so mod list says so
instead of log being only warning. Subscribed on this machine, so scenario N can
be run, not reasoned about.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `doesn't correspond to any field` | `DirectXmlToObject.ObjectFromXml` | Fault this port exists to fix. Expected count naming `wildness` or `RaceProperties`: **zero**. |
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | `texPath` with nothing behind it. Line names path, so says whether it is `BelgianBlueCow`, `BelgianBlueBull`, `PygmyBeefalo`, or one of two Core dessicated paths. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation found at all. |
| `Could not find parent node named` | `XmlInheritance.ResolveParents` | One of two Core templates gone: `AnimalThingBase` or `AnimalKindBase`. |
| `Could not find body def named` | `DirectXmlToObject` | `QuadrupedAnimalWithHooves` for cow, or `QuadrupedAnimalWithHoovesAndHorn` for beefalo. Both in Core's `Bodies_Animal_Quadruped.xml`. |
| `Adding duplicate` | `DefDatabase.Add` | Original mod enabled alongside port. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Only `Patches/Armor.xml` can write this, only when Animal Gear present. See scenario M. |

Lines naming other mods not ours to fix, worth leaving in whatever gets pasted back.

## Before the game: the offline check

```
powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1
```

Five groups covering file consistency and publication metadata: every XML file
parses; no lowercase `<wildness>` returned, both animals carry stat at 0.05 and 0.5;
every `texPath` in defs has file behind it; three decisions port made on
purpose still in place — packageId and 1.6 support, incompatibility with
original, beefalo's `AnimalFarm` tag, two copies of `ATTRIBUTION.md` identical.
Exit code is number of failures.

Checker also preserves `(unofficial)` title suffix, GitHub URL in both metadata and
description, and Animal Gear guard around armour addition. Last check validates
patch structure only; scenario M still requires game with and without Animal Gear.

Run once against deliberately broken copy — wildness removed, texture renamed, trade
tag deleted, attribution files desynchronised — reported exactly those four. Checker
nobody seen fail is not a checker.

**Cannot catch next `<wildness>`**, only this one, by name: knowing which field names 1.6
accepts needs game's own type dump, which lives with monorepo tooling, not here. Clean
pass says files consistent, never that animals behave. That is what rest of this
document is for.

---

## A — both animals exist, and draw

Baseline. Everything else assumes this passed.

- Dev mode on, spawn `BelgianBlueCow` and `PygmyBeefalo` with debug spawn-pawn action.
- Cow draws as very large pale animal, beefalo as small shaggy one with horns. Both
  walk, both appear in Wildlife tab. Finding them there proves nothing about natural
  spawning, since you put them there; scenario H settles that.
- Spawn **vanilla cow beside Belgian blue**. Difference must be obvious and enormous:
  `drawSize` 4.7 against vanilla adult's 2.0-ish, body size 6.0 against 2.4. Belgian blue that
  looks like ordinary cow means `<race>` block did not load, scenario B will confirm.
- Spawn **vanilla muffalo beside pygmy beefalo**: body size 1.0 against 2.4, `drawSize` 2
  against muffalo's own. Pygmy smaller by wide margin.

## B — wildness reads on the information card

The one repair, only place it shows.

- Open each animal's information card, Stats.
- **Belgian blue lists wildness at 5%.** Listed is the point: `Wildness` declares
  `showIfUndefined` false, so broken form did not print wrong number, it printed **no line at
  all**, stat fell back to Core's deliberate out-of-range `-1`.
- **Pygmy beefalo lists 50%.**
- Compare with vanilla cow, 0%, and muffalo, 60%. Belgian blue showing no
  wildness line, or number not 5%, is fault back.
- Start taming attempt on each. Cow's chance very high, beefalo's middling. Cow at
  5% is point of animal: nearly born tame.
- Search log for `doesn't correspond to any field`. No line may name `wildness`.

## C — the negative control

Skip it and mod looks correct without anyone showing *why*.

- On **copy** of `Mod/Defs/Race_BelgianBlueCows.xml`, move line back: delete
  `<Wildness>0.05</Wildness>` from `statBases` and put `<wildness>0.05</wildness>` back inside
  `<race>`.
- Reload. Animal still loads, draws, walks. **Nothing looks wrong.**
- Information card now shows **no wildness line**, taming chance changes, log has
  one line naming `wildness`.
- Restore file. Scenario exists to be run once and written down, not kept.

## D — the cow is enormous, slow, and hungry

All author's design, none to be corrected. Scenario exists so
each number seen once in game, not in file.

| | Belgian blue | Vanilla cow |
|---|---|---|
| Body size | 6.0 | 2.4 |
| Move speed | 0.8 c/s | 3.2 c/s |
| Hunger rate | 1.0 | 0.535 |
| Health scale | 1.0 | 1.5 |
| Filth rate | 32 | 16 |
| Market value | 1100 | 300 |
| Life expectancy | 11 years | 22 years |

- **Watch one cross room.** At 0.8 c/s slower than walking colonist at about 4.6, and
  slower than anything else on map. Joke of animal, must be visible.
- **Health scale 1.0 on animal of body size 6.0** means frailer than ordinary cow
  despite being two and half times its size. Shoot one, note comparison. Odd, deliberate,
  left alone.
- **Filth rate 32** highest of any farm animal. Keep four in barn for quadrum, watch
  cleaning burden. Worth knowing before anyone puts herd indoors.
- Hauling corpse of body size 6.0 slow work for one colonist; note whether needs two.

## E — milk, and wool

- **Belgian blue gives 40 milk a day**, against vanilla cow's 14 and dromedary's 18 every
  two days. Most productive milk animal in game by wide margin. Milk one daily for
  quadrum, confirm interval one day, yield 40.
- **Pygmy beefalo gives 12 milk every two days**, and **8 muffalo wool every five**. Compare
  with vanilla muffalo, no milk at all and 120 wool every fifteen days: per day pygmy
  gives 1.6 wool against muffalo's 8, roughly its share of size.
- Shear one, confirm wool landing is `WoolMuffalo`, vanilla material, not new one.
- Butcher one of each: cow yields cow meat and plain cow leather (`useMeatFrom` and
  `useLeatherFrom` both name Cow), beefalo yields cow meat and **muffalo bluefur**.

## F — pens, roaming, and a claim that was corrected

README and `About.xml` used to say pygmy beefalo was *"a pen animal rather than a
caravan animal"*. Def says opposite on both halves, so **sentence corrected, not
def**: documentation fix changes no balance, where adding `roamMtbDays` and dropping
`packAnimal` would have been design change on someone else's animal. Scenario checks game
agrees with new wording.

- **Belgian blue has `roamMtbDays` 2**, like every vanilla farm animal, so roamer and
  needs pen. Tame one, leave unpenned, it wanders off. Build pen, confirm it stays,
  and pen's food calculation accounts for body size 6.0 — one Belgian blue eats what
  two and half cows eat.
- **Pygmy beefalo has no `roamMtbDays` at all.** Therefore **not** roamer: needs no
  pen, will not wander off, will not appear in pen animal lists. Tame one, leave loose
  for quadrum, confirm it stays put.
- **Pygmy beefalo has `packAnimal` true.** Form caravan with tamed one, confirm can
  be loaded and pack draws — shipped `PygmyBeefaloPack_*.png` follow convention of
  body texture plus `Pack`. If caravan screen offers no carrying capacity, or pack does
  not draw, say so: those textures shipped for nothing otherwise.
- **Read new wording against what you just saw**, in `README.md` and in mod's description in
  game's own mod list: beefalo needs no pen, unlike cow, and carries pack. If
  game disagrees with either half, sentence wrong again, this is where it shows.

## G — training, and what each animal can be asked to do

- **Belgian blue is `trainability` None.** Open Training tab: **nothing trainable, not
  even Obedience.** Can never haul, rescue, follow. Belgian blue offering Obedience
  means `<race>` block did not load.
- **Pygmy beefalo is `trainability` Advanced**, real upgrade over vanilla
  muffalo's None. Train one to Haul and Rescue, confirm both take. Single most
  useful thing animal does, worth one deliberate check.
- Beefalo nuzzles: `nuzzleMtbHours` 60. Keep one among colonists for season, expect
  mood memory to appear. Cow does not nuzzle.

## H — where each animal spawns, and where it does not

- **Pygmy beefalo has `wildBiomes` block** and appears on own:

  | Biome | Commonality |
  |---|---|
  | Arid shrubland | 1 |
  | Tundra | 1 |
  | Desert | 0.5 |
  | Boreal forest | 0.5 |
  | Temperate forest | 0.5 |
  | Tropical rainforest | 0.5 |
  | Extreme desert | 0.2 |
  | Ice sheet | 0.08 |

  Reveal arid shrubland or tundra map, expect herd within days: `wildGroupSize` 3 to 9.
  Ice sheet at 0.08 needs patience or several map rerolls.
- **Belgian blue has no `wildBiomes` at all.** Can never spawn wild. Check few maps of
  different biomes over season, confirm none appears. Its `wildGroupSize` of 6 to 8 is
  therefore dead text, not fault: farm animals bought, not found.
- Neither animal in any faction's starting animal list, so new colony starts with neither.

## I — trade, and a tag nobody reads

Same class of silent dead end sloth port found, and in original, not port.
**Fix already in**: `AnimalFarm` added to pygmy beefalo, this scenario proves it took.

- **Belgian blue carries `AnimalFarm`**, which eight trader files in Core read: bulk goods
  traders, outlander and neolithic settlements and caravans. Force bulk goods caravan few times
  and expect Belgian blue in stock eventually, about 1100 silver. Sell one back.
- **Pygmy beefalo carried `StandardAnimal` and nothing else. No trader in Core or any
  expansion reads that tag — no def in game data declares it at all.** So animal could be
  neither bought nor sold, either direction, by anybody. Other route open, which is why
  wart not wall: spawns wild in eight biomes and can be tamed. Only trade closed.
- **`AnimalFarm` added alongside it**, original's dead tag left in place. Force bulk
  goods caravan and outlander settlement few times, expect pygmy beefalo in stock, about
  300 silver. Sell tamed one back. Both directions must work, both new.
- Negative control worth running once: remove `AnimalFarm` again and no trader on map
  handles animal either way. That was original's state.

## J — temperature

- **Pygmy beefalo comfortable to -60**, hardier than vanilla muffalo at -55, fits
  animal spawning on ice sheets. Put one on ice sheet map, confirm does not freeze.
- **Belgian blue comfortable to -10 only**, same as vanilla cow. On boreal or tundra
  map unhoused herd takes cold injuries in winter. Expected, worth one winter of
  watching.

## K — the textures and the life stages

Twenty files, byte-identical to original's.

- Watch each animal walk in all four directions. **West not shipped**; RimWorld mirrors `_east`,
  so west-facing animal showing far side reversed is correct.
- **Cow's two sexes use two different textures and two different tints**: `BelgianBlueBull` at
  `(170,170,170)` and `BelgianBlueCow` at `(200,200,200)`. Spawn one of each, confirm bull is
  darker. Untinted, glaring white pair means colours did not load.
- Three life stages, at `drawSize` 2.3 / 3.15 / 4.7 for bull and 2.25 / 3.0 / 4.6 for cow.
  Spawn calf beside adult: difference very large, deliberate.
- Beefalo has **no `femaleGraphicData`**: both sexes draw from `PygmyBeefalo`, both have
  horns, description says outright.
- **Dessicated corpses use base game's textures**, `Dessicated_Cow`, `Dessicated_Bull` and
  `Dessicated_Muffalo`. Leave corpse to dry out, confirm draws vanilla dessicated animal
  at right size. Upstream's choice, left alone, **not** fault to report.

## L — breeding and ageing

- **Belgian blue**: gestation 8 days, no litter curve, one calf at a time. Life expectancy 11
  years, half vanilla cow's 22. Age one up with dev tools, confirm dies of old age, not
  of something logged.
- **Pygmy beefalo**: gestation 10 days, litter curve peaking at **two**, three impossible. Life
  expectancy 15, same as muffalo.
- Adulthood at 0.40 years for cow and 0.5 for beefalo. Both fast; confirm life stage
  graphics swap at those ages.

## M — the Animal Gear patch

`Patches/Armor.xml` adds `Apparel_PygmyBeefaloArmour`, smithy-built metallic barding for
beefalo, behind `PatchOperationFindMod` naming **Animal Gear**.

- **Run once with Animal Gear off**, how this machine set up. Log must stay silent:
  no failed patch operation, no missing def. Guarded block firing with mod absent is
  exactly what guard exists to prevent.
- Confirm `Apparel_PygmyBeefaloArmour` does **not** exist in debug def list with mod off.
- **Run once with Animal Gear on.** Apparel appears at electric or fueled smithy, can be
  made, can be put on tamed pygmy beefalo and nothing else: its `apparel` tags name
  `Animal` and `PygmyBeefalo`. Four `PygmyBeefaloArmour*` textures and `_m` masks draw on
  animal in three rotations.
- `PatchOperationFindMod` matches mod's **name**, not packageId. If Animal Gear renames
  itself, block stops firing and **nothing logged**. Silent failure mode of this
  file, this scenario only way to catch it.
- Patch is TheGoofyOne's, carried over untouched. If broken with Animal Gear present,
  finding worth recording but fix not obviously ours to make.

## N — the collision with the original

`About.xml` now declares `<incompatibleWith>` naming `TheGoofyOne.BeefEaters`. Original
installed on this machine, so scenario can actually be run.

- Enable TheGoofyOne's Beef Eaters alongside port. **Mod list must say so**, way it
  reports any declared incompatibility.
- Force anyway, if game lets you. (Run 3cad, 2026-10-02: 1.6 logs no `Adding duplicate` line; the clash is silent.) Expect
  `BelgianBlueCow` and `PygmyBeefalo`. Whichever loads last wins, silently, and if that is
  original then wildness fault back with no other visible sign. That silence is reason
  declaration exists.
- Check spelling of packageId against original's own `About.xml`: declaration naming
  mod that does not exist warns about nothing, logs nothing.

## O — saves

- Add mod to running colony. Nothing already in save changes. Pygmy beefalo can appear
  on own afterwards in eight biomes above; Belgian blue cannot, ever.
- Swap original for port in save holding tamed animals. `defName`s unchanged, so
  **every animal already tamed survives swap**, keeping name and bonds. `packageId`
  did change, so mod list reports old mod missing; warning expected, harmless.
- Remove mod from save with either animal in it. Destroyed, as with any content mod.
  Expected, stated in description.

## P — the mod list entry and the Workshop page

- Name reads `Beef Eaters Renew (unofficial)`, author line credits TheGoofyOne first.
- Description includes `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`.
- `About/ModIcon.png` drawn at about 32 px in mod list. It is 128 × 128 and 21 KB.
- `About/Preview.png` is 896 × 504 and below 900 KB; confirm title and version remain legible.
- Preview illustration replaced on 2026-09-13. Now shows large pale muscular
  Belgian blue beside much smaller horned shaggy beefalo. Confirm picture displays correctly.
- Switch game to French, restart: check both animal names and descriptions, bull,
  calf labels and plurals, named attacks. With Animal Gear enabled, check armour
  name and description too, plus generated smithy recipe label and work text. With it
  disabled, check missing-def translation errors. Switch back to English and repeat
  checks, confirming original labels return. In both languages, check raw keys,
  unexpected fallback text, broken formatting, clipping. About metadata stays English.

French translation keys can also be checked against installed game types with
`pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`.

## What cannot be tested offline

Scenarios H and I no file can settle. Whether pygmy beefalo reaches colony depends
on runtime selection: map generation reading biome list, trader stock generation reading
trade tags. Reading defs shows one door open and other not, never who walks
through either. Everything else here is reading of information card, exactly where
silent fault hid.

## Pickle scope — written 2026-09-27

**Gap found while applying `AUDIT.md`, closed same day after owner's call.** The
`preTest -> done` transition requires Gherkin scenarios, scoped to whatever only running game
can show. A through P never had any. Reading `PickleTools/docs/steps.md` and Pickle's own
built-in catalogue changed count first proposed (B, I, M, N — four) after actually checking
what each needs against what exists:

- **B** (wildness) — `def raw stat` / `def stat`, at main menu, no save. Written.
- **K** (textures) — `TextureOwner`'s "answered by the mod" step, which first pass missed
  entirely: cheap, no save, proves file actually read, not merely present. Written.
- **M** (Animal Gear) — only absent half written (no def, no log, Animal Gear not staged
  anywhere here). Present half needs that mod's packageId/Workshop id, not looked up yet.
- **N** (collision with original) — `mod ... is loaded` plus `mod ... loads before ...` plus repaired wildness still read (run 3cad found no duplicate warning logged; was
  `a warning matching`), staged against original itself (Workshop 1988048034, its
  packageId read from installed copy) rather than assumed. Written.
- **O** (save round trip) — not in first proposal, added on inspection: `the save round trips`
  is built-in step and concern real (does stat survive save, not just load).
  Narrowed to one process, since two separate mod installs in one save not Pickle scenario.
  Written.
- **P** (English/French display) — added same way: DefInjected overwrites def's own field
  at load, so reading after load proves display, not just injection path resolves.
  Two feature files, one expected text per language, run under `-Language English` /
  `-Language French` respectively. Written.
- **I** (pygmy beefalo's trade tag) — only one no built-in or shared step covered, closed with
  local step instead of forced onto wrong one. `Tests/Pickle/Source/TradeSteps.cs` calls
  `RimWorld.TraderKindDef.WillTrade(ThingDef)` directly — method trade window itself
  calls, found by decompiling installed `Assembly-CSharp.dll` — so no save, no forced trader
  and no RNG roll needed: static def data, decided once loading finishes. Written.
- **A, C, D, E, F (partly), G, H (partly), J, L** — left as prose. Each either already proven
  offline by `Tools/Check-Mod.ps1`, or is vanilla engine reacting to value this mod merely
  supplies (`CompMilkable`, Biotech's gestation math, `trainability`), which authoring guide's
  own rule puts out of scope. `H`'s procedural multi-day biome spawn and `L`'s full breeding cycle
  stay out for same reason `NewColony` in `PickleTools` optional and costly: real in-game
  time nothing here compresses, for what declared-value check already covers.

See `Tests/Pickle/README.md` for eight feature files, their passes, reasoning table in
full. None executed: `preTest -> done` requires scenarios exist and be scoped,
not have run — `done -> tested` is where execution and captures required. `STATUS.md`
tracks unexecuted state and what remains (Animal Gear's present half only, now that I
written).

## Evidence to keep, once a suite exists

Written ahead of any suite, so whoever writes one need not guess. Per `AGENTS.md` and
`AUDIT.md`: `Tests/Pickle/Evidence/` is disk-only record, gitignored, never committed — run's
captures and `Player.log` belong there, not in Git. Repository gets short text
summary per run, one line, under `docs/runs/`, named way `SkillIcons` does it
(`docs/runs/<date>-<short-sha>-summary.md`), cited from `STATUS.md`. Per mod and per scenario,
keep only latest report for revision currently in repository, plus any older report
that is sole proof of check latest run did not repeat; delete rest as soon as
newer report supersedes. Report about superseded build proves nothing about one shipping
now.

### What to keep from a run

Per run, per pass, per scenario. Keep on disk, in `Tests/Pickle/Evidence/<run>/`, only:
`summary.md`/`junit.xml` (carries `exitReason`, discovered vs played counts and `setName`), the
`@review` captures of scenarios that have them, and `Player.log` only when scenario failed or
logged warning scenario asserts. Delete `report.html`, `messages.ndjson`, captures of scenarios
without `@review`, and every report of superseded revision once new one in place. Never
delete report `STATUS.md` still cites: repoint first. In git: one line per run in
`docs/runs/history.md`, nothing else.

## Gate for `tested` (AUDIT.md text of 2026-09-29)

`done -> tested` needs all of these, none met yet:

1. No scenario tagged `@wip`. None exists today; scenario set aside repaired and replayed
   or deleted with reason, never left tagged.
2. Every conditional scenario has run, on map that mounts its mod, and report read
   (suite name and `setName` checked, report folder shared by whole machine):
   `02-textures-load` (`@requires:nelim.pickletools.textureowner`, map `wsl-deps.textures.map`),
   `05-collision-with-original` (`@requires:TheGoofyOne.BeefEaters`, map
   `wsl-deps.incompat-original.map`), `08-animal-gear-present` (`@requires:Dylan.AnimalGear`, map
   `wsl-deps.animalgear.map`). Scenario skipped for want of condition has not passed.
3. No manual test left to tick. Each of sixteen prose scenarios A-P either covered by
   green Pickle scenario (table in `Tests/Pickle/README.md` says which) or listed here as not
   applicable with reason. Those still only in prose today: see `STATUS.md` `remaining`.
   `@review` captures still looked at, but that is reading image scenario already proved
   in intended state, not another manual test.
4. Minimal pass and every `@requires` pass green, `exitReason: passed` read before
   counts; English and French each by own pass (`-Language`).

## Scenarios A-P: what covers each, and what is not applicable (2026-10-02)

`tested` gate asks no manual test left to tick. Each prose scenario above either covered by a
Pickle scenario, or listed here as not applicable with reason. "Engine" means check only asks
whether RimWorld honours value def declares, which project's rule "we do not test the game" excludes
once value itself asserted.

| Scenario | Covered by | Not applicable, and why |
|---|---|---|
| A, both animals exist and draw | `11-def-values` (body size, speed), `02-textures-load`, the gallery pictures read by eye | The look of a walking animal beside a vanilla one: a picture a person reads, not an assertion |
| B, wildness | `01-wildness-defs`, `03-save-roundtrip` | The information card line and taming odds: engine reading a stat already asserted |
| C, negative control | `Tools/Check-Mod.ps1` section 2 (fails if the field moves back) | Run once by design, "to be run once and written down, not kept" |
| D, the enormous cow | `11-def-values` (body size, speed, filth, value, hunger, health, life) | Watching it cross a room, a quadrum of filth, hauling a corpse: engine behaviour of declared numbers |
| E, milk and wool | `11-def-values` (milk and shear comps, meat and leather sources) | Milking for a quadrum and butchering: engine |
| F, pens, roaming | `11-def-values` (`roamMtbDays`, `packAnimal`) | Pen food, caravan loading: engine; the wording against `README.md` is a read, done in the 2026-09-13 editorial pass |
| G, training | `11-def-values` (`trainability`, nuzzle) | Training a beefalo to Haul: engine |
| H, spawning | `11-def-values` (cow has no wild biome) | A herd appearing on a tundra map within days: engine and chance; starting animal lists: nothing in this mod touches them |
| I, trade | `07-trade` (both animals reach a farm trader on their tag) | Rolling a caravan's stock: chance, and the engine |
| J, temperature | `11-def-values` (comfort minimum) | Cold injuries over a winter: engine |
| K, textures, life stages | `02-textures-load` | Walking in four directions, tints, the drawn size per life stage, dessicated corpses: how the game draws, shown by the gallery pictures |
| L, breeding, ageing | `11-def-values` (gestation, life expectancy) | Ageing to death, litters, life-stage swap: engine |
| M, Animal Gear | `04-animal-gear-absent`, `08-animal-gear-present` (passed, run ad6a) | Making and wearing the barding: the author's patch and Animal Gear's behaviour |
| N, collision with the original | `05-collision-with-original` (passed, run b0a3) | none |
| O, saves | `03-save-roundtrip` | Adding the mod to a colony, swapping the original for this port, removing the mod: how the game handles a mod list, not this mod |
| P, display, Workshop page | `06-labels-english`, `06-labels-french` (passed, runs e01a, f86e); the owner's French review | The Workshop page and the mod-list entry's look: offline checks of the audit, and the page exists only after publication (listed for Virginie) |