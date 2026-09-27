@requires:nelim.pickletools.textureowner
Feature: Beef Eaters Renew — shipped textures actually load

  Confirms a texPath resolves to bytes this mod's own texture pipeline serves, not merely that a
  file exists at that path: Tools/Check-Mod.ps1 already proves the file is there and named right,
  this proves ContentFinder actually answers the path with this mod — a corrupt or unreadable PNG
  the offline check never opens would fail here instead of only in a player's log. Run with
  wsl-deps.textures.map, which stages TextureOwner for this pass alone. See TESTING.md, scenario K.

  Scenario: the Belgian blue bull's own texture is not shadowed by another mod
    Then Nelim's Pickle Tools: the texture "BelgianBlueBull" is answered by the mod "nelim.beefeaters"

  Scenario: the Belgian blue cow's own texture is not shadowed by another mod
    Then Nelim's Pickle Tools: the texture "BelgianBlueCow" is answered by the mod "nelim.beefeaters"

  Scenario: the pygmy beefalo's own texture is not shadowed by another mod
    Then Nelim's Pickle Tools: the texture "PygmyBeefalo" is answered by the mod "nelim.beefeaters"
