# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it
in game.

## [1.0.0] — unreleased

On release: add `Mod/About/ModIcon.png` and `Mod/About/Preview.png`, create the `v1.0.0` tag and
the matching GitHub release, then publish to the Workshop.

First release of the 1.6 update of **Beef Eaters**, by TheGoofyOne.

### Changed

- **`wildness` moved to `<Wildness>` under `statBases`, on both animals.** It stopped being a field
  of `RaceProperties` in 1.6 and became a StatDef. The old form is not an error, it is simply never
  read, and the stat's default is `-1` — outside the range the game uses. The Belgian blue's 0.05,
  which is what makes it nearly born tame, and the pygmy beefalo's 0.5 were both doing nothing.

### Notes

Those two lines are the entire difference from the original files. No balance value was changed,
including the cow's 0.8 move speed, which is the joke of a double-muscled breed too heavy to walk.

The mod's Animal Gear patch is carried over untouched, behind the `PatchOperationFindMod` its author
put on it. Animal Gear is not installed here, so the patch could not be exercised; it stays inert and
silent in its absence.
