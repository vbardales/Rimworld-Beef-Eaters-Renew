@requires:TheGoofyOne.BeefEaters
Feature: Beef Eaters Renew — the declared incompatibility still describes what happens

  incompatibleWith does not stop the game from loading both mods; it only lets the mod list warn
  the player. This asserts the symptom the guard exists to explain, not an expected red: RimWorld
  logs "Adding duplicate" for each defName both mods declare, and the last one loaded wins.
  Run only against wsl-deps.incompat-original.map, which stages TheGoofyOne's original (Workshop
  1988048034) alongside this port; @requires skips this scenario in every other pass, where the
  original is absent. Re-run this pass whenever the original mod changes — a fixed conflict, a
  renamed packageId, or a withdrawn item all change what this scenario should see. See
  TESTING.md, scenario N.

  Scenario: both mods loaded, RimWorld warns about both duplicated defNames
    Given mod "TheGoofyOne.BeefEaters" is loaded
    Then a warning matching "Adding duplicate.*BelgianBlueCow" was logged
    And a warning matching "Adding duplicate.*PygmyBeefalo" was logged
