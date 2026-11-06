# THE DAY THE HERD MOVED IN, eleventh version (2026-11-06, scenes 2 to 5 reworked), shotlist written against GALLERY.md "Shotlist : criteres d'une scene a 4/5" (a to k)
# and SanctuaryBacklot/Docs/GALERIE.md. Director pass of v10 by an Opus sub-agent (2026-10-23), second director pass on v11 (2026-11-06, one call), remarks kept below.
# THE SCENARIOS BELOW FOLLOW IT (not played; cells and forced-job steps unverified until the first run). Scene 1 is unchanged except its face lines.
#
# STORY (k). Nelim buys a small herd at the trader's (a Belgian blue cow and her calf, a Belgian blue bull, a pygmy beefalo and its calf) and settles it
# on her farm in the Sanctuary in one day: 07, 12, 15, 17, 19 h, one start hour per picture, 2,500 ticks per game hour, same day, fog at dawn then clear.
#  1 dawn   WIDE opener: the cow is led down the river bank to drink, the herd has arrived;
#  2 noon   CLOSE: in the lily field Nelim milks the cow while the calf waits;
#  3 afternoon  MEDIUM: the bull walks face on to the trough in the pen while she brings the hay;
#  4 late afternoon  MEDIUM: the pygmy beefalo and its calf follow her over the bridge, a tuft of wool in her hands;
#  5 evening  CLOSER: on the bare clearing the whole herd gathers at dusk, the cow and the beefalo walk in toward the hay she sets down (the calf and the bull wait behind).
# Variety (root size N): wide 5.06 (1), close 2.8 (2), medium 3.5 (3), medium 3.0 (4), medium-wide 3.6 (5); no two neighbours alike. Rhythm: the frames never repeat the same width twice in a row.
#
# NELIM (d), ONE OUTFIT FOR THE WHOLE DAY (continuity rule 2026-10-23). Fixture kit (corset, trousers; not an NSB wardrobe row, outfits are free, rule 4 of 2026-11-05);
# Apparel_CowboyHat wheat rgb (205, 175, 105) on all five pictures, hair Roo_Royal_LongHD (NSB canon under a hat, NELIM-PROFIL.md) loose under it (Hat Hair Control,
# lordfelix.HatHairControl 3760821540, seed copied from PickleTools Tests/Pickle/config/hat-hair-hhc with showHairDefs = Apparel_CowboyHat, hideHatsIndoors false).
# EXPRESSION (owner, 2026-11-06, quoted in STATUS.md): she smiles as in the canon by default. Canon face = `MouthLipsSmirk` + `LidCheerful`: her own face, then
# `mouth is "MouthLipsSmirk"` and `lids are "LidCheerful"`, then the capture, no tick between; `face is held neutral` is dropped (NPT order 2026-10-25). Map at 20 degrees.
# `MouthLipsSmirk` is "absent from the catalogue" in NELIM-PROFIL (a proposition): if the step refuses it, it lists the valid mouths, the first run corrects.
# The one outfit change is justified by the day: Apparel_Duster oat brown rgb (112, 96, 78) against the dawn fog (1), off while the day is warm (2, 3), back on in the late wind (4, 5).
# ANIMALS: not NSB animals, the mod's own; validated by the owner 2026-11-06 ("Les animaux du mod DOIVENT etre dans la gallery"). None dressed (Apparel_LargeAnimalScarf is
# Rain's NSB identity, Animal Gear fit unverified).
#
# HOW THE GESTURE IS OBTAINED (e), scenes 2 to 5: spawn and place everything, give Nelim her kit; `I let 60 ticks pass` then `time is paused` (set-up, freezes nothing);
# give the forced jobs (`is forced into the job "Milk"`, `is forced to walk to`, `is forced to haul`); then `I advance the paused game by exactly N ticks` (N of the line,
# TickManager.DoSingleTick, no overshoot); then the camera, her face, the screenshot. Fallback if the advance step is not in the run's assembly:
# `I let N ticks pass` then `time is paused`. Haul spawns its item beside the pawn (StagingSteps.ForcedHaul), so no Hay needs placing; the target cell must be standable.
#
# PLAN, one line per picture (a time, b decor, c living, d look, e action and instant, f composition, g what it says, j the mod at 268 px).
# Thumbnail arithmetic (j): a cell is 540 / N px at 1080p, the Steam thumbnail is 268 px wide, so x 0.14 of the 1920 px frame.
#  1 DAWN 07 h, Fog, `right-bank`, WIDE (unchanged). a: 07 h, fog, 60 ticks set-up then 60 ticks of walk. b: TorchLamp lit (146,134), Plant_Daylily fully grown
#    (145,131), removed after. c: Belgian blue cow "Rosa" walking West toward the river, Nelim beside her. d: duster + hat, smile. e: Nelim forced to walk to (141,132),
#    the cow follows within 2 cells; INSTANT: the first steps toward the water, the herd has just come down from the road; pause after 60 ticks. f: rectangle (136,128)-(154,138),
#    18 x 10, N 5.06, torch as the warm spot, fog behind. g: the herd has arrived, the breed is big. j: the cow about 3 to 4 cells long, 107 px per cell, so 50 to 60 px in the thumbnail.
#  2 NOON 12 h, Clear, `flower-garden`, CLOSE. a: 12 h, clear, 60 ticks set-up then 150 ticks of milking. b: the lily and rose field behind (vanilla), two Plant_Rose fully
#    grown in the foreground at (152,106) and (158,106), removed after. c: cow "Rosa" (154,107) facing East, calf "Petite" (157,108) facing West at her flank. d: hat only,
#    duster off, smile (Nelim looking down at the cow). e: forced job `Milk` on Rosa from (154,108), INSTANT: the milk bar is half full, the calf waits its turn; advance 150 ticks.
#    f: the camera frames the head of "Nelim" and "Rosa" at root size 2.8 (10 x 5.6 cells; the ghost building x 150-152 z 100-102 and the bed x 157.5-159.5 z 101.5-103.5 stay
#    out), cow and calf left, Nelim right with her face. g: the milk the breed gives. j: 193 px per cell, 27 px in the thumbnail, the cow about 94 px, Nelim's face about 10 px.
#    RISK: the Milk job may refuse a cow whose milk is not full (unverified): fallback, the same pose with `is forced into the job "Wait"` beside the cow, the Milk item stated in the subtitle only.
#  3 AFTERNOON 15 h, Clear, `enclosure-south`, MEDIUM. a: 15 h, clear, area (132,206)-(166,222) cleared, 60 ticks set-up then 25 ticks of walk. b: AnimalFeedTroughSmall
#    (148,218), VFEPD_HayBaleLarge (146,220), props map, nothing ships. c: bull "Taureau" spawned at (149,222) facing South, the one face-on animal of the series (c). d: hat only,
#    duster off, smile. e: the bull is forced to walk to (149,219) (toward the trough and the camera); Nelim, at (144,219), is forced to haul 1 of the item "Hay" to (147,218) (the cell
#    west of the trough; the trough cell itself is not standable); INSTANT: the bull is caught mid-stride, face on, as she brings the hay to the trough; advance 25 ticks (about 1.5 cells).
#    f: the camera is centered on "Taureau" at root size 3.5 (12.5 x 7 cells, 154 px per cell), fence on top, trough and bale as the two warm masses. g: the build, the point of the breed.
#    j: 21 px per cell in the thumbnail, the bull about 2.2 cells = 47 px. RISK: bare dirt; Nelim at 4 cells from the bull may be cut at the frame edge (the frame spans x 143 to 155).
#  4 LATE AFTERNOON 17 h, Clear, `river-bridge`, MEDIUM. a: 17 h, clear, wind, 60 ticks set-up then 40 of walk. b: two Plant_YellowTallGrass fully grown at the bridge banks (129,123)
#    and (139,127) (cells read on the v9 capture, unverified), no torch (torches belong to 1 and 5). c: pygmy beefalo "Pip" (adult female) at (134,124) facing East, calf "Minus"
#    (male, life stage 0) at (132,124) facing East. d: duster + hat, smile. e: Nelim at (136,124) facing East is forced to haul 1 of the item "WoolMuffalo" to (141,124) (the mod's wool,
#    kept as the mod's subject); Pip is forced to walk to (139,124) and Minus to (137,124), so they trail behind her at fixed offsets (no `follows`, not deterministic); INSTANT: halfway
#    over the bridge, the calf a step behind its mother; advance 40 ticks. f: the camera frames the head of "Nelim" and "Pip" at root size 3.0 (10.7 x 6 cells, 180 px per cell), the bridge
#    as a horizontal band. g: the small horned pack animal and its wool. j: 25 px per cell in the thumbnail, the beefalo about 30 px, the calf about 18 px, white on brown planks.
#    RISK: banks may be water at the chosen grass cells; the v9 capture read dim and grey at 17 h (river rendering, unverified): read it on the first capture.
#  5 EVENING 19 h, Clear, `bare-clearing` (195,152), MEDIUM-WIDE, closing (moved from `plant-garden`: NPT advice 2026-10-25, bare brown earth, flower border, about 14 x 14 free, avoids
#    the grass where the cow melted). a: 19 h, clear, 60 ticks set-up then 30 of walk. b: TorchLamp lit (191,151) and (201,151), Plant_YellowTallGrass fully grown (192,151) and (200,151),
#    VFEPD_HayBaleLarge (201,156). c: cow "Rosa" at (192,153) facing East, forced to walk to (195,153); pygmy beefalo "Pip" at (198,157) facing South, forced to walk to (198,154) (face on,
#    toward the camera); calf "Petite" (life stage 0) at (193,155) facing East; bull "Taureau" at (191,156) facing East, the herd gathered. d: duster + hat (kept on: outdoors), smile.
#    e: Nelim at (199,153) facing West is forced to haul 1 of the item "Hay" to (196,152) between the two walking animals; INSTANT: the cow and the beefalo are mid-stride toward the hay,
#    the herd is home; advance 30 ticks. f: the camera frames the head of "Nelim" and "Pip" at root size 3.6 (12.8 x 7.2 cells, 150 px per cell, x 189.6 to 202.4), torch light on the white
#    cow. g: the herd has moved in, both huge and small. j: 21 px per cell in the thumbnail, the cow about 3.5 cells = 74 px, the beefalo about 25 px.
#    RISK: crowded frame, the bull at the left edge may be cut; cow on bare earth should hold. Scenes 3 and 5 both carry Hay (3 to the trough, 5 to the herd): kept, the gesture differs.
#
# DIRECTOR PASS ON v11 (Opus, 2026-11-06), KEPT: Nelim next to Rosa for the Milk job and a longer pause (150 ticks) (2); bull walks toward the trough and the camera, not away (3);
# the trough is not a standable haul cell, so the haul goes to the cell west of it and the bull's path stays on the east side (3); forced walks with fixed offsets instead of `follows`
# (4); frames kept at N 3.6 or less so her face reads; Pip walks South toward the camera and Rosa East, with the calf and the bull added so the herd gathers (5); a tick count written
# for every pause. KEPT WITH A DIFFERENT CHOICE: the wool stays in 4 (the mod's wool is what the scene shows; the director found it off-story); the frame of 2 uses the head step
# of Nelim and Rosa (the director's centre (154,106) at N 2.8 cannot be set by a step), so the cells were moved instead; scene 5 at N 3.6 not 3.0 to hold the gathered herd.
# NOT verified by anyone: that the forced-job, walk, haul, advance and head-frame steps were ever played (NPT announced them 2026-10-23 and 25); `MouthLipsSmirk` as a valid mouth;
# the milk fullness gate; every cell outside the pen (read on photographs).
#
# Ground, plants, fences, torches are vanilla Core; trough (Mlie.AnimalFeedTroughSmall) and bale (VanillaExpanded.VFEPropsandDecor) are staged
# props from the props map, never shipped. The item names Milk and WoolMuffalo are those of Mod/Defs/Race_*.xml of this mod.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map (Hat Hair Control, Roo hair) -Filter 12-gallery-animals-props
# Each scenario is @review: open every capture, drop one that shows the launcher, a dev bar, another mod's animal or an empty frame.
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.camerazoom
Feature: Beef Eaters Renew Workshop gallery, the day the herd moved in (props variant)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: workshop 1 - dawn fog on the river bank, the farmer walks the Belgian blue cow down to the water
    Given I set the hour to 7
    And I set the weather to "Fog"
    And Nelim's Sanctuary: I am at the sanctuary "right-bank"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (146, 134)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (146, 134) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 131) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (147, 133) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (150, 132) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Rosa" follows "Nelim" within 2 cells
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (141, 132)
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I frame the rectangle from (136, 128) to (154, 138)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - noon in the lily field, the farmer milks the cow while the calf waits
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (152, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (158, 106) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (154, 107) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (157, 108) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (154, 108) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Wait"
    And Nelim's Pickle Tools: I advance the paused game by exactly 150 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Rosa" at root size 2.8
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - mid-afternoon in the pen, the bull walks face on to the trough as she brings the hay
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (146, 220)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (149, 222) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (144, 219) facing East
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Taureau" is forced to walk to (149, 219)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Hay" to (147, 218)
    And Nelim's Pickle Tools: I advance the paused game by exactly 25 ticks
    And Nelim's Pickle Tools: the camera is centered on "Taureau" at root size 3.5
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - late afternoon on the bridge, the pygmy beefalo and its calf follow the farmer over, wool in hand
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (129, 123) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (139, 127) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (134, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male named "Minus" in life stage 0 at (132, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (136, 124) facing East
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Pip" is forced to walk to (139, 124)
    And Nelim's Pickle Tools: "Minus" is forced to walk to (137, 124)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "WoolMuffalo" to (141, 124)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Pip" at root size 3.0
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening on the bare clearing, the herd gathers and the cow and the beefalo walk in toward the hay
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (191, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (191, 151) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (201, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (201, 151) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (192, 151) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (200, 151) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (201, 156)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (192, 153) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (198, 157) facing South
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (193, 155) facing East
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (191, 156) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (199, 153) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (195, 153)
    And Nelim's Pickle Tools: "Pip" is forced to walk to (198, 154)
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Hay" to (196, 152)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Pip" at root size 3.6
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-evening"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
