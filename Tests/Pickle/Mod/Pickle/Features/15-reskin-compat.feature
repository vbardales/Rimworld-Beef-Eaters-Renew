@requires:HB.Reskin.BeefEaters @requires:nelim.pickletools.textureowner
Feature: Beef Eaters Renew — the HannahBug reskin loads next to it and overrides the textures

  AUDIT 8.f. Run only against wsl-deps.reskin.map: the local test copy of the reskin (Workshop 2943088425,
  About.xml changed to load after nelim.beefeaters) is staged next to this mod. @requires skips it in every other pass.
  Contract: the reskin loads after this mod, its textures win over ours, and this mod's defs still hold.

  Scenario: the reskin loads after this mod and its textures answer for the three animals
    Given mod "HB.Reskin.BeefEaters" is loaded
    Then mod "nelim.beefeaters" loads before "HB.Reskin.BeefEaters"
    And Nelim's Pickle Tools: the texture "BelgianBlueBull_south" is answered by the mod "HB.Reskin.BeefEaters"
    And Nelim's Pickle Tools: the texture "BelgianBlueCow_south" is answered by the mod "HB.Reskin.BeefEaters"
    And Nelim's Pickle Tools: the texture "PygmyBeefalo_south" is answered by the mod "HB.Reskin.BeefEaters"

  Scenario: with the reskin loaded, the repaired wildness still holds
    Given mod "HB.Reskin.BeefEaters" is loaded
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "Wildness" at 0.05
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "Wildness" at 0.5
