Feature: Beef Eaters Renew — DefInjected labels reach the def in French

  Run this feature under -Language French. Never switch language inside a scenario: SelectLanguage
  reloads every def and the runner beneath it. RimWorld overwrites a Def's own field with its
  DefInjected translation at load, for the active language — this proves the game actually applied
  Mod/Languages/French/DefInjected, not just that Check-DefInjected.ps1 found a matching path
  offline. No save needed: this reads the def database built at the main menu. See TESTING.md,
  scenario P. Pair with 06-labels-english.feature, run under -Language English.

  Scenario: the Belgian blue cow's label is in French
    Then def "BelgianBlueCow" field "label" is "vache blanc-bleu belge"

  Scenario: the pygmy beefalo's label is in French
    Then def "PygmyBeefalo" field "label" is "beefalo pygmée"
