# Publication

What the Workshop page needs but the rest of the repository does not hold. It serves twice: for the
first release, and for whoever takes the mod over.

**Status: drafted, 2026-10-13.** The Workshop item has existed since 2026-10-01 (0.1.0 prepublication,
`Mod/About/PublishedFileId.txt` = 3811290251, private). Nothing of the Workshop page has been posted
yet (the comments of the table below are tracked there). The workflow stage is `shootGallery[1.0.0]` (see `STATUS.md`).

## What blocks the publication

Only what is specific to this mod; the gates themselves are in `AUDIT.md`.

- The gallery is being redone as one farm day, five pictures (`12-gallery-animals-props`, tickets 0156 and f8eb waiting, 2026-10-19); the beefalo alone is in picture 4, on the bridge. Nothing is accepted yet (see "Screenshots").
- The echo review (`echo_review_sha`) and the owner's review of this file and `CHANGELOG.md`
  (`publication_changelog_review_sha`) are not done.
- The rollback target cannot exist before the first publish (see "Fail fast").
- The owner's manual validations (see below).

## Description

One-source standard of 2026-09-25: the description is written once, in Markdown, in the block below.
The CI converts it to Steam BBCode and generates the plain-text `<description>` of `Mod/About/About.xml`
from it; a dry-run or publish stops if they differ. After any edit of the block, run
`node .github/scripts/sync-about-description.mjs --write` from the repository root, read the diff and
commit it. The block holds no code fence, no em dash and no RimWorld version number (owner rule of
2026-10-13: "the latest RimWorld version"; the number lives in `supportedVersions` only), and ends with
`[Source code on GitHub](URL)`.

Stats below were read from `Mod/Defs/Race_BelgianBlueCows.xml` and `Mod/Defs/Race_PygmyBeefalo.xml` on
2026-10-13.

## Steam description

```markdown
**UNOFFICIAL.** This mod is published without the original author's explicit consent. If the original author contacts me to request its removal, I undertake to take it down promptly.

Two livestock animals, brought forward to the latest RimWorld version: the Belgian blue cow, all meat and no speed, and the pygmy beefalo, a much smaller muffalo crossbreed.

No DLC, no dependency, no assembly. Two animals and a few guarded XML patches.

I am not the author of this mod. Both animals are TheGoofyOne's. All I did was the work needed to make them run on the current game, and write the French. Credit goes to them; mistakes in the update are mine.

Original mod: [Beef Eaters](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034), last updated in March 2023. Abandoned, not withdrawn.

## What's in it

- The Belgian blue cow. The double-muscled breed, and the stats say so: body size 6.0, the largest thing in most colonies, and a move speed of 0.8, slower than a walking colonist. Wildness 5 %, as close to born-tame as the game allows. Milkable. It needs a pen.
- The pygmy beefalo. A muffalo scaled down to body size 1.0 instead of the muffalo's 2.4: fifteen years of life, move speed 4.2, wildness 50 %, trainable to Advanced where the muffalo is not trainable at all, milkable and shearable for muffalo wool. It needs no pen, and it carries a pack in a caravan like the muffalo it comes from.
- An Animal Gear armour patch, carried over as the author wrote it. It applies only when that mod is present.

## What changed

**The repair.** Wildness stopped being a field of the animal and became a stat. The old form is not an error, it is simply never read, and the stat defaults to -1, outside the range the game uses, so the cow written to be nearly born-tame and the beefalo at 50 % both behaved like any other animal. It is now a stat under `statBases` on both, written the way vanilla's own animals write it.

**On purpose, and not a repair.** The pygmy beefalo's only trade tag was one no trader in the game reads, so nobody could buy or sell it. It now carries AnimalFarm as well, the tag of the vanilla cow, which the Belgian blue already had. That is design, not porting, and it is said here rather than buried.

The original is declared incompatible: both mods define the same two animals under the same names, and the last one loaded would win in silence. Run one or the other.

No balance value was changed, including the cow's 0.8 move speed, which is the joke of a double-muscled breed too heavy to walk.

## Optional compatibility

None of these is required, and each patch does nothing, and logs nothing, when its mod is absent.

- [A Dog Said... Animal Prosthetics 2](https://steamcommunity.com/sharedfiles/filedetails/?id=3238353862): the cow is offered the surgeries of the vanilla cow, the beefalo those of the muffalo. This mod loads before it, which its metadata declares.
- [Dogs mate (Continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=2441132298): the cow joins the cattle group, the beefalo the bison group.
- Animal Gear: the armour patch above.

Nocturnal Animals needed nothing: the cow and the muffalo it follows are both diurnal, so both animals stay diurnal.

## Credit and removal

TheGoofyOne declared no licence: no file in the mod, nothing in its About.xml, no linked repository, nothing on its Steam page. It is republished here under the usual convention for abandoned mods: full credit, a link to the original, and removal on request. If they would rather this port did not exist, say so and it comes down, no argument, no delay.

Content mod: removing it mid-save destroys any Belgian blue cow or pygmy beefalo already in the colony.

## Languages

English and French. French covers both animals, calves, attack labels and the optional Animal Gear armour.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-generated

The port work (the XML, the patches, the tests, the documentation and the pictures) was done with the help of an AI assistant, Claude (Anthropic), under human direction.

## Thanks

- TheGoofyOne, for the Belgian blue cow and the pygmy beefalo.
- SamBucher, for A Dog Said... Animal Prosthetics 2.
- Mlie, who maintains Dogs mate (Continued), and Revoluss, its original author.
- The authors of [Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), used to test the port in game. It is for development only and never a dependency of this mod.

Licence and what was carried over: see ATTRIBUTION.md in the source repository.

[Source code on GitHub](https://github.com/vbardales/Rimworld-Beef-Eaters-Renew)
```

