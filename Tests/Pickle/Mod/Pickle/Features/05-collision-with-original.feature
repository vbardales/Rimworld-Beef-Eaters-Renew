@requires:TheGoofyOne.BeefEaters
Feature: Beef Eaters Renew — the declared incompatibility still describes what happens

  incompatibleWith does not stop the game from loading both mods; it only lets the mod list warn
  the player. Run 3cad (2026-10-02) read the real symptom: the original loads (its 1.4 `wildness`
  field logs the usual "doesn't correspond to any field in type RaceProperties" XML error) and
  RimWorld 1.6 logs NO duplicate-defName line at all — the guess "Adding duplicate" was wrong, and
  the old CHANGELOG line "the last one loaded won in silence" was right. So the contract asserted
  here is the silence's consequence: the original loads BEFORE this port, therefore this port's
  defs win and the repaired wildness is still there. If the original ever loads after, or the
  engine starts logging the clash, this scenario goes red and says so.
  Run only against wsl-deps.incompat-original.map, which stages TheGoofyOne's original (Workshop
  1988048034) alongside this port; @requires skips this scenario in every other pass. Re-run when
  the original mod changes. See TESTING.md, scenario N.

  Scenario: with the original loaded, this port still loads last and its wildness repair wins
    Given mod "TheGoofyOne.BeefEaters" is loaded
    Then mod "TheGoofyOne.BeefEaters" loads before "nelim.beefeaters"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "Wildness" at 0.05
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "Wildness" at 0.5
