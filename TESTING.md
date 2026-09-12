# Test scenarios

Two animals, twenty textures, one guarded patch, no assembly. There is very little here to break,
and the one thing that *was* broken broke **silently**. That is why this mod needs the game rather
than a file checker.

**An empty log is not a pass.** The original fault was a `<wildness>` element that matched no field
in 1.6. It logs one line among hundreds at startup, both animals loaded anyway, and both looked
perfectly normal. Only the information card settles it.

The port changed one line per animal and the textures are byte-identical to the original's, so most
of what follows asks: *did TheGoofyOne's two animals survive the move intact?* Scenarios B and C
test the repair.

Three other things were found while writing this file, none of them the port's doing, and all three
have since been acted on: the pygmy beefalo was described as the opposite of what it is (F), its
only trade tag was one nothing in the game reads (I), and nothing stopped the original from being
enabled alongside this port (N). Those three scenarios now verify the fix rather than pose the
question.

## Load order

```
nelim.beefeatersrenew    this mod    after Core and all official expansions
```

`<loadAfter>` names Core and five optional expansions. No expansion is required: the mod inherits
`AnimalThingBase` and `AnimalKindBase` from Core, uses two Core bodies, and touches nothing else.

**The original must stay off.** TheGoofyOne's Beef Eaters
([1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034),
`TheGoofyOne.BeefEaters`) defines the same two defs under the same `defName`, `BelgianBlueCow` and
`PygmyBeefalo`. `About.xml` now declares `<incompatibleWith>` naming it, so the mod list says so
rather than leaving the log as the only warning. It is subscribed on this machine, so scenario N can
be run rather than reasoned about.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `doesn't correspond to any field` | `DirectXmlToObject.ObjectFromXml` | The fault this port exists to fix. Expected count naming `wildness` or `RaceProperties`: **zero**. |
| `Could not load UnityEngine.Texture2D` | `ContentFinder<Texture2D>.Get` | A `texPath` with nothing behind it. The line names the path, so it says whether it is `BelgianBlueCow`, `BelgianBlueBull`, `PygmyBeefalo`, or one of the two Core dessicated paths. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | The same fault one level up: no rotation found at all. |
| `Could not find parent node named` | `XmlInheritance.ResolveParents` | One of the two Core templates is gone: `AnimalThingBase` or `AnimalKindBase`. |
| `Could not find body def named` | `DirectXmlToObject` | `QuadrupedAnimalWithHooves` for the cow, or `QuadrupedAnimalWithHoovesAndHorn` for the beefalo. Both are in Core's `Bodies_Animal_Quadruped.xml`. |
| `Adding duplicate` | `DefDatabase.Add` | The original mod is enabled alongside this port. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | Only `Patches/Armor.xml` can write this, and only when Animal Gear is present. See scenario M. |

Lines naming other mods are not ours to fix, and are worth leaving in whatever gets pasted back.

## Before the game: the offline check

```
powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1
```

Five groups covering file consistency and publication metadata: every XML file
parses; no lowercase `<wildness>` has come back and both animals carry the stat at 0.05 and 0.5;
every `texPath` the defs name has a file behind it; and the three decisions this port made on
purpose are still in place — the packageId and the 1.6 support, the incompatibility with the
original, the beefalo's `AnimalFarm` tag, and the two copies of `ATTRIBUTION.md` being identical.
Exit code is the number of failures.

The checker also preserves the `(unofficial)` title suffix, the GitHub URL in both metadata and
description, and the Animal Gear guard around the armour addition. This last check validates the
patch structure only; scenario M still requires the game with and without Animal Gear.

It was run once against a deliberately broken copy — wildness removed, a texture renamed, the trade
tag deleted, the attribution files desynchronised — and reported exactly those four. A checker
nobody has seen fail is not a checker.

**It cannot catch the next `<wildness>`**, only this one, by name: knowing which field names 1.6
accepts needs the game's own type dump, which lives with the monorepo tooling rather than here. And
a clean pass says the files are consistent, never that the animals behave. That is what the rest of
this document is for.

---

## A — both animals exist, and draw

The baseline. Everything else assumes this passed.

- Dev mode on, spawn `BelgianBlueCow` and `PygmyBeefalo` with the debug spawn-pawn action.
- The cow draws as a very large pale animal, the beefalo as a small shaggy one with horns. Both
  walk and both appear in the Wildlife tab. Finding them there proves nothing about natural
  spawning, since you put them there; scenario H settles that.
- Spawn a **vanilla cow beside the Belgian blue**. The difference must be obvious and enormous:
  `drawSize` 4.7 against the vanilla adult's 2.0-ish, body size 6.0 against 2.4. A Belgian blue that
  looks like an ordinary cow means the `<race>` block did not load, and scenario B will confirm it.
