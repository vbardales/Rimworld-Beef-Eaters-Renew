# Test scenarios

Two animals, twenty textures, one guarded patch, no assembly. Little to break.
One thing *was* broken, **silently**. So mod need game, not file checker.

**Empty log not pass.** Original fault: `<wildness>` element matched no field
in 1.6. One log line among hundreds at startup, both animals loaded anyway, looked
normal. Only info card settles it.

Port changed one line per animal, textures byte-identical to original. Most
below asks: *did TheGoofyOne's two animals survive move intact?* B and C
test repair.

Three other things found writing this file, none port's doing, all three
since fixed: pygmy beefalo described opposite of what it is (F), only
trade tag one nothing in game reads (I), nothing stopped original enabled
alongside port (N). Those three now verify fix, not pose question.

## Load order

```
nelim.beefeaters    this mod    after Core and all official expansions
```

`<loadAfter>` names Core + five optional expansions. None required: mod inherits
`AnimalThingBase` and `AnimalKindBase` from Core, uses two Core bodies, touches nothing else.

**Original must stay off.** TheGoofyOne's Beef Eaters
([1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034),
`TheGoofyOne.BeefEaters`) defines same two defs, same `defName`, `BelgianBlueCow` and
`PygmyBeefalo`. `About.xml` now declares `<incompatibleWith>` naming it, so mod list warns
instead of log only. Subscribed on this machine, so N runnable, not just reasoned.

## What to search the log for

`Player.log` at
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `doesn't correspond to any field` | `DirectXmlToObject.ObjectFromXml` | Fault port fixes. Expected count naming `wildness` or `RaceProperties`: **zero**. |
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | `texPath` with nothing behind. Line names path: `BelgianBlueCow`, `BelgianBlueBull`, `PygmyBeefalo`, or one of two Core dessicated paths. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | Same fault one level up: no rotation found. |
| `Could not find parent node named` | `XmlInheritance.ResolveParents` | Core template gone: `AnimalThingBase` or `AnimalKindBase`. |
| `Could not find body def named` | `DirectXmlToObject` | `QuadrupedAnimalWithHooves` for cow, `QuadrupedAnimalWithHoovesAndHorn` for beefalo. Both in Core's `Bodies_Animal_Quadruped.xml`. |
| `Adding duplicate` | `DefDatabase.Add` | Original enabled alongside port. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Only `Patches/Armor.xml` writes this, only with Animal Gear present. See M. |

Lines naming other mods not ours to fix; leave in whatever pasted back.

## Before the game: the offline check

```
powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1
```

Five groups, file consistency + publication metadata: every XML parses; no lowercase
`<wildness>` back, both animals carry stat at 0.05 and 0.5; every `texPath` has file
behind; three deliberate port decisions in place — packageId and 1.6 support,
incompatibility with original, beefalo's `AnimalFarm` tag, two `ATTRIBUTION.md` copies identical.
Exit code = failure count.

Checker also guards `(unofficial)` title suffix, GitHub URL in metadata and
description, Animal Gear guard around armour addition. Last check validates
patch structure only; M still needs game with and without Animal Gear.

Run once on deliberately broken copy — wildness removed, texture renamed, trade
tag deleted, attribution desynced — reported exactly those four. Checker
never seen fail not checker.

**Cannot catch next `<wildness>`**, only this one, by name: knowing which fields 1.6
accepts needs game's type dump, lives with monorepo tooling, not here. Clean
pass = files consistent, never animals behave. Rest of doc for that.

---

## A — both animals exist, and draw

Baseline. All else assumes pass.

- Dev mode on, spawn `BelgianBlueCow` and `PygmyBeefalo` via debug spawn-pawn.
- Cow draws very large, pale; beefalo small, shaggy, horned. Both walk, both in
  Wildlife tab. Being there proves nothing about natural spawning — you put them; H settles that.
- Spawn **vanilla cow beside Belgian blue**. Difference obvious, enormous:
  `drawSize` 4.7 vs vanilla adult ~2.0, body size 6.0 vs 2.4. Belgian blue looking
  like ordinary cow = `<race>` block didn't load; B confirms.
- Spawn **vanilla muffalo beside pygmy beefalo**: body size 1.0 vs 2.4, `drawSize` 2
  vs muffalo's own. Pygmy smaller by wide margin.

## B — wildness reads on the information card

The one repair, only place it shows.

- Open each animal's info card, Stats.
- **Belgian blue lists wildness 5%.** Listed is point: `Wildness` declares
  `showIfUndefined` false, so broken form printed **no line at all**, not wrong number;
  stat fell back to Core's deliberate out-of-range `-1`.