To verify before pasting, none of it done yet: the Workshop links opened, the Dogs mate page author
line (Mlie, Revoluss), and the Animal Gear author, who is not thanked above because nothing read so far
names them (`Dylan.AnimalGear` is a packageId, not a person). The sentence "Nocturnal Animals needed
nothing" rests on the 2026-10-01 reading in `STATUS.md`.

## Images

- **Preview** (`Mod/About/Preview.png`, 896 x 504, 591 KB): composed by `node ../scripts/Render-Preview.cjs`
  from `Art/Preview-source.png`, `Art/echo-preview.png` and `Art/Preview.config.json`. Known defect noted in
  `STATUS.md`: it does not show the Belgian blue cow.
- **ModIcon** (`Mod/About/ModIcon.png`, 128 x 128): from the owner's `Art/ModIcon-source.png`, never edited
  by a session.

## Screenshots, in this order

Steam shows the first image large under the Preview. The gallery is uploaded by hand
(`OPERATIONS.md`: SteamCMD sends the header image only) from `Art/Gallery/`, the workflow's
`galleryDir`. It holds only the images to upload, in page order. Candidates are named
`<n>-candidate-<name>.png`; the session opens every capture and keeps only the serious ones before the
owner is asked (`GALLERY.md`).

| Order | File | What it shows | Source |
|---|---|---|---|
| 0 | `0-preview.png` | Copy of `Mod/About/Preview.png`, byte for byte | Done |
| 1 | `1-cow-calf.jpg` | Noon, the Belgian blue cow and her calf in the pen | Pickle `10-gallery-animals`, run v6b; accepted |
| 2 | `2-bull-face-on.jpg` | Afternoon, the bull face on at the fence, Nelim for scale | run v8; accepted |
| 3 | `3-barn-both.jpg` | Dusk, the barn: cow and beefalo side by side, the size gap | run v6b; accepted |

The beefalo evening scene (v8, torch) was refused by the owner on 2026-10-17. The farm day replaces the three accepted pictures above once its captures are read and accepted: 1 dawn at the river with the cow, 2 noon at the lily field with the cow, her calf and a jug of milk, 3 the bull face on at the trough, 4 the pygmy beefalo and its calf on the bridge, 5 the plant garden at evening with both animals side by side (the weakest, fallback in the feature header). Until then this table stays as accepted. Images are the subtitled ones; unsubtitled originals are in `Art/Gallery-clean/` (`.jpg`).
## Gallery subtitles