- Spawn a **vanilla muffalo beside the pygmy beefalo**: body size 1.0 against 2.4, `drawSize` 2
  against the muffalo's own. The pygmy is the smaller by a wide margin.

## B — wildness reads on the information card

The one repair, and the only place it shows.

- Open each animal's information card, Stats.
- **The Belgian blue lists wildness at 5%.** Listed is the point: `Wildness` declares
  `showIfUndefined` false, so the broken form did not print a wrong number, it printed **no line at
  all**, and the stat fell back to Core's deliberate out-of-range `-1`.
- **The pygmy beefalo lists 50%.**
- Compare with a vanilla cow, which is 0%, and a muffalo, which is 60%. A Belgian blue showing no
  wildness line, or a number that is not 5%, is the fault back.
- Start a taming attempt on each. The cow's chance is very high, the beefalo's middling. The cow at
  5% is the point of the animal: nearly born tame.
- Search the log for `doesn't correspond to any field`. No line may name `wildness`.

## C — the negative control

Skip it and the mod looks correct without anyone having shown *why*.

- On a **copy** of `Mod/Defs/Race_BelgianBlueCows.xml`, move the line back: delete
  `<Wildness>0.05</Wildness>` from `statBases` and put `<wildness>0.05</wildness>` back inside
  `<race>`.
- Reload. The animal still loads, still draws, still walks. **Nothing looks wrong.**
- The information card now shows **no wildness line**, the taming chance changes, and the log has
  one line naming `wildness`.
- Restore the file. This scenario exists to be run once and written down, not kept.

## D — the cow is enormous, slow, and hungry

Everything here is the author's design and none of it is to be corrected. The scenario exists so
that each number is seen once in the game rather than in the file.

| | Belgian blue | Vanilla cow |
|---|---|---|
| Body size | 6.0 | 2.4 |
| Move speed | 0.8 c/s | 3.2 c/s |
| Hunger rate | 1.0 | 0.535 |
| Health scale | 1.0 | 1.5 |
| Filth rate | 32 | 16 |
| Market value | 1100 | 300 |
| Life expectancy | 11 years | 22 years |

- **Watch one cross a room.** At 0.8 c/s it is slower than a walking colonist at about 4.6, and
  slower than anything else on the map. This is the joke of the animal and it has to be visible.
- **Health scale 1.0 on an animal of body size 6.0** means it is frailer than an ordinary cow
  despite being two and a half times its size. Shoot one and note how it compares. Odd, deliberate,
  left alone.
- **Filth rate 32** is the highest of any farm animal. Keep four in a barn for a quadrum and watch
  the cleaning burden. Worth knowing before anyone puts a herd indoors.
- Hauling a corpse of body size 6.0 is slow work for one colonist; note whether it needs two.

## E — milk, and wool

- **The Belgian blue gives 40 milk a day**, against a vanilla cow's 14 and a dromedary's 18 every
  two days. It is the most productive milk animal in the game by a wide margin. Milk one daily for
  a quadrum and confirm the interval is one day and the yield 40.
- **The pygmy beefalo gives 12 milk every two days**, and **8 muffalo wool every five**. Compare
  with a vanilla muffalo, which gives no milk at all and 120 wool every fifteen days: per day the
  pygmy gives 1.6 wool against the muffalo's 8, which is roughly its share of the size.
- Shear one and confirm the wool that lands is `WoolMuffalo`, the vanilla material, not a new one.
- Butcher one of each: the cow yields cow meat and plain cow leather (`useMeatFrom` and
  `useLeatherFrom` both name Cow), the beefalo yields cow meat and **muffalo bluefur**.

## F — pens, roaming, and a claim that was corrected

The README and the `About.xml` used to say the pygmy beefalo was *"a pen animal rather than a
caravan animal"*. The def says the opposite on both halves, so **the sentence was corrected rather
than the def**: a documentation fix changes no balance, where adding `roamMtbDays` and dropping
`packAnimal` would have been a design change on someone else's animal. This scenario checks the
game agrees with the new wording.

- **The Belgian blue has `roamMtbDays` 2**, like every vanilla farm animal, so it is a roamer and
  needs a pen. Tame one, leave it unpenned, and it wanders off. Build a pen and confirm it stays,
  and that the pen's food calculation accounts for a body size of 6.0 — one Belgian blue eats what
  two and a half cows eat.
- **The pygmy beefalo has no `roamMtbDays` at all.** It is therefore **not** a roamer: it needs no
  pen, will not wander off, and will not appear in the pen animal lists. Tame one, leave it loose
  for a quadrum, and confirm it stays put.
