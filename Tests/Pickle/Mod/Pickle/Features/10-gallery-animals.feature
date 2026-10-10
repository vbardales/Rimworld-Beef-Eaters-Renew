# The Workshop gallery of Beef Eaters Renew, in the order it is uploaded (0- is the copy of the Preview, then
# workshop-1 to workshop-5). Rewritten 2026-10-10 for Nelim's Sanctuary Backlot (AUDIT.md 9.a): the zen meadow
# studio of the first tries is gone, and the session directs the series. Second version the same day, after
# reading the five captures of run 9575: frames too wide and empty, sleeping Z motes left on the ground at 06 h,
# the barn cow standing on the table. Third version after run a840: pen frames accepted (fence, bamboo, readable); a campfire left at the pen edge now cleared (area to z 222), barn beefalo moved in front of the cow instead of behind her rear (campfires at z 240 and 234, x 200 and 204).
#
# The story: one day on a small cattle farm at the Sanctuary, told in the light of its hours. Nelim, the only
# colonist, is the farmer; she walks the pen from morning to evening and each picture is one animal of the farm
# beside her, never a row of them:
#   1 early morning, 08 h, the south pen: a Belgian blue cow, hay at her feet, Nelim beside her (the scale);
#   2 mid-morning, 10 h, the pen: the bull, seen from the front, the double-muscled build that is the mod's point;
#   3 noon, 12 h, the pen: a cow and her calf (the calf life stage has its own texture);
#   4 afternoon, 14 h, the pen: the pygmy beefalo, the farm's pack animal, with its calf, Nelim feeding them;
#   5 evening, 19 h, the barn, campfires burning: the cow and the beefalo side by side, which is the one picture
#     that shows the difference in size (body size 6.0 against 1.0).
# Everything on the ground is vanilla Core (hay, daylilies); nothing staged ships with the mod. No optional
# integration (ADS 2, Dogs mate) is shown: neither belongs in a picture.
#
# Places (SanctuaryBacklot/docs/SANCTUAIRE-LIEUX.md, read 2026-10-10): `enclosure-south`, the fenced earth pen
# of the lower enclosure (x 130-168, z 204-223; fence on its rows z 204 and 223), cleared inside the fence of its
# bamboo and campfires, the north fence kept in the frame as the farm's edge; `barn`, the straw-floored barn with
# its beds and lit campfires (interior x 188-204, z 230-244; table at x 196-199, campfires at x 200 and 204 on
# z 235 and 240, read on the captures of run 9575, one cell is about 90 px at the barn frame).
# Both stay in the same corner from one picture to the next; the set dressing belongs to its picture and is removed.
#
# Each scenario is @review: a green run proves a picture was taken, not that it is worth uploading. Open every
# capture and drop one that shows the launcher, a dev-mode bar, another mod's animal, or an empty frame.
@review @en-only
Feature: Beef Eaters Renew Workshop gallery

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: workshop 1 - early morning in the pen, the Belgian blue cow and the farmer
    Given I set the hour to 8
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (140, 221) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (141, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (139, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Hay" at (150, 217)
    And Nelim's Pickle Tools: I place the decor "Hay" at (151, 218)
    And Nelim's Pickle Tools: I place the decor "Hay" at (150, 219)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (146, 218) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (141, 217) facing East
    And Nelim's Pickle Tools: I frame the rectangle from (139, 214) to (154, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-morning"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - mid-morning, the bull faces the camera
    Given I set the hour to 10
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 221) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Hay" at (143, 216)
    And Nelim's Pickle Tools: I place the decor "Hay" at (144, 216)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male at (148, 218) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (154, 217) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (141, 214) to (156, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - noon, a cow and her calf
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Hay" at (153, 217)
    And Nelim's Pickle Tools: I place the decor "Hay" at (153, 219)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (141, 221) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (142, 220) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (144, 218) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (149, 219) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (150, 216) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (139, 214) to (156, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - afternoon, the pygmy beefalo and its calf
    Given I set the hour to 14
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Hay" at (148, 216)
    And Nelim's Pickle Tools: I place the decor "Hay" at (149, 216)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (154, 221) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (155, 220) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (146, 219) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (149, 219) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (152, 218) facing West
    And Nelim's Pickle Tools: I frame the rectangle from (141, 214) to (156, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening in the barn, the cow and the beefalo side by side
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (201, 237) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (202, 235) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (202, 239) facing South
    And Nelim's Pickle Tools: I frame the rectangle from (197, 233) to (205, 242)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-barn"
    And Beef Eaters Renew: the interface is shown again
