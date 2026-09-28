@requires:Dylan.AnimalGear
Feature: Beef Eaters Renew — the Animal Gear patch fires when Animal Gear is present

  The other half of 04-animal-gear-absent. TheGoofyOne's PatchOperationFindMod matches the mod by
  NAME ("Animal Gear"), not by packageId, so the only way to know it still fires is to load the real
  mod. Run only against wsl-deps.animalgear.map, which stages Animal Gear (Dylan.AnimalGear, Workshop
  1541438907, read from its own About.xml on 2026-09-28: name "Animal Gear", supports 1.6, hard
  dependency Harmony only, which every pass already stages). Animal Gear Basic is not needed: the
  patch guards on the framework's name alone. @requires skips this in every other pass. If Animal
  Gear ever renames itself, this block stops firing and nothing is logged; this scenario is what
  catches it. See TESTING.md, scenario M.

  Scenario: the guarded armour def exists once Animal Gear is loaded
    Given mod "Dylan.AnimalGear" is loaded
    Then def "Apparel_PygmyBeefaloArmour" exists
    And no errors were logged