- **The pygmy beefalo has `packAnimal` true.** Form a caravan with a tamed one and confirm it can
  be loaded and that the pack draws — the shipped `PygmyBeefaloPack_*.png` follow the convention of
  the body texture plus `Pack`. If the caravan screen offers no carrying capacity, or the pack does
  not draw, say so: those textures are shipped for nothing otherwise.
- **Read the new wording against what you just saw**, in `README.md` and in the mod's description in
  the game's own mod list: the beefalo needs no pen, unlike the cow, and it carries a pack. If the
  game disagrees with either half, the sentence is wrong again and this is where it shows.

## G — training, and what each animal can be asked to do

- **The Belgian blue is `trainability` None.** Open its Training tab: **nothing is trainable, not
  even Obedience.** It can never haul, never rescue, never follow. A Belgian blue offering Obedience
  means the `<race>` block did not load.
- **The pygmy beefalo is `trainability` Advanced**, which is a real upgrade over the vanilla
  muffalo's None. Train one to Haul and to Rescue and confirm both take. This is the single most
  useful thing the animal does and it is worth one deliberate check.
- The beefalo nuzzles: `nuzzleMtbHours` 60. Keep one among colonists for a season and expect the
  mood memory to appear. The cow does not nuzzle.

## H — where each animal spawns, and where it does not

- **The pygmy beefalo has a `wildBiomes` block** and will appear on its own:

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

  Reveal an arid shrubland or a tundra map and expect a herd within days: `wildGroupSize` is 3 to 9.
  Ice sheet at 0.08 needs patience or several map rerolls.
- **The Belgian blue has no `wildBiomes` at all.** It can never spawn wild. Check a few maps of
  different biomes over a season and confirm none appears. Its `wildGroupSize` of 6 to 8 is
  therefore dead text, which is not a fault: farm animals are bought, not found.
- Neither animal is in any faction's starting animal list, so a new colony starts with neither.

## I — trade, and a tag nobody reads

The same class of silent dead end the sloth port found, and it was in the original, not in the port.
**The fix is already in**: `AnimalFarm` was added to the pygmy beefalo, and this scenario is what
proves it took.

- **The Belgian blue carries `AnimalFarm`**, which eight trader files in Core read: bulk goods
  traders, outlander and neolithic settlements and caravans. Force a bulk goods caravan a few times
  and expect a Belgian blue in stock eventually, at about 1100 silver. Sell one back.
- **The pygmy beefalo carried `StandardAnimal` and nothing else. No trader in Core or in any
  expansion reads that tag — no def in the game data declares it at all.** So the animal could be
  neither bought nor sold, in either direction, by anybody. Its other route was open, which is why
  this was a wart and not a wall: it spawns wild in eight biomes and can be tamed. Only trade was
  closed.
- **`AnimalFarm` was added alongside it**, the original's dead tag being left in place. Force a bulk
  goods caravan and an outlander settlement a few times and expect a pygmy beefalo in stock, at
  about 300 silver. Sell a tamed one back. Both directions must work, and both are new.
- Negative control worth running once: remove `AnimalFarm` again and no trader on the map will
  handle the animal either way. That was the original's state.

## J — temperature

- **The pygmy beefalo is comfortable to -60**, hardier than a vanilla muffalo at -55, which fits an
  animal that spawns on ice sheets. Put one on an ice sheet map and confirm it does not freeze.
- **The Belgian blue is comfortable to -10 only**, the same as a vanilla cow. On a boreal or tundra
  map an unhoused herd will take cold injuries in winter. Expected, and worth one winter of
  watching.

## K — the textures and the life stages

Nineteen files, byte-identical to the original's.

- Watch each animal walk in all four directions. **West is not shipped**; RimWorld mirrors `_east`,
  so a west-facing animal showing its far side reversed is correct.
- **The cow's two sexes use two different textures and two different tints**: `BelgianBlueBull` at
  `(170,170,170)` and `BelgianBlueCow` at `(200,200,200)`. Spawn one of each and confirm the bull is
  the darker. An untinted, glaring white pair means the colours did not load.
- Three life stages, at `drawSize` 2.3 / 3.15 / 4.7 for the bull and 2.25 / 3.0 / 4.6 for the cow.
  Spawn a calf beside an adult: the difference is very large and deliberate.
- The beefalo has **no `femaleGraphicData`**: both sexes draw from `PygmyBeefalo` and both have
  horns, which the description says outright.
