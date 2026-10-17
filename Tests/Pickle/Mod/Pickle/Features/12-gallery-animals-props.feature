# PROPS VARIANT of 10-gallery-animals (2026-10-15): same story, same hours, same frames; the pen pictures swap the loose hay for a feed trough (Mlie.AnimalFeedTrough) and a large hay bale (VanillaExpanded.VFEPropsandDecor), staged props only. Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map -Filter 12-gallery-animals-props.
# The Workshop gallery of Beef Eaters Renew, in the order it is uploaded (0- is the copy of the Preview, then workshop-1 to workshop-5).
# times since (run a840: pen frames accepted, fence and bamboo readable; run v6b: animals lost in a bare pen, so the
# bull and the beefalo were tightened on the fence). Sixth version, 2026-10-15, after the story was found not to match
# the pictures: the header said "the farmer walks the pen" while Nelim only stood beside the animals, the hours did
# not read on the light, and the scenarios were not in the order of the day.
#
# The story: one day of Nelim, farmer of a small cattle farm at the Sanctuary, told in the light of its hours. She is
# the only colonist and she WORKS: in every picture she carries hay (step `"Nelim" carries the item "Hay"`) to the
# animal beside her, so each image says "the farmer feeds her herd", never "a pawn stands next to an animal". The
# scenarios below are in the order of the day, one per image, hours differ by image and the light follows them:
#   1 dawn, 07 h, the south pen: a Belgian blue cow, Nelim brings her the morning hay (the scale, the first feeding);
#   2 noon, 12 h, the pen: a cow and her calf, Nelim brings hay to both (the calf life stage has its own texture);
#   3 afternoon, 15 h, the pen: the bull FACE ON at the fence (animals face the camera in at least one capture),
#     Nelim at his side with hay; says: this is the breed, the build is the point;
#   4 late afternoon, 17 h, the pen: the pygmy beefalo and her calf by a lit lamp, Nelim feeding them; says: the small
#     horned pack animal, and the day is ending;
#   5 evening, 19 h, the barn: the cow and the beefalo side by side, Nelim bringing the last hay; the one picture that
#     shows the difference in size (body size 6.0 against 1.0).
# Everything on the ground is vanilla Core (hay, daylilies, tall yellow grass, torch lamp); nothing staged ships with
# the mod. A prop mod may be added to the gallery pass map (wsl-deps.sanctuary.map) and credited in the description,
# THANKS and WORKSHOP_COMMENTS.md when a run shows it reads better than the vanilla prop. No optional integration
# (ADS 2, Dogs mate) is shown: neither belongs in a picture.
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
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Beef Eaters Renew Workshop gallery, props variant (feed trough, large hay bale)

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: workshop 1 - dawn in the pen, the farmer brings the Belgian blue cow her morning hay
    Given I set the hour to 7
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
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (150, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (152, 220)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (147, 218) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (143, 218) facing East
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (139, 214) to (154, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - noon, the farmer brings hay to a cow and her calf
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (153, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (155, 220)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (141, 221) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (142, 220) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (144, 218) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (149, 219) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (150, 216) facing West
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (139, 214) to (156, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - mid-afternoon, the bull faces the camera and the farmer brings him hay
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (146, 220)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male at (150, 220) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (154, 219) facing West
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (145, 217) to (155, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - late afternoon, the farmer feeds the pygmy beefalo and its calf by the lamp
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (147, 218)
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (150, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (146, 220)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 222) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (153, 220)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (153, 220) is lit
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (148, 220) facing South
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (150, 221) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (151, 219) facing West
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (145, 217) to (155, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening in the barn, the farmer brings the last hay to the cow and the beefalo
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
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (197, 233) to (205, 242)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-barn"
    And Beef Eaters Renew: the interface is shown again
