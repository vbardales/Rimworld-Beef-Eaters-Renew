# Beef Eaters Renew (unofficial)

UNOFFICIAL. This mod is published without the original author's explicit consent. If the original author contacts me to request its removal, I undertake to take it down promptly.

The Belgian blue cow and the pygmy beefalo, brought forward to RimWorld 1.6.

**I am not the author of this mod.** Both animals are TheGoofyOne's; all I did was the work needed
to make them run on 1.6. Credit goes to them, mistakes in the update are mine.

Original mod: https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034 — last supporting
1.4, last updated in March 2023. Abandoned, not withdrawn.

## What the mod does

Two livestock animals.

- **Belgian blue cow** — the double-muscled breed, and the stats say so. Body size 6.0, the largest
  thing in most colonies, at a move speed of 0.8, slower than a walking colonist. Wildness 0.05,
  about as close to born-tame as the game allows. Milkable.
- **Pygmy beefalo** — a muffalo scaled down to body size 1.0 rather than the muffalo's own 2.4.
  Fifteen years, move speed 4.2, wildness 0.5, trainable to Advanced where the muffalo is trainable
  to nothing at all, milkable and shearable for muffalo wool. It needs no pen, unlike the cow, and
  it carries a pack in a caravan like the muffalo it comes from.
- An **Animal Gear** patch ships with them, guarded so it only applies when that mod is present.

No DLC required. No Harmony, no framework, no dependency of any kind.

Content mod: removing it mid-save will lose any Belgian blue cow or pygmy beefalo already in play.

## What changed in the 1.6 update

One line, twice, and two things found on the way.

- **`wildness` moved to `<Wildness>` under `statBases`, on both animals.** It stopped being a field
  of `RaceProperties` in 1.6 and became a StatDef. The old form is not an error, it is simply never
  read, and the stat's default is `-1` — outside the range the game uses. The cow's 0.05, which is
  the point of the animal, was doing nothing at all.
- **`AnimalFarm` added to the pygmy beefalo's trade tags.** Its only tag was `StandardAnimal`, which
  no trader in the game reads, so the animal could be neither bought nor sold by anybody. The
  Belgian blue already carried `AnimalFarm`. This one is design rather than porting, and
  [ATTRIBUTION.md](ATTRIBUTION.md) says so in those words.
- **The original is declared incompatible.** Both mods define the same two animals under the same
  names; with both enabled the last one loaded wins in silence.

No balance value was changed.

## Terms

The original **states no licence anywhere** — no file in the mod, nothing in its `About.xml`, no
linked repository, and nothing on its Workshop page, which was read looking for a refusal rather
than for a permission. Silence grants nothing and forbids nothing.

This port rests on the Workshop's own custom for abandoned mods: named credit, and a takedown on
request. If TheGoofyOne comes back to these two, or asks for this to be taken down, it comes down.

If I do not answer within a reasonable time after being contacted, anyone may freely update this or
any other of my mods, including publishing a continuation of it. All credit must be preserved.

## Credits

- **TheGoofyOne** — the mod, both animals, and their textures.
- 1.6 update by nelim. Written with the help of Claude (Anthropic).

See [ATTRIBUTION.md](ATTRIBUTION.md) for the licence check and the port in detail.