- **The dessicated corpses use the base game's textures**, `Dessicated_Cow`, `Dessicated_Bull` and
  `Dessicated_Muffalo`. Leave a corpse to dry out and confirm it draws a vanilla dessicated animal
  at the right size. This is upstream's choice, left alone, and **not** a fault to report.

## L — breeding and ageing

- **Belgian blue**: gestation 8 days, no litter curve, so one calf at a time. Life expectancy 11
  years, half a vanilla cow's 22. Age one up with dev tools and confirm it dies of old age rather
  than of something logged.
- **Pygmy beefalo**: gestation 10 days, litter curve peaking at **two**, three impossible. Life
  expectancy 15, the same as a muffalo.
- Adulthood comes at 0.40 years for the cow and 0.5 for the beefalo. Both are fast; confirm the
  life stage graphics swap at those ages.

## M — the Animal Gear patch

`Patches/Armor.xml` adds `Apparel_PygmyBeefaloArmour`, a smithy-built metallic barding for the
beefalo, behind a `PatchOperationFindMod` naming **Animal Gear**.

- **Run once with Animal Gear off**, which is how this machine is set up. The log must stay silent:
  no failed patch operation, no missing def. A guarded block that fires with its mod absent is
  exactly what the guard exists to prevent.
- Confirm `Apparel_PygmyBeefaloArmour` does **not** exist in the debug def list with the mod off.
- **Run once with Animal Gear on.** The apparel appears at an electric or fueled smithy, can be
  made, and can be put on a tamed pygmy beefalo and on nothing else: its `apparel` tags name
  `Animal` and `PygmyBeefalo`. The four `PygmyBeefaloArmour*` textures and their `_m` masks draw on
  the animal in three rotations.
- `PatchOperationFindMod` matches the mod's **name**, not its packageId. If Animal Gear renames
  itself, this block stops firing and **nothing is logged**. That is the silent failure mode of this
  file and this scenario is the only way to catch it.
- The patch is TheGoofyOne's, carried over untouched. If it is broken with Animal Gear present, the
  finding is worth recording but the fix is not obviously ours to make.

## N — the collision with the original

`About.xml` now declares `<incompatibleWith>` naming `TheGoofyOne.BeefEaters`. The original is
installed on this machine, so this scenario can actually be run.

- Enable TheGoofyOne's Beef Eaters alongside this port. **The mod list must say so**, in the way it
  reports any declared incompatibility.
- Force it anyway, if the game lets you, and expect `Adding duplicate` in the log naming
  `BelgianBlueCow` and `PygmyBeefalo`. Whichever loads last wins, silently, and if that is the
  original then the wildness fault is back with no other visible sign. That silence is the reason
  the declaration exists.
- Check the spelling of the packageId against the original's own `About.xml`: a declaration naming
  a mod that does not exist warns about nothing and logs nothing.

## O — saves

- Add the mod to a running colony. Nothing already in the save changes. A pygmy beefalo can appear
  on its own afterwards in the eight biomes above; a Belgian blue cannot, ever.
- Swap the original for this port in a save holding tamed animals. The `defName`s are unchanged, so
  **every animal already tamed survives the swap**, keeping its name and its bonds. The `packageId`
  did change, so the mod list reports the old mod as missing; that warning is expected and harmless.
- Remove the mod from a save with either animal in it. They are destroyed, as with any content mod.
  Expected, and stated in the description.

## P — the mod list entry and the Workshop page

- The name reads `Beef Eaters Renew (unofficial)` and the author line credits TheGoofyOne first.
- The description includes `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`.
- `About/ModIcon.png` is drawn at about 32 px in the mod list. It is 128 × 128 and 21 KB.
- `About/Preview.png` is 896 × 504 and below 900 KB; confirm the title and version remain legible.
- The preview illustration was replaced on 2026-09-13. It now shows a large pale muscular
  Belgian blue beside a much smaller horned shaggy beefalo. Confirm the picture displays correctly.
- Switch the game to French and restart: check both animal names and descriptions, the bull,
  calf labels and plurals, and the named attacks. With Animal Gear enabled, check the armour
  name and description too, plus its generated smithy recipe label and work text. With it
  disabled, check for missing-def translation errors. Switch back to English and repeat
  these checks, confirming the original labels return. In both languages, check for raw keys,
  unexpected fallback text, broken formatting and clipping. About metadata stays English.

French translation keys can also be checked against the installed game types with
`pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`.

## What cannot be tested offline

Scenarios H and I are the ones no file can settle. Whether a pygmy beefalo reaches a colony depends
on runtime selection: map generation reading the biome list, and trader stock generation reading the
trade tags. Reading the defs shows that one door is open and the other is not, never who walks
through either. Everything else here is a reading of the information card, which is exactly where
the silent fault hid.
