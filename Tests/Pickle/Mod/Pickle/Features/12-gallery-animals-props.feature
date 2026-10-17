# THE FARM DAY, seventh version (2026-10-18). The earlier versions all stood in the same bare dirt pen: five pictures of
# brown ground, small animals, a pawn in the corner (accepted 1 to 3 of run v6b/v8 read as one picture repeated). The
# director's verdict: a series that tells a day must LEAVE the pen. So the day now walks through the farm, one place per
# picture, each place chosen on its empty photograph (SanctuaryBacklot/Art/Gallery, candidates 12, 16, 24, 34, 36):
#   1 dawn, 07 h, FOG, `right-bank` (green grass, the river and the first light): Nelim leads the Belgian blue cow down to
#     the water, hay in her arms; says: the breed is big, and the day begins;
#   2 noon, 12 h, `flower-garden` (the orange lily field as backdrop, torches, a bed): the cow and her calf on the path in
#     front of the field, Nelim with hay; says: the calf has its own look, the farm is alive;
#   3 mid-afternoon, 15 h, the pen `enclosure-south`, the one place kept (the fence reads as "farm"): the bull FACE ON at
#     the feed trough, the hay bale off the fence row; says: this is the build, the point of the breed;
#   4 late afternoon, 17 h, `river-bridge` (the wooden bridge over the river): the pygmy beefalo and its calf cross the
#     bridge behind Nelim; says: the small horned pack animal, built for the road;
#   5 evening, 19 h, `barn` (accepted composition of run v8, kept): the cow and the beefalo side by side, the day ends;
#     the one picture that shows the size difference (body size 6.0 against 1.0).
# Nelim is dressed in every picture (Apparel_Pants, BasicShirt, CowboyHat dyed), carries hay, has her own face last; her
# clothes follow the day (catalogue PickleTools/ColonistRace/docs/CATALOGUE-APPAREL.md): a duster over the shirt in the
# dawn fog, shirt and hat at noon and in the afternoon, a green jacket at the bridge and in the barn as the evening cools.
# Two lit vanilla torches (TorchLamp, as in run v8) stand at the bridge ends in picture 4.
# Ground, plants, fences, torches are vanilla Core; the trough (Mlie.AnimalFeedTroughSmall) and the large bale
# (VanillaExpanded.VFEPropsandDecor) are staged props from the props map. Nothing staged ships with the mod.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map -Filter 12-gallery-animals-props
# Each scenario is @review: open every capture, drop one that shows the launcher, a dev bar, another mod's animal or an
# empty frame. Cell coordinates of places 1, 2 and 4 are read on photographs (about 33 and 72 px per cell), unverified:
# the first run corrects them.
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Beef Eaters Renew Workshop gallery, the farm day (props variant)

  Background:
    Given the save "Nelims-tribe" is loaded

  Scenario: workshop 1 - dawn fog on the river bank, the farmer leads the Belgian blue cow down to the water
    Given I set the hour to 7
    And I set the weather to "Fog"
    And Nelim's Sanctuary: I am at the sanctuary "right-bank"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (147, 133) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (150, 132) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (105, 78, 52)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (140, 128) to (156, 137)
    And Nelim's Sanctuary: Nelim has her own face
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - noon at the lily field, the cow and her calf on the path
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (151, 102) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (155, 102) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (157, 101) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (105, 78, 52)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (146, 98) to (162, 106)
    And Nelim's Sanctuary: Nelim has her own face
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - mid-afternoon in the pen, the bull faces the camera at the trough
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
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (105, 78, 52)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (145, 217) to (155, 224)
    And Nelim's Sanctuary: Nelim has her own face
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - late afternoon on the bridge, the pygmy beefalo and its calf follow the farmer
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (140, 126)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (140, 126) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (128, 121)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (128, 121) is lit
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (133, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (131, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (136, 124) facing East
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (105, 78, 52)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 112, 82)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (127, 119) to (141, 129)
    And Nelim's Sanctuary: Nelim has her own face
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
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (105, 78, 52)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 112, 82)
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (197, 233) to (205, 242)
    And Nelim's Sanctuary: Nelim has her own face
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-barn"
    And Beef Eaters Renew: the interface is shown again
