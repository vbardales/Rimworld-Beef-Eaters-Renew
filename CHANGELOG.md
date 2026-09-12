# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it
in game.

## [1.0.0] — unreleased

On release: add `Mod/About/ModIcon.png` and `Mod/About/Preview.png`, create the `v1.0.0` tag and
the matching GitHub release, then publish to the Workshop.

First release of the 1.6 update of **Beef Eaters**, by TheGoofyOne.

### Fixed

- **`wildness` moved to `<Wildness>` under `statBases`, on both animals.** It stopped being a field
  of `RaceProperties` in 1.6 and became a StatDef. The old form is not an error, it is simply never
  read, and the stat's default is `-1` — outside the range the game uses. The Belgian blue's 0.05,
  which is what makes it nearly born tame, and the pygmy beefalo's 0.5 were both doing nothing.
- **The pygmy beefalo can be traded.** Its only tag was `StandardAnimal`, which no trader def in
  Core or in any expansion reads — nothing in the game data declares it at all — so the animal could
  be neither bought nor sold in either direction. It now also carries `AnimalFarm`, the tag of the
  vanilla cow, sheep and chicken, which the Belgian blue already had. Design rather than porting,
  and the only change here that is not a repair.

### Added

- **`incompatibleWith` naming `TheGoofyOne.BeefEaters`.** Both mods define `BelgianBlueCow` and
  `PygmyBeefalo` under those names, so with both enabled the last one loaded won in silence and the
  wildness fault came back with it.
- **`TESTING.md`**, sixteen scenarios covering both animals, the Animal Gear patch and the
  collision with the original.

### Documentation

- **The pygmy beefalo was described as the opposite of what it is.** The description called it a pen
  animal rather than a caravan animal: it has no `roamMtbDays`, so it needs no pen, and it carries
  `packAnimal`, so it hauls in a caravan like the muffalo it comes from. It was also compared to a
  muffalo of body size 2.7, where the vanilla muffalo is 2.4. Wording only, no def touched.

### Notes

No balance value was changed, including the cow's 0.8 move speed, which is the joke of a
double-muscled breed too heavy to walk.

The mod's Animal Gear patch is carried over untouched, behind the `PatchOperationFindMod` its author
put on it. Animal Gear is not installed here, so the patch could not be exercised; it stays inert and
silent in its absence.