- **Pygmy beefalo lists 50%.**
- Compare vanilla cow 0%, muffalo 60%. Belgian blue with no wildness line, or not 5%,
  = fault back.
- Start taming each. Cow chance very high, beefalo middling. Cow at 5% is point of
  animal: nearly born tame.
- Search log for `doesn't correspond to any field`. No line may name `wildness`.

## C — the negative control

Skip it, mod looks correct with nobody showing *why*.

- On **copy** of `Mod/Defs/Race_BelgianBlueCows.xml`, move line back: delete
  `<Wildness>0.05</Wildness>` from `statBases`, put `<wildness>0.05</wildness>` back inside
  `<race>`.
- Reload. Animal still loads, draws, walks. **Nothing looks wrong.**
- Info card now **no wildness line**, taming chance changes, log has one line naming `wildness`.
- Restore file. Run once, write down, not kept.

## D — the cow is enormous, slow, and hungry

All author's design, nothing to correct. Exists so each number seen once in game, not file.

| | Belgian blue | Vanilla cow |
|---|---|---|
| Body size | 6.0 | 2.4 |
| Move speed | 0.8 c/s | 3.2 c/s |
| Hunger rate | 1.0 | 0.535 |
| Health scale | 1.0 | 1.5 |
| Filth rate | 32 | 16 |
| Market value | 1100 | 300 |
| Life expectancy | 11 years | 22 years |

- **Watch one cross room.** 0.8 c/s slower than walking colonist (~4.6), slower than
  anything on map. Animal's joke, must be visible.
- **Health scale 1.0 at body size 6.0** = frailer than ordinary cow despite 2.5× size.
  Shoot one, note comparison. Odd, deliberate, left alone.
- **Filth rate 32** highest farm animal. Keep four in barn a quadrum, watch cleaning
  burden. Know before housing herd indoors.
- Hauling body-size-6.0 corpse slow for one colonist; note if needs two.

## E — milk, and wool

- **Belgian blue gives 40 milk/day**, vs vanilla cow 14, dromedary 18 per two days.
  Most productive milk animal by wide margin. Milk daily for quadrum, confirm interval
  one day, yield 40.
- **Pygmy beefalo gives 12 milk per two days**, **8 muffalo wool per five**. Vanilla
  muffalo: no milk, 120 wool per fifteen days: per day pygmy 1.6 wool vs muffalo 8,
  roughly size share.
- Shear one, confirm wool is `WoolMuffalo`, vanilla material, not new.
- Butcher one each: cow yields cow meat + plain cow leather (`useMeatFrom` and
  `useLeatherFrom` both name Cow), beefalo yields cow meat + **muffalo bluefur**.

## F — pens, roaming, and a claim that was corrected

README and `About.xml` once called pygmy beefalo *"a pen animal rather than a
caravan animal"*. Def says opposite on both halves, so **sentence corrected, not
def**: doc fix changes no balance; adding `roamMtbDays` and dropping `packAnimal`
would be design change on someone else's animal. Scenario checks game agrees with new wording.

- **Belgian blue has `roamMtbDays` 2**, like every vanilla farm animal: roamer, needs pen.
  Tame one, leave unpenned, it wanders. Build pen, confirm it stays, pen food calc
  accounts for body size 6.0 — one Belgian blue eats ~2.5 cows' worth.
- **Pygmy beefalo has no `roamMtbDays`.** **Not** roamer: no pen needed, won't wander,
  not in pen animal lists. Tame one, leave loose a quadrum, confirm stays.
- **Pygmy beefalo has `packAnimal` true.** Form caravan with tamed one, confirm loadable
  and pack draws — shipped `PygmyBeefaloPack_*.png` follow body texture + `Pack`
  convention. If caravan screen shows no capacity, or pack doesn't draw, report: textures
  shipped for nothing otherwise.
- **Read new wording against what you saw**, in `README.md` and in-game mod list
  description: beefalo needs no pen, unlike cow, carries pack. Game disagreeing with
  either half = sentence wrong again; shows here.

## G — training, and what each animal can be asked to do

- **Belgian blue `trainability` None.** Training tab: **nothing trainable, not even
  Obedience.** Never hauls, rescues, follows. Offering Obedience = `<race>` didn't load.
- **Pygmy beefalo `trainability` Advanced**, real upgrade over vanilla muffalo's None.
  Train Haul and Rescue, confirm both take. Most useful thing animal does; check once deliberately.
- Beefalo nuzzles: `nuzzleMtbHours` 60. Keep among colonists a season, expect mood
  memory. Cow doesn't nuzzle.

## H — where each animal spawns, and where it does not

- **Pygmy beefalo has `wildBiomes` block**, spawns on own:

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
  Ice sheet at 0.08 needs patience or several rerolls.
