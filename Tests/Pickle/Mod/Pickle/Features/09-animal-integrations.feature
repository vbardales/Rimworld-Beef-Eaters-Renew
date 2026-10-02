@requires:Mlie.DogsMate
Feature: Beef Eaters Renew — the optional ADS 2 and Dogs mate patches apply cleanly when those mods are loaded

  Patches/ADS2.xml and Patches/DogsMate.xml are guarded by their own targets. Run only against
  wsl-deps.animals.map, which stages A Dog Said... Animal Prosthetics 2 (3238353862) and Dogs mate
  (Continued) (2441132298). @requires skips this in every other pass. ADS 2's lists are abstract
  RecipeDefs the game never keeps, so for ADS 2 the checkable claim is that loading both mods
  logs nothing; the Dogs mate group defs are real defs, so the patch is named. See STATUS.md,
  The step names a mod by its display name, not its packageId (run c166, 2026-10-02: "patched by Dogs mate (Continued), Beef Eaters Renew (unofficial)").
  "Animal integrations decided 2026-10-01".

  Scenario: both optional mods load alongside this one without a word
    Given mod "SamBucher.ADogSaidAnimalProsthetics2" is loaded
    And mod "Mlie.DogsMate" is loaded
    Then no warnings from mod "nelim.beefeaters"
    And no errors were logged

  Scenario: the cattle group was patched by this mod
    Then def "Cow" was patched by mod "Beef Eaters Renew (unofficial)"