One English line at the bottom of each scene without an interface window (`GALLERY.md`, "Sous-titres"). `0-` carries none. Lines describe what each capture shows; the hay lies on the ground in every pen image, so no line says Nelim feeds an animal. Applied 2026-10-17 with `scripts/Add-Subtitle.ps1` from the originals in `Art/Gallery-clean/`.

| Index | File | Line |
|---|---|---|
| 1 | `1-cow-calf.jpg` | Noon: the Belgian blue cow and her calf in the pen. |
| 2 | `2-bull-face-on.jpg` | Afternoon: the Belgian blue bull, face on, at the fence. |
| 3 | `3-barn-both.jpg` | Dusk in the barn: the cow and the beefalo side by side. |

## Dependencies and DLCs

**No DLC and no mod is required.** `supportedVersions` declares 1.6 and 1.7; `modDependencies` is empty.

| Declared | packageId | Actually required |
|---|---|---|
| `loadAfter` | the six official expansions | No. Ordering only |
| `loadBefore` | `SamBucher.ADogSaidAnimalProsthetics2` | **No.** Optional; ADS 2 copies its category lists at its own last patch, so this mod must come first |
| `incompatibleWith` | `TheGoofyOne.BeefEaters` | Same defNames as the original; run one or the other |

Animal Gear and Dogs mate are named only by a `PatchOperationFindMod` or by the target def of a
`PatchOperationConditional`, so nothing is logged when either is absent or renamed.

## Manual validations of the owner

`AUDIT.md` lists them among the things a `publish` does not skip without saying which. A proposal
drawn from `TEST_SCENARIOS.md`; it is hers to change.

| # | What to look at | Why a test cannot |
|---|---|---|
| 1 | Subscribe to the item once it exists, start a game with the installed copy, tame a Belgian blue cow: the information card reads Wildness 5 % | The installed copy is what players get; the suite plays the working tree |
| 2 | A real save with either animal, then the mod removed: the animal is destroyed | A changed mod list is the game's handling |
| 3 | The gallery: which captures, in which order | A composition is a choice |
| 4 | The description pasted on the page, read once more | The page is edited by hand after creation |
| 5 | Then, and only then, the visibility, the comments subscription and "Watch all activity" (`PUBLISHING.md`) | Steam, by hand, by the owner |

## Mature content checkboxes

**None of them.** The mod adds two livestock animals. The Preview and ModIcon were opened; the three
accepted gallery images were opened on 2026-10-17; a picture of the beefalo alone is still to be shot,
and it must be opened too before this answer is final.

## Steam change notes

Written at upload time. Unlike the description, they go out again on every update. The version stands
alone on the first line, in BBCode, or the CI refuses the note.

### 1.0.0

```
[b]1.0.0[/b]

First release. Port of TheGoofyOne's Beef Eaters to the current RimWorld version.

[list]
[*]Wildness is a stat now, so both animals read 5% and 50% instead of defaulting to -1.
[*]The pygmy beefalo can be bought and sold: it carries the AnimalFarm trade tag.
[*]Optional patches for A Dog Said... Animal Prosthetics 2 and Dogs mate (Continued).
[*]The original mod is declared incompatible.
[*]English and French.
[/list]

No balance value was changed.
```

## Fail fast: the rollback target

A rollback is a **new publication**: the workflow is dispatched with `ref` = the full SHA of the last
good commit and the next patch number, and the note reads "Rolls back to <what>, because <what
failed>". Version numbers only go up and an existing tag is refused. Visibility is not touched by the CI.

**The rollback target is not chosen and cannot be yet**: no validated release has been published. The
first real target is the SHA of the 1.0.0 that passes its dry-run; write it here at that moment.

## Use This Instead