- **Belgian blue has no `wildBiomes`.** Never spawns wild. Check few maps, different
  biomes, over season; confirm none. Its `wildGroupSize` 6 to 8 = dead text, not fault:
  farm animals bought, not found.
- Neither in any faction's starting animal list; new colony starts with neither.

## I — trade, and a tag nobody reads

Same class of silent dead end sloth port found, in original, not port.
**Fix already in**: `AnimalFarm` added to pygmy beefalo; scenario proves it took.

- **Belgian blue carries `AnimalFarm`**, read by eight Core trader files: bulk goods
  traders, outlander and neolithic settlements and caravans. Force bulk goods caravan
  few times, expect Belgian blue in stock eventually, ~1100 silver. Sell one back.
- **Pygmy beefalo carried `StandardAnimal` only. No trader in Core or any expansion
  reads that tag — no def in game data declares it.** So animal neither bought nor
  sold, either direction, by anybody. Other route open, so wart not wall: spawns wild
  in eight biomes, tameable. Only trade closed.
- **`AnimalFarm` added alongside**, original's dead tag kept. Force bulk goods caravan
  and outlander settlement few times, expect pygmy beefalo in stock, ~300 silver. Sell
  tamed one back. Both directions must work, both new.
- Negative control, run once: remove `AnimalFarm` again, no trader handles animal
  either way. Original's state.

## J — temperature

- **Pygmy beefalo comfortable to -60**, hardier than vanilla muffalo at -55, fits ice
  sheet spawning. Put one on ice sheet map, confirm no freezing.
- **Belgian blue comfortable to -10 only**, same as vanilla cow. On boreal or tundra
  map unhoused herd gets cold injuries in winter. Expected; watch one winter.

## K — the textures and the life stages

Twenty files, byte-identical to original.

- Watch each walk all four directions. **West not shipped**; RimWorld mirrors `_east`,
  so west-facing far side reversed is correct.
- **Cow's sexes use two textures, two tints**: `BelgianBlueBull` at
  `(170,170,170)`, `BelgianBlueCow` at `(200,200,200)`. Spawn one each, confirm bull
  darker. Untinted glaring white pair = colours didn't load.
- Three life stages, `drawSize` 2.3 / 3.15 / 4.7 bull, 2.25 / 3.0 / 4.6 cow.
  Calf beside adult: very large difference, deliberate.
- Beefalo has **no `femaleGraphicData`**: both sexes draw from `PygmyBeefalo`, both
  horned; description says so.
- **Dessicated corpses use base game textures**, `Dessicated_Cow`, `Dessicated_Bull`,
  `Dessicated_Muffalo`. Let corpse dry, confirm vanilla dessicated animal at right size.
  Upstream's choice, left alone, **not** fault to report.

## L — breeding and ageing

- **Belgian blue**: gestation 8 days, no litter curve, one calf at a time. Life
  expectancy 11 years, half vanilla cow's 22. Age one with dev tools, confirm dies of
  old age, not something logged.
- **Pygmy beefalo**: gestation 10 days, litter curve peaks at **two**, three impossible.
  Life expectancy 15, same as muffalo.
- Adulthood 0.40 years cow, 0.5 beefalo. Both fast; confirm life stage graphics swap at those ages.

## M — the Animal Gear patch

`Patches/Armor.xml` adds `Apparel_PygmyBeefaloArmour`, smithy-built metallic barding for
beefalo, behind `PatchOperationFindMod` naming **Animal Gear**.

- **Run once with Animal Gear off**, this machine's setup. Log silent: no failed patch
  operation, no missing def. Guarded block firing with mod absent = exactly what guard prevents.
- Confirm `Apparel_PygmyBeefaloArmour` **absent** from debug def list with mod off.
- **Run once with Animal Gear on.** Apparel at electric or fueled smithy, craftable,
  wearable by tamed pygmy beefalo only: `apparel` tags name `Animal` and `PygmyBeefalo`.
  Four `PygmyBeefaloArmour*` textures and `_m` masks draw on animal in three rotations.
- `PatchOperationFindMod` matches mod **name**, not packageId. If Animal Gear renames,
  block stops firing, **nothing logged**. File's silent failure mode; only this scenario catches it.
- Patch is TheGoofyOne's, untouched. Broken with Animal Gear present = worth recording,
  but fix not obviously ours.

## N — the collision with the original

`About.xml` now declares `<incompatibleWith>` naming `TheGoofyOne.BeefEaters`. Original
installed here, so scenario runnable.

- Enable TheGoofyOne's Beef Eaters alongside port. **Mod list must say so**, as with any
  declared incompatibility.
