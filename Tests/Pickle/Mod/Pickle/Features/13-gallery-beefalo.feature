# BEEFALO REPLACEMENT SHOTS (2026-10-17). The evening beefalo picture (workshop 4, run v8, torch) was refused by the owner:
# the animals are small, nothing reads as evening, the pen is bare. Two tighter compositions of the same picture, in the
# props map (feed trough, large hay bale); no torch, daylight (the hours of the pen pictures do not read on the light
# anyway). Same corner as the pen pictures: enclosure-south. A: the adult beefalo FACE ON at the trough, Nelim beside
# it. B: the beefalo and its calf at the hay bale, the frame closed to a 9 x 6 rectangle so they fill the image.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map -Filter 13-gallery-beefalo
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Beef Eaters Renew Workshop gallery, pygmy beefalo replacement shots

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: beefalo A - late afternoon, the pygmy beefalo faces the camera at the trough, the farmer beside it
    Given I set the hour to 16
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (150, 219)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (154, 219)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (147, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 217) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (150, 217) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (152, 218) facing West
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (146, 215) to (155, 221)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "beefalo-a-face-on"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: beefalo B - late afternoon, the pygmy beefalo and its calf at the hay bale
    Given I set the hour to 16
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (149, 220)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (154, 219)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (146, 219)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 217) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (149, 218) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (151, 218) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (150, 216) facing South
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (146, 215) to (155, 221)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "beefalo-b-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
