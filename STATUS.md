---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
mod:          Beef Eaters Renew (unofficial)
packageId:    nelim.beefeaters
repo:         Rimworld-Beef-Eaters-Renew
remote:       https://github.com/vbardales/Rimworld-Beef-Eaters-Renew.git
visibility:   public
detached:     yes
workflow_stage: settings[1.0.0]
code_review_sha: ecd49e2e370427ed67cff68ea658cad8ce165d62
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
upstream_mod_remotes: N/A
dependencies: none
workshop_required_items: n/a, no mandatory Workshop dependency (About.xml has no modDependencies)
ecosystem_line: 1.0
showcase:     complete
tested_on:     2026-10-02 cefade3 (min EN/FR, textures, original, Animal Gear, ADS 2 + Dogs mate, green after rerun) and 2026-10-10 bedb34a (11-def-values 9/9), RimWorld 1.6 (WSL); gallery pending; and 2026-10-13 (p17-beefeaters-01-wildness-defs, ticket 88c2, 2/2) RimWorld 1.7 (WSL, validated by Audit); and 2026-11-16 036c22b (476e, 06-labels-french 2/2) and 2026-11-17 ab966fd (ca9d, 15-reskin-compat 2/2), RimWorld 1.6 (WSL)
tested_1_7:   yes
workshop:     3811290251
remaining:
  - REPLAY 2026-11-22 (5.a to 5.g): write the settings inventory and decision (no C#, no settings expected: verify no empty page or MainButtons shortcut), a Settings audit section, settings_audit stays not_applicable once justified.
  - CLEANUP 2026-11-18 (14.c to 14.e): STATUS.md, PUBLICATION.md, TESTING.md and Docs/CLAUDE.md cleaned (removed text in Docs/runs/status-journal-2026-11c.md and Docs/runs/publication-testing-history-2026-11-18.md; Docs/PROTOCOLS-READ.md deleted, replaced by protocols_read_sha). 14.d: no branch but `main`, nothing to delete. WSL cleanup DONE 2026-11-18 under the machine lock: Animal Gear 1541438907 removed from ~/workshop-cache (the original 1988048034 was not in the WSL cache); kept Dogs mate 2441132298, ADS 2 3238353862 and the 32 gallery ids; PiI scan of 727 wsl-deps maps: no other mod names 1541438907 or 1988048034. Both Steam items unsubscribed by PiI 2026-11-18 (kept protected: maps animalgear and incompat-original serve scenarios 08 and 05 of the next non-regression). Stage moved to dormant[1.0.0] (14.e).
  - RESKIN STUDY 2026-11-19: Cow Variety 2905859638, Cows Retexture 3202197467 and [HB] Pygmy Muffalo Reskin 2943377809 do not apply to BelgianBlueCow or PygmyBeefalo (vanilla Cow, or dismarzero Pygmy muffalo). Red cross set in `docs/inventory/ecosystem-steam/BeefEatersRenew.md` (protocols root). PiI told to unprotect the 3 ids; no answer needed. Nothing to capture.
  - HANNAHBUG: permission request for her HD reskin (Workshop 2943088425) posted by Virginie 2026-10-14, still unanswered; her textures are not bundled. Yes: drop her 21 same-named PNGs into `Mod/Textures/` with credit (description, THANKS, ATTRIBUTION.md). No answer or no: nothing changes.
session:      local_31dd62a7-7e6f-466f-9966-b470033a5a45
updated:      2026-11-22 (replay declareDependencies.., stage settings[1.0.0]; older history in git)
publication_changelog_review_sha: c9243f50f02778107ad0324859c0816ee09caed1
thanks_drafted_line: 1.0
echo_review_sha: 696818791f049767c05025f77988f70042be3385
social_preview_sha256: b37b9090bde9d351414dcbdf05a3134dd586ff75eab7a51e44dbf809d0798744
protocols_read_sha: 53d038b7773fde136db9faa3a2808640f32c8fd6
---
# Beef Eaters Renew — status

Published 1.0.0 on 2026-11-18 (tag `v1.0.0` on `50785f3`, Workshop 3811290251, public), non-regression green 29/29 (`Docs/runs/nonreg-1.0.0-2026-11-18.md`). Older dated sections are in `Docs/runs/status-journal-2026-11c.md` (2026-11-17 to 2026-11-18), `status-journal-2026-11b.md` (2026-11-12 to 2026-11-17), `status-journal-2026-11.md` (2026-11-06 to 2026-11-09), `status-journal-2026-10b.md`, `status-journal-2026-10.md`.

## NSB

Rules (owner, 2026-11-05): everything in NSB is free; a colonist or domestic animal outside NSB needs express validation (mod animals authorized by default); a colonist's properties change only with express validation; every outfit is free. Gallery done 2026-11-17 (images 1 to 6 in `Art/Gallery/`); places, outfits and the sync log are in the journal.

## Ecosystem, 2026-11-12 (AUDIT 8.0, scan of 2026-11-12)

Ecosystem (Steam, 2026-11-22, delta): parent Beef Eaters 1988048034; no new fork, patch or translation. Source: PiI, `docs/inventory/ecosystem-steam/BeefEatersRenew.md`, section "Delta 2026-11-22".

| packageId | type | relation |
|---|---|---|
| `Mlie.NoVersionWarning` | link | its `1.5/ModIdsToFix.xml` lists the original id (matched_on original-id): version-warning helper, nothing to play or patch. |


## Dependencies and integrations, 2026-11-22 (AUDIT 4.f, 4.g; revision ecd49e2, Mod last changed 2026-11-18)

Hard dependencies: none (`modDependencies` absent, `dependencies: none`). DLC required: none; `loadAfter` lists Core and the five DLCs for ordering only. Incompatible: `TheGoofyOne.BeefEaters` (the original, same defNames). `loadBefore`: `SamBucher.ADogSaidAnimalProsthetics2`.

Optional integrations, from `Mod/About/OptionalCompat.xml` (Animal Gear, Dogs mate) plus ADS 2 declared by `loadBefore`:

| Mod | Workshop | Status | Reason |
|---|---|---|---|
| A Dog Said... Animal Prosthetics 2 (`SamBucher.ADogSaidAnimalProsthetics2`) | 3238353862 | patched, `Patches/ADS2.xml` | vanilla Cow is in ADS_Cat2 and ADS_Cat1, Muffalo in all three: BelgianBlueCow gets Cat1 and Cat2, PygmyBeefalo Cat1, Cat2 and Cat3 |
| Dogs mate (Continued) (`Mlie.DogsMate`) | 2441132298 | patched, `Patches/DogsMate.xml` | BelgianBlueCow into group `Cow`, PygmyBeefalo into group `Bison` (bull and muffalo cross) |
| [XND] Nocturnal Animals (Continued) (`Mlie.XNDNocturnalAnimals`) | 2269731409 | not applicable, no patch | its Core patches name neither Cow nor Muffalo: both analogues stay diurnal, so do these animals |
| Better Crossbreeding (`DizzyEevee.BetterCrossbreeding`) | 3520675842 | not applicable, no patch | no vanilla analogue crosses: a crossbreed would be new design, not porting; revisit on Virginie's call (decided 2026-10-01) |
| Animal Gear (`Dylan.AnimalGear`) | 1541438907 | patched, `Patches/Armor.xml` | armour patch carried over from the original, guarded by `PatchOperationFindMod` |

Check: `Check-OptionalCompat.ps1` OK (2 declared, 1 patched target ordered by metadata).
