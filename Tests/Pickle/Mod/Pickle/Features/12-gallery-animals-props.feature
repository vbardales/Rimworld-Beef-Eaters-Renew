# THE DAY THE HERD MOVED IN, twelfth version (2026-11-06, scenes 1, 3, 4, 5 reworked after ticket 0096, scene 2 refiled after dbbe), written against GALLERY.md "Shotlist : criteres d'une scene a 4/5" (a to k)
# and SanctuaryBacklot/Docs/GALERIE.md. Director passes by an Opus sub-agent: v10 (2026-10-23), v11 and v12 (2026-11-06, one call each), remarks kept below.
# THE SCENARIOS BELOW FOLLOW IT (not played; cells and forced-walk steps unverified until the first run).
#
# WHAT 0096 AND dbbe TAUGHT (read 2026-11-06): Nelim's face and smile did not read in 1, 3, 4, 5 (cow overlapped her, carried Hay or WoolMuffalo hid her face, she sat at the frame corner, the herd was cut
# at the left edge); the 19 h light tinted the white coats blue (NPT: probably the dusk sky glow, neutral hours are 9 to 15 h); the Milk job ended at once (milk bar not full) and the bare step `is forced into
# the job "Wait"` does not exist (dbbe: undefined step). v12 answer: NO carried item (forced walks only; the bale stays as decor); Nelim's last steps go SOUTH, toward the camera, so she shows her face
# (a pawn walking along a row is in profile); frames keep every named animal inside; hours moved earlier so the coats stay white; scene 2 plays Milk again after NPT's new step `the animal "Rosa" is full of milk`
# (NPT 1370b58, compiled, not played).
#
# STORY (k). Nelim buys a small herd at the trader's (a Belgian blue cow and her calf, a Belgian blue bull, a pygmy beefalo and its calf) and settles it
# on her farm in the Sanctuary in one day: 07, 11, 13, 15, 17 h, one start hour per picture, 2,500 ticks per game hour, same day, fog at dawn then clear.
#  1 dawn   WIDE opener: she leads the way down the river bank, the cow heads for the water;
#  2 late morning  CLOSE: in the lily field she milks the cow while the calf waits;
#  3 early afternoon  MEDIUM: she and the bull reach the trough in the pen together;
#  4 mid-afternoon  MEDIUM: the pygmy beefalo and its calf cross the bridge toward her;
#  5 late afternoon  MEDIUM-WIDE: on the bare clearing the herd gathers, the cow and the beefalo walk in, she walks toward the camera next to the beefalo, torches lit for the coming evening.
# Variety: wide rectangle 16 x 9 (1), close N 2.8 (2), medium N 3.6 (3), medium N 3.0 (4), medium-wide rectangle 14 x 8 (5); no two neighbours alike.
#
# NELIM (d), ONE OUTFIT FOR THE WHOLE DAY (continuity rule 2026-10-23). Fixture kit (corset, trousers; not an NSB wardrobe row, outfits are free, rule 4 of 2026-11-05);
# Apparel_CowboyHat wheat rgb (205, 175, 105) on all five pictures, hair Roo_Royal_LongHD (NSB canon under a hat, NELIM-PROFIL.md) loose under it (Hat Hair Control,
# lordfelix.HatHairControl 3760821540, seed copied from PickleTools Tests/Pickle/config/hat-hair-hhc with showHairDefs = Apparel_CowboyHat, hideHatsIndoors false).
# EXPRESSION (owner, 2026-11-06, quoted in STATUS.md): she smiles as in the canon by default. Canon face = `MouthLipsSmirk` + `LidCheerful`: her own face, then
# `mouth is "MouthLipsSmirk"` and `lids are "LidCheerful"`, then the capture, no tick between; `face is held neutral` is dropped (NPT order 2026-10-25). Map at 20 degrees.
# The one outfit change is justified by the day: Apparel_Duster oat brown rgb (112, 96, 78) against the dawn fog (1), off while the day is warm (2, 3), back on in the afternoon wind (4, 5).
# ANIMALS: not NSB animals, the mod's own; validated by the owner 2026-11-06 ("Les animaux du mod DOIVENT etre dans la gallery"). None dressed.
#
# HOW THE GESTURE IS OBTAINED (e): spawn and place everything, give Nelim her kit; `I let 60 ticks pass` then `time is paused` (set-up, freezes nothing); give the forced walks (`is forced to walk to`)
# or the Milk job (`is forced into the job "Milk" on "Rosa"`); then `I advance the paused game by exactly N ticks` (N shorter than the walk, so everyone is caught mid-stride); then the camera, her face, the screenshot.
#
# PLAN, one line per picture (a time, b decor, c living, d look, e action and instant, f composition, g what it says, j the mod at 268 px).
#  1 DAWN 07 h, Fog, `right-bank`, WIDE. a: 07 h, fog, 60 ticks set-up then 40 of walk. b: TorchLamp lit (146,134), Plant_Daylily fully grown (145,131), removed after. c: Belgian blue cow "Rosa"
#    spawned (149,133) facing West, forced to walk to (142,133) (her side view shows the breed's bulk). d: duster + hat, smile. e: Nelim at (144,133) facing South is forced to walk to (144,129),
#    ahead of the cow so the cow draws behind her; INSTANT: she turns down the bank toward the ford, the cow heads for the water; advance 40 ticks. f: rectangle (136,127)-(152,136), 16 x 9 cells,
#    torch as the warm spot, fog behind. g: the herd has arrived, the breed is big. j: 120 px per cell, the cow about 3.5 cells = 420 px, 58 px in the thumbnail; her smile reads at full size only.
#  2 LATE MORNING 11 h, Clear, `flower-garden`, CLOSE. a: 11 h, clear, 60 ticks set-up then 150 ticks of milking. b: the lily and rose field behind (vanilla), two Plant_Rose fully grown in the foreground at
#    (152,106) and (158,106), removed after. c: cow "Rosa" (154,107) facing East, made full of milk, calf "Petite" (157,108) facing West at her flank. d: hat only, duster off, smile. e: forced job `Milk`
#    on Rosa from (154,108); INSTANT: the milk bar is half full, the calf waits its turn; advance 150 ticks. f: the camera frames the head of "Nelim" and "Rosa" at root size 2.8 (ghost building x 150-152
#    z 100-102 and bed x 157.5-159.5 z 101.5-103.5 stay out), cow and calf left, Nelim right. g: the milk the breed gives. j: 27 px per cell in the thumbnail, the cow about 94 px.
#    RISK: Milk may still end at once (then the cause is the job, target or reservation: NPT reads the log); the face may be bent over the cow (the milking pose is not played yet).
#  3 EARLY AFTERNOON 13 h, Clear, `enclosure-south`, MEDIUM. a: 13 h, clear, area (132,206)-(166,222) cleared, 60 ticks set-up then 30 of walk. b: AnimalFeedTroughSmall (148,218), VFEPD_HayBaleLarge (144,221)
#    (moved off column 147, Nelim's path), props map, nothing ships. c: bull "Taureau" spawned (149,222) facing South, forced to walk to (149,219), the one face-on animal of the series (c). d: hat only,
#    duster off, smile. e: Nelim at (147,221) facing South is forced to walk to (147,218) (the cell west of the trough; the trough cell is not standable); INSTANT: she and the bull reach the trough side
#    by side, both mid-stride; advance 30 ticks (target not reached). f: the camera frames the head of "Nelim" and "Taureau" at root size 3.6 (12.5 x 7 cells), fence on top, trough and bale as the warm masses.
#    g: the build, the point of the breed. j: 21 px per cell in the thumbnail, the bull about 47 px. RISK: bare dirt; cells read on photographs.
#  4 MID-AFTERNOON 15 h, Clear, `river-bridge`, MEDIUM. a: 15 h, clear, wind, 60 ticks set-up then 40 of walk. b: two Plant_YellowTallGrass fully grown on the east bank at (143,123) and (143,126)
#    (the v11 capture showed grass and a tree on that bank, cells unverified), no torch. c: pygmy beefalo "Pip" (adult female) at (134,124) facing East, forced to walk to (139,124); calf "Minus"
#    (male, life stage 0) at (132,124) facing East, forced to walk to (137,124), trailing behind. d: duster + hat, smile. e: Nelim at (141,127) facing South is forced to walk to (141,124), the bridge end;
#    INSTANT: the beefalo cross the bridge toward her, the calf a step behind; advance 40 ticks. f: the camera frames the head of "Nelim" and "Pip" at root size 3.0 (10.7 x 6 cells), the bridge as a
#    horizontal band. g: the small horned pack animal and its calf. j: 25 px per cell, the beefalo about 30 px, the calf about 18 px. RISK: grass cells may be water; river fog at the frame top and bottom (seen on v11).
#  5 LATE AFTERNOON 17 h, Clear, `bare-clearing` (195,152), MEDIUM-WIDE, closing. a: 17 h, clear, 60 ticks set-up then 30 of walk. b: TorchLamp lit (191,151) and (198,151), Plant_YellowTallGrass fully grown
#    (194,151) and (202,153), VFEPD_HayBaleLarge (201,151). c: cow "Rosa" (190,154) facing East, forced to walk to (194,154); pygmy beefalo "Pip" (199,156) facing South (face on, toward the camera), forced to walk
#    to (199,153); calf "Petite" (life stage 0) at (191,156) facing East; bull "Taureau" at (192,152) facing East. d: duster + hat (kept on: outdoors), smile. e: Nelim at (197,156) facing South is forced to walk
#    to (197,153) next to Pip; INSTANT: she and the beefalo walk toward the camera while the cow walks in, the herd is home; advance 30 ticks. f: rectangle (189,150)-(203,158), 14 x 8 cells, torch light on
#    the white cow. g: the herd has moved in, both huge and small. j: 20 px per cell in the thumbnail, the cow about 3.5 cells = 70 px, the beefalo about 30 px.
#    RISK: crowded frame; 17 h may still tint the white coats (19 h did on v11; NPT: probably the sky glow, proof by the same scene at noon).
#
# DIRECTOR PASS ON v12 (Opus, 2026-11-06), KEPT: every walk that ends in profile is turned toward the camera for Nelim (South in 1, 3, 4, 5), the animals keep their profile walk; Nelim ahead of the cow so the
# cow draws behind her (1); bale off Nelim's column (3); Nelim waits at the bridge end while the beefalo cross toward her (4); Taureau moved to (192,152), torches off the bottom row, bale off the right edge (5);
# header beats without carried items. KEPT WITH A DIFFERENT CHOICE: scene 2 plays Milk again (the director left it alone; NPT's milk step now exists). NOT verified by anyone: every cell (read on photographs),
# the head-frame and rectangle steps on these cells, `MouthLipsSmirk` as a valid mouth, the milk step (compiled, not played).
#
# Ground, plants, fences, torches are vanilla Core; trough (Mlie.AnimalFeedTroughSmall) and bale (VanillaExpanded.VFEPropsandDecor) are staged props from the props map, never shipped.
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

  Scenario: workshop 1 - dawn fog on the river bank, the farmer leads the Belgian blue cow down to the water
    Given I set the hour to 7
    And I set the weather to "Fog"
    And Nelim's Sanctuary: I am at the sanctuary "right-bank"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (146, 134)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (146, 134) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 131) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (149, 133) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (144, 133) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (142, 133)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (144, 129)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: I frame the rectangle from (136, 127) to (152, 136)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - late morning in the lily field, the farmer milks the cow while the calf waits
    Given I set the hour to 11
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (152, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (158, 106) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (154, 107) facing East
    And Nelim's Pickle Tools: the animal "Rosa" is full of milk
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (157, 108) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (154, 108) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Milk" on "Rosa"
    And Nelim's Pickle Tools: I advance the paused game by exactly 150 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Rosa" at root size 2.8
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - early afternoon in the pen, the bull and the farmer reach the trough together
    Given I set the hour to 13
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (144, 221)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (149, 222) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (147, 221) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Taureau" is forced to walk to (149, 219)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (147, 218)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Taureau" at root size 3.6
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - mid-afternoon on the bridge, the pygmy beefalo and its calf cross toward the farmer
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 123) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 126) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (134, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male named "Minus" in life stage 0 at (132, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (141, 127) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Pip" is forced to walk to (139, 124)
    And Nelim's Pickle Tools: "Minus" is forced to walk to (137, 124)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (141, 124)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Pip" at root size 3.0
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - late afternoon on the bare clearing, the herd gathers and the cow and the beefalo walk in
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (191, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (191, 151) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (198, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (198, 151) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (194, 151) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (202, 153) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (201, 151)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (190, 154) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (199, 156) facing South
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (191, 156) facing East
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (192, 152) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (197, 156) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (194, 154)
    And Nelim's Pickle Tools: "Pip" is forced to walk to (199, 153)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (197, 153)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: I frame the rectangle from (189, 150) to (203, 158)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-evening"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
