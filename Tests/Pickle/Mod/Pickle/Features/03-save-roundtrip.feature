Feature: Beef Eaters Renew — the wildness stat survives a save and reload

  The port's own worry, recorded in ATTRIBUTION.md and CHANGELOG.md, is that the wildness fix
  changed where a stat lives, not what a save stores. This proves the stat still reads correctly
  after a real save/load round trip, with an animal of each kind actually present on the map —
  the concern behind TESTING.md's scenario O, narrowed to what one process can prove without a
  second mod install to swap against. The def-level stat check needs no fresh pawn lookup after
  the reload, so it is not affected by the stale-reference pitfall a per-pawn check would hit.

  Scenario: a Belgian blue cow's map round-trips through a save with wildness intact
    Given the save "test-colony" is loaded
    When I spawn a "BelgianBlueCow" pawn at (5, 5)
    Then a "BelgianBlueCow" exists
    When the save round trips
    Then a "BelgianBlueCow" exists
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "Wildness" at 0.05

  Scenario: a pygmy beefalo's map round-trips through a save with wildness intact
    Given the save "test-colony" is loaded
    When I spawn a "PygmyBeefalo" pawn at (7, 5)
    Then a "PygmyBeefalo" exists
    When the save round trips
    Then a "PygmyBeefalo" exists
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "Wildness" at 0.5
