# Beef Eaters — where the content comes from, and what had to be changed

Everything in this mod is **TheGoofyOne's** work: the Belgian blue cow, the pygmy beefalo, their
textures, and the Animal Gear patch that ships with them. This repository holds the port to
RimWorld 1.6 and nothing else.

## The source

| | |
|---|---|
| Mod | Beef Eaters |
| Author | TheGoofyOne |
| Workshop | [1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034) |
| Last version supported | 1.4 |
| Last updated | 11 March 2023 |
| Licence | none stated |

**Abandoned, not withdrawn.** The item is still on the Workshop and still downloadable; it stopped
at 1.4, missing 1.5 and 1.6. Nobody else has picked it up: Mlie has no continuation of it, a Workshop
search filtered on the 1.6 tag returns nothing related, and no installed mod declares
`BelgianBlueCow` or `PygmyBeefalo`.

## The licence, looked for in four places

"None stated" is a verdict, not an absence of checking. A refusal never presents itself as a
licence, so each place was searched for the refusal rather than for the permission — `prohibit`,
`forbid`, `do not redistribute`, `no reupload`, `all rights reserved`, `without permission`, and
the Japanese and Chinese forms 禁止, 転載, 無断, 二次配布, 不得.

| Where | What it says |
|---|---|
| A `LICENSE` or `COPYING` file in the mod | there is none |
| The `<description>` of its `About.xml` | nothing about reuse |
| A linked repository | there is none |
| The Workshop page description | nothing about reuse |

Silence grants nothing and forbids nothing. This port rests on the Workshop's own custom for
abandoned mods: named credit, and a takedown on request.

## What the port changed

The same line, twice.

- **`wildness` moved to `<Wildness>` under `statBases`, on both animals.** It stopped being a field
  of `RaceProperties` in 1.6 and became a StatDef. The old form does not error: nothing reads it, and
  the stat's own default is `-1`, which Core's comment describes as deliberately out of range "so we
  can catch missing wildness stats on animals". The cow's 0.05 — nearly born tame, and the point of
  the animal — and the beefalo's 0.5 were both doing nothing.

- **`AnimalFarm` added to the pygmy beefalo's trade tags.** Its only tag was `StandardAnimal`, and
  **no trader def in Core or in any expansion reads that tag — nothing in the game data declares it
  at all**. The animal could therefore be neither bought nor sold, in either direction, by anybody.
  `AnimalFarm` is the tag of the vanilla cow, sheep and chicken, read by eight trader files. The
  Belgian blue already carried it. This is design rather than porting, and it is the only change
  here that is not a repair.
- **`incompatibleWith` naming `TheGoofyOne.BeefEaters` added to `About.xml`.** Both mods declare the
  same two `defName`s, so with both enabled the last one loaded wins in silence and the wildness
  fault comes back with no visible sign. The original declares no such guard because it had nothing
  to guard against.

Apart from the trade tag, a diff against the original files shows the two wildness lines and
nothing else. No balance value was touched.

## What was left alone, and why

- **The Animal Gear patch is kept as written**, behind its `PatchOperationFindMod`. Animal Gear is
  not installed here, so the patch cannot be exercised; it is also not this port's to rewrite. It
  stays inert and silent when that mod is absent.
- **The cow's 0.8 move speed and 6.0 body size stay.** A double-muscled breed that can barely walk is
  the author's design, not an oversight.
- **Their dessicated corpses use the base game's cow and muffalo textures**, as the author wrote
  them.
- **No balance value was touched.**

## Where this came from

The port was done inside a private pack that had gathered two dozen abandoned animal mods, where
these two were one source among them. They leave the pack to stand on their own, because the rule
that pack follows is that a mod which is dead **and** states nothing gets republished with credit
rather than kept back. The pack keeps only what cannot be published: sources that are alive in 1.6,
and the one whose author refuses redistribution.