Renew mod: Mlie's Use This Instead page must be told once, after the item is public (`USE_THIS_INSTEAD.md`).
The row goes in the register as `drafted` at `publish`, then `posted` once the owner has pasted this on
[the page](https://steamcommunity.com/sharedfiles/filedetails/?id=3396308787). Old name (`Beef Eaters`) and Workshop id read through the Steam API (GetPublishedFileDetails) on 2026-10-13; the author name `TheGoofyOne` and the packageId come from `ATTRIBUTION.md` and the About.xml `incompatibleWith`. `oldVersions` is 1.4 (the page: Version 1.1, updated to 1.4).

```
Hi Mlie! A replacement for [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034]Beef Eaters[/url] (TheGoofyOne, packageId TheGoofyOne.BeefEaters, RimWorld 1.4): [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3811290251]Beef Eaters Renew (unofficial)[/url] by Nelim (packageId nelim.beefeaters, RimWorld 1.6 and 1.7). Declared incompatible with the original. Thanks for the list!
```

## Comments on other mods' pages

`WORKSHOP_COMMENTS.md` decides; it is keyed by Workshop id. To post **only once the item is public**,
under 1000 characters each, BBCode link hidden behind the mod's name, in the owner's own voice. The
drafts below are starting points to rewrite, not text to paste.

| Recipient | Id | State | What to do |
|---|---|---|---|
| A Dog Said... Animal Prosthetics 2 | 3238353862 | already `posted` | Only `Covers` changes: add `Beef Eaters Renew`. Post nothing |
| Pickle | 3791648678 | already `posted` | Add `Beef Eaters Renew` to `Covers` |
| Dogs mate (Continued) | 2441132298 | `drafted` | Draft below. Add this mod to `Covers` |
| Beef Eaters (original) | 1988048034 | to add as `drafted` | Draft below. Also the way TheGoofyOne can reach the owner |
| [HB] Beef Eaters Reskin | 2943088425 | `posted` 2026-10-14, awaiting her answer (register row added 2026-10-14) | **Permission request**, not a thank-you. Post it now (the item need not be public: the link is the GitHub repository). Nothing of the reskin is bundled before she answers |

### Dogs mate (Continued), 2441132298

```
My Beef Eaters port adds a Belgian blue cow and a pygmy beefalo. The cow joins your cattle group, the beefalo the bison group (its description makes it a bull x muffalo cross). Optional patch, silent without your mod. Thanks! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3811290251]Beef Eaters Renew (unofficial)[/url]
```

### Beef Eaters (original), 1988048034

```
Hi TheGoofyOne! I ported your two animals to the current game (unofficially, credit and a link to your page are in the description). Wildness moved to a stat in 1.6, so I fixed that on both, and I gave the pygmy beefalo a trade tag a trader actually reads. No balance value changed, the cow is still too heavy to walk. If you would rather I take it down, say so and it is gone. [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3811290251]Beef Eaters Renew (unofficial)[/url]
```

Check the last comments of each page first, and whether it takes comments, as `WORKSHOP_COMMENTS.md` asks.

### [HB] Beef Eaters Reskin (HannahBug), 2943088425: permission request

HannahBug is alive (updated July 2025) and states no licence, so her textures are not ours to copy. Her page asks to be told if someone makes a continued version of the main mod: this is that message, and the question. Her `About.xml` depends on `TheGoofyOne.BeefEaters`, which this mod declares incompatible, so her reskin cannot load next to this mod as it is. If she says yes, the same 21 file names drop into `Mod/Textures/` (credit in the description, `THANKS` and `ATTRIBUTION.md`); if she prefers to keep her mod separate, she adds `nelim.beefeaters` as an alternative and this mod only names hers.

```
Hi HannahBug! Love your HD reskin :) I made a continued version of Beef Eaters for the current game, since the original stopped at 1.4: [url=https://github.com/vbardales/Rimworld-Beef-Eaters-Renew]Beef Eaters Renew (unofficial)[/url] (nelim.beefeaters). Wildness fix, French, same animals otherwise. Your page says to tell you, so, hi! Could I ask your permission to include your textures in it, with full credit to you? Or if you would rather keep your mod separate, could it also accept my packageId as the base? Either way I will not touch your files without your yes. Thanks for the lovely cows!
```

Check her last comments first, and whether the page takes comments (`WORKSHOP_COMMENTS.md`). About 700 characters.
