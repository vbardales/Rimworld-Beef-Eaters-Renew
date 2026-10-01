# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it
in game.

## [1.0.0] — unreleased

After final in-game validation, create the `v1.0.0` tag and the matching GitHub release, then
publish to the Workshop. See `STATUS.md` for what remains.

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
- **French translation**, covering both animals' names, descriptions, bull/calf labels and
  plurals, named attacks, and the optional Animal Gear armour: 21 owned text fields, all covered.
  English is supplied by the original Def values; no redundant English DefInjected file.
- **`Mod/About/Preview.png`** (896×504) and **`Mod/About/ModIcon.png`** (128×128), generated and
  engraved per `STYLE_RIMWORLD.md`. Full-resolution sources and the composition page are kept in
  `Art/`, never in `About/`.
- **`TESTING.md`**, sixteen prose scenarios (A–P) covering both animals, the Animal Gear patch,
  translations and the collision with the original.
- **`Tests/Pickle/`**, eight Gherkin features run by Pickle: the wildness repair surviving the
  game's own load, each shipped texture actually loading, an animal surviving a save/reload round
  trip, the Animal Gear patch staying silent in its absence, the collision with the original still
  warning as declared, both animals' labels reaching the def in English and in French, a farm trader accepting both animals, and the Animal Gear patch firing when Animal Gear is present. Not
  yet executed — see `Tests/Pickle/README.md` for scope and what deliberately stays out (no
  existing step reads a trader's generated stock, so the pygmy beefalo's trade tag stays a
  documented gap rather than a scenario forced onto the wrong tool).
- **`Tools/Check-Mod.ps1`**, an offline checker: XML well-formedness, the wildness repair, every
  `texPath` resolving to a shipped file, and the port's own metadata decisions (packageId,
  `incompatibleWith`, the trade tag, the two identical copies of `ATTRIBUTION.md`).

### Changed

- **The description now opens with an unofficial notice**: this port is published without the
  original author's explicit consent, with the standing offer to take it down on request.
- **`packageId` dropped its `renew` suffix**: `nelim.beefeatersrenew` → `nelim.beefeaters`.
- **The mod's own name gained an `(unofficial)` suffix**: `Beef Eaters Renew (unofficial)`.
- **The description now closes with a links section** (GitHub source, issues, changelog,
  attribution/licence review, the original Workshop item) and the exact Steam-formatted
  `[url=...]Source code on GitHub[/url]` line publication requires.
- **The pygmy beefalo was described as the opposite of what it is.** The description called it a
  pen animal rather than a caravan animal: it has no `roamMtbDays`, so it needs no pen, and it
  carries `packAnimal`, so it hauls in a caravan like the muffalo it comes from. It was also
  compared to a muffalo of body size 2.7, and later to a fraction of the muffalo's size that
  turned out unsupported by any declared value; both are now a plain qualitative comparison.
  Wording only, no def touched.

### Notes

No balance value was changed, including the cow's 0.8 move speed, which is the joke of a
double-muscled breed too heavy to walk.

The mod's Animal Gear patch is carried over untouched, behind the `PatchOperationFindMod` its
author put on it. Animal Gear is not installed on this machine, so the patch has only been proven
silent in its absence; it stays inert there and unexercised in its presence.

## [0.1.0] — 2026-10-01

Creation of the Workshop item: the `About/PublishedFileId.txt` it wrote. Steam creates every item
private, and this one has not been made public. This entry does not say the mod is tested.

The upload contained `Mod/` as it stood at commit `720c0de`. Nothing in `Mod/` has changed since
except `About/Preview.png` (recomposed in `fdb5c3a`), which is not in the uploaded item.
