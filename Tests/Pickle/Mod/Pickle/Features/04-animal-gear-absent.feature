Feature: Beef Eaters Renew — the Animal Gear patch stays silent when Animal Gear is absent

  TheGoofyOne's own PatchOperationFindMod guards Patches/Armor.xml entirely. Animal Gear is not
  loaded in this pass, or in any other pass of this suite so far — see TESTING.md, scenario M,
  for the still-open half: nobody has staged Animal Gear to check the guard actually adds the
  armour when its mod IS present, which needs that mod's packageId/Workshop id looked up first.

  Scenario: no armour def exists, and nothing was logged about it, without Animal Gear
    Then no def "Apparel_PygmyBeefaloArmour" exists
    And no warnings from mod "nelim.beefeaters"
    And no errors were logged
