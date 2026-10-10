# The Workshop gallery of Beef Eaters Renew, in the order it is uploaded (0- is the copy of the Preview, then
# workshop-1 to workshop-5). Rewritten 2026-10-10 for Nelim's Sanctuary Backlot (AUDIT.md 9.a): the zen meadow
# studio of the first tries is gone, and the session directs the series.
#
# The story: one day on a small cattle farm at the Sanctuary, told in the light of its hours. Nelim, the only
# colonist, is the farmer; she walks the pen from dawn to evening and each picture is one animal of the farm
# beside her, never a row of them:
#   1 dawn, 06 h, the south pen: a Belgian blue cow, hay at her feet, Nelim beside her (the scale of the animal);
#   2 morning, 10 h, the pen: the bull, seen from the front, the double-muscled build that is the mod's whole point;
#   3 noon, 12 h, the pen: a cow and her calf (the calf life stage has its own texture);
#   4 afternoon, 15 h, the pen: the pygmy beefalo, the farm's pack animal, with its calf, Nelim feeding them;
#   5 evening, 19 h, the barn, torches burning: the cow and the beefalo side by side, which is the one picture
#     that shows the difference in size (body size 6.0 against 1.0).
# Everything on the ground is vanilla Core (hay, daylilies); nothing staged ships with the mod. No optional
# integration (ADS 2, Dogs mate) is shown: neither belongs in a picture.
#
# Places (SanctuaryBacklot/docs/SANCTUAIRE-LIEUX.md, read 2026-10-10): `enclosure-south`, the fenced earth pen
# of the lower enclosure (x 130-168, z 204-223), cleared inside the fence of its bamboo and campfires; `barn`,
# the straw-floored barn with its animal beds and lit campfires (interior x 188-204, z 230-244). Both stay
# in the same corner from one picture to the next; the set dressing belongs to its picture and is removed.
# Cell choices are first guesses read from the empty photographs of the places: this is the first real run, the
# images are to be looked at before anything is moved to Art/Gallery/.
#
# Each scenario is @review: a green run proves a picture was taken, not that it is worth uploading. Open every
# capture and drop one that shows the launcher, a dev-mode bar, another mod's animal, or an empty frame.
@review @en-only
Feature: Beef Eaters Renew Workshop gallery

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: workshop 1 - dawn in the pen, the Belgian blue cow and the farmer
    Given I set the hour to 6
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: the area from (134, 208) to (164, 220) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (137, 211) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (138, 209) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (136, 209) fully grown
    And Nelim's Pickle Tools: I place the decor "Hay" at (151, 213)
    And Nelim's Pickle Tools: I place the decor "Hay" at (152, 214)
    And Nelim's Pickle Tools: I place the decor "Hay" at (151, 215)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (147, 214) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (142, 213) facing East
    And Nelim's Pickle Tools: I frame the rectangle from (136, 208) to (158, 220)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - morning, the bull faces the camera
    Given I set the hour to 10
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: the area from (134, 208) to (164, 220) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (156, 210) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (157, 209) fully grown
    And Nelim's Pickle Tools: I place the decor "Hay" at (143, 212)
    And Nelim's Pickle Tools: I place the decor "Hay" at (144, 212)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male at (148, 214) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (154, 214) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (140, 208) to (158, 220)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - noon, a cow and her calf
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: the area from (134, 208) to (164, 220) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Hay" at (152, 213)
    And Nelim's Pickle Tools: I place the decor "Hay" at (152, 215)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (138, 210) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (144, 214) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (149, 215) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (150, 211) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (138, 208) to (158, 220)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - afternoon, the pygmy beefalo and its calf
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: the area from (134, 208) to (164, 220) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Hay" at (148, 212)
    And Nelim's Pickle Tools: I place the decor "Hay" at (149, 212)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (156, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (157, 216) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (146, 215) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (149, 215) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (152, 214) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (140, 210) to (158, 219)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening in the barn, the cow and the beefalo side by side
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: all animals are removed
    And Beef Eaters Renew: time is paused
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (198, 237) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (202, 237) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (200, 241) facing North
    And Nelim's Pickle Tools: I frame the rectangle from (194, 232) to (205, 243)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-barn"
    And Beef Eaters Renew: the interface is shown again