- Force anyway if game allows. (Run 3cad, 2026-10-02: 1.6 logs no `Adding duplicate` line; the clash is silent.) Expect
  `BelgianBlueCow` and `PygmyBeefalo`. Last loaded wins, silently; if original, wildness
  fault back with no other visible sign. That silence is why declaration exists.
- Check packageId spelling against original's own `About.xml`: declaration naming
  nonexistent mod warns nothing, logs nothing.

## O — saves

- Add mod to running colony. Nothing in save changes. Pygmy beefalo can then spawn on
  own in eight biomes above; Belgian blue never.
- Swap original for port in save with tamed animals. `defName`s unchanged, so **every
  tamed animal survives swap**, keeping name and bonds. `packageId` changed, so mod list
  reports old mod missing; expected, harmless.
- Remove mod from save with either animal. Destroyed, like any content mod. Expected,
  stated in description.

## P — the mod list entry and the Workshop page

- Name reads `Beef Eaters Renew (unofficial)`, author line credits TheGoofyOne first.
- Description includes `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`.
- `About/ModIcon.png` drawn ~32 px in mod list. It is 128 × 128, 21 KB.
- `About/Preview.png` is 896 × 504, under 900 KB; confirm title and version legible.
- Preview illustration replaced 2026-09-13. Shows large pale muscular Belgian blue
  beside much smaller horned shaggy beefalo. Confirm displays correctly.
- Switch game to French, restart: check both animal names and descriptions, bull, calf
  labels, plurals, named attacks. With Animal Gear on, also armour name and description,
  generated smithy recipe label and work text. With it off, check missing-def
  translation errors. Back to English, repeat, confirm original labels return. Both
  languages: check raw keys, unexpected fallback text, broken formatting, clipping.
  About metadata stays English.

French translation keys also checkable against installed game types with
`pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`.

## What cannot be tested offline

H and I: no file settles them. Whether pygmy beefalo reaches colony depends on runtime
selection: map gen reading biome list, trader stock gen reading trade tags. Reading defs
shows one door open, other not, never who walks through. Everything else here is info
card reading, exactly where silent fault hid.

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

## Scenarios A-P: what covers each, and what is not applicable (2026-10-02)

`tested` gate requires no manual test left. Each prose scenario above covered by Pickle
scenario or listed here not applicable with reason. "Engine" = check only asks whether
RimWorld honours declared def value, excluded by project rule "we do not test the game"
once value itself asserted.

| Scenario | Covered by | Not applicable, and why |
|---|---|---|
| A, both animals exist and draw | `11-def-values` (body size, speed), `02-textures-load`, gallery pictures read by eye | Look of walking animal beside vanilla one: picture person reads, not assertion |
| B, wildness | `01-wildness-defs`, `03-save-roundtrip` | Info card line and taming odds: engine reading stat already asserted |
| C, negative control | `Tools/Check-Mod.ps1` section 2 (fails if field moves back) | Run once by design, "to be run once and written down, not kept" |
| D, the enormous cow | `11-def-values` (body size, speed, filth, value, hunger, health, life) | Crossing room, quadrum of filth, hauling corpse: engine behaviour of declared numbers |
| E, milk and wool | `11-def-values` (milk and shear comps, meat and leather sources) | Milking a quadrum, butchering: engine |
| F, pens, roaming | `11-def-values` (`roamMtbDays`, `packAnimal`) | Pen food, caravan loading: engine; wording vs `README.md` is a read, done in 2026-09-13 editorial pass |
| G, training | `11-def-values` (`trainability`, nuzzle) | Training beefalo to Haul: engine |
| H, spawning | `11-def-values` (cow has no wild biome) | Herd on tundra map within days: engine and chance; starting animal lists: mod touches none |
| I, trade | `07-trade` (both animals reach farm trader on their tag) | Rolling caravan stock: chance, engine |
| J, temperature | `11-def-values` (comfort minimum) | Cold injuries over winter: engine |
| K, textures, life stages | `02-textures-load` | Four-direction walking, tints, drawn size per life stage, dessicated corpses: how game draws, shown by gallery pictures |
| L, breeding, ageing | `11-def-values` (gestation, life expectancy) | Ageing to death, litters, life-stage swap: engine |
| M, Animal Gear | `04-animal-gear-absent`, `08-animal-gear-present` (passed, run ad6a) | Making and wearing barding: author's patch and Animal Gear's behaviour |
| N, collision with the original | `05-collision-with-original` (passed, run b0a3) | none |
| O, saves | `03-save-roundtrip` | Adding mod to colony, swapping original for port, removing mod: game's mod list handling, not this mod |
| P, display, Workshop page | `06-labels-english`, `06-labels-french` (passed, runs e01a, f86e); owner's French review | Workshop page and mod-list entry look: audit's offline checks, page exists only after publication (listed for Virginie) |