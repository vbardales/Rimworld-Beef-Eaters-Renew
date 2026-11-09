# Diagnostic, NOT a gallery capture (never copied to Art/Gallery). Lip bug of scene 2 of 12 (profile view, lower lip past the head outline, Virginie 2026-11-08).
# Steps and order given by NPT 2026-11-09 (compiled, not played in a valid run: first real test, report the exact error to NPT if a step breaks).
# A: head shape untouched (the face-parts log says which HeadTypeDef she has). B: face head shape HeadPointy (as in PickleTools pickletools-nelim-mouth-diagnostic.feature).
# Answer wanted by NPT: east and west views, does the lower lip stay inside the head outline in B?
Feature: Nelim mouth in profile (diagnostic)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: the area and zone overlays are hidden
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" stands at (196, 152) facing East

  Scenario: mouth-A - head shape untouched, east then west
    Given Nelim's Pickle Tools: the face parts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" waits in place
    And I wait 60 ticks
    When Nelim's Pickle Tools: the camera frames the head of "Nelim" at root size 2
    And I wait 30 ticks
    And I take a screenshot "mouth-A-east"
    And Nelim's Pickle Tools: "Nelim" faces West
    And I wait 30 ticks
    And I take a screenshot "mouth-A-west"

  Scenario: mouth-B - face head shape HeadPointy, east then west
    Given Nelim's Pickle Tools: "Nelim" face head shape is "HeadPointy"
    And Nelim's Pickle Tools: the face parts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" waits in place
    And I wait 60 ticks
    When Nelim's Pickle Tools: the camera frames the head of "Nelim" at root size 2
    And I wait 30 ticks
    And I take a screenshot "mouth-B-east"
    And Nelim's Pickle Tools: "Nelim" faces West
    And I wait 30 ticks
    And I take a screenshot "mouth-B-west"

  # Beauty2 mouth patch (SaB, Harmony postfix, 2026-11-09): sweep of D, east then west, four values. Head untouched (Beauty2, her SaB head).
  Scenario: mouth-sweep - Beauty2 mouth offset 0.02 0.03 0.04 0.05, east then west
    Given Nelim's Pickle Tools: the face parts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" waits in place
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.02
    And I wait 60 ticks
    When Nelim's Pickle Tools: the camera frames the head of "Nelim" at root size 2
    And I wait 30 ticks
    And I take a screenshot "sweep-020-east"
    And Nelim's Pickle Tools: "Nelim" faces West
    And I wait 30 ticks
    And I take a screenshot "sweep-020-west"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.03
    And I wait 10 ticks
    And I take a screenshot "sweep-030-west"
    And Nelim's Pickle Tools: "Nelim" faces East
    And I wait 30 ticks
    And I take a screenshot "sweep-030-east"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.04
    And I wait 10 ticks
    And I take a screenshot "sweep-040-east"
    And Nelim's Pickle Tools: "Nelim" faces West
    And I wait 30 ticks
    And I take a screenshot "sweep-040-west"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.05
    And I wait 10 ticks
    And I take a screenshot "sweep-050-west"
    And Nelim's Pickle Tools: "Nelim" faces East
    And I wait 30 ticks
    And I take a screenshot "sweep-050-east"
