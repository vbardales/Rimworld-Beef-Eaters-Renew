# THE REMODELLED HERD, v3 2026-11-23 (decor added, orientations vary: cow face on, bull profile, Pip from behind), v2 (v1 failed on cell (152, 220)) 2026-11-17 (owner, 2026-11-17: the five farm-day images are validated, but at least one picture must show the HannahBug reskin, Workshop 2943088425, loaded after this mod).
# STORY (k). Bonus frame 6 of the gallery, outside the one-day story of `12-gallery-animals-props.feature` (07, 11, 13, 15, 17 h): the same herd at the same trough, drawn with the HD textures of the reskin.
# Played only against `wsl-deps.sanctuary-props-reskin.map` (local copy of the reskin, Tests/Pickle/Reskin/HB, never committed); @requires skips it in every other pass. Permission of HannahBug is still unanswered: nothing of hers is bundled, the image is a capture of her mod running next to ours.
# NELIM (d): same outfit as the farm day (Apparel_Pants dyed rgb (110, 85, 60), Apparel_Corset dyed rgb (232, 224, 208), Apparel_CowboyHat dyed rgb (205, 175, 105)), hair Roo_Royal_LongHD, smile (MouthLipsSmirk, LidCheerful), duster off (warm hours). ANIMALS: the mod's own, validated 2026-11-06.
# HOW THE GESTURE IS OBTAINED (e): spawn and place everything, give Nelim her kit; time is paused; give the forced walks; `I advance the paused game by exactly 30 ticks`; then the frame, her face, the screenshot.
#
# PLAN, one line per picture (a time, b decor, c living, d look, e action and instant, f composition, g what it says, j the mod at 268 px).
#  1. EARLY AFTERNOON 14h, Clear, `enclosure-south`, MEDIUM, bonus. a: 14h, clear, area (132, 206)-(166, 222) cleared, 60 ticks set-up then 30 of walk. b: AnimalFeedTroughSmall (148, 218), VFEPD_HayBaleSmall (146, 218), Hay (150, 218), VFEPD_FoodBox (152, 219), TorchLamp lit (142, 221), Plant_YellowTallGrass fully grown (142, 217), (143, 219), (153, 217), Plant_Daylily fully grown (145, 216), (151, 216).
#        c: cow "Rosa" spawned (145, 221) facing South, forced to walk to (145, 219); bull "Taureau" spawned (150, 219) facing West (profile, eating at the trough end, no walk); pygmy beefalo "Pip" spawned (151, 221) facing North (seen from behind, no walk); cow face on, bull in profile, Pip from behind (orientations vary), the three animals the reskin repaints. d: hat, smile, duster off. b adds VFEPD_HayBaleLarge (144, 216) and VFEPD_WoodenLogs (153, 221) NEW so the ground is not bare.
#        e: Nelim at (147, 221) facing South is forced to walk to (147, 220); INSTANT: the herd reaches the trough in a row facing the camera, she walks in with them; advance 30 ticks. f: rectangle (144, 217)-(153, 221), 10 x 5 cells, the three animals in a row at the trough, Nelim in front.
#        g: the herd gathers at the trough in the afternoon, drawn with the HD reskin; readable by the cow face on, the bull in profile at the hay, Pip from behind, the trough and hay, Nelim among them. j: cow about 54 px, bull about 54 px, Pip about 30 px at 268 px. RISK: new cells (145, 219), (150, 219), (151, 221), (144, 216), (153, 221) unverified; v1 failed ticket 9c9c: (152, 220) not standable, Pip moved to column 151; the reskin may draw an animal smaller than the original texture; Nelim about 13 px (she is not the subject here).

@review @en-only @requires:HB.Reskin.BeefEaters @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.camerazoom
Feature: Beef Eaters Renew Workshop gallery, the herd drawn with the HannahBug reskin (bonus frame)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: workshop 6 - early afternoon in the pen, the herd gathers at the trough, drawn with the HannahBug reskin
    Given I set the hour to 14
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleSmall" at (146, 218)
    And Nelim's Pickle Tools: I place the decor "Hay" at (150, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_FoodBox" at (152, 219)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (142, 221)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (142, 221) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (142, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (153, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (144, 216)
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenLogs" at (153, 221)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (145, 221) facing South
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (150, 219) facing West
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (151, 221) facing North
    And Nelim's Pickle Tools: "Nelim" stands at (147, 221) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (110, 85, 60)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Corset" dyed rgb (232, 224, 208)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (145, 219)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (147, 220)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: I frame the rectangle from (144, 217) to (153, 221)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Sanctuary: the appearance of "Nelim" is logged
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-6-the-reskinned-herd"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
