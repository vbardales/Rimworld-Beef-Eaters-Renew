<#
    Offline check for Beef Eaters Renew.

        powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1

    Exit code is the number of failures, so it is usable as a gate.

    WHY THESE CHECKS AND NOT OTHERS. This mod is two animals, one guarded patch and twenty
    textures. It has no assembly, so nothing here compiles and nothing can be caught by a build.
    What it has instead is four ways of breaking that the game does not refuse to load:

      1. Malformed XML. RimWorld skips the file and logs one line among hundreds.
      2. The wildness fault this port exists to fix. `<wildness>` under `<race>` was a field in 1.4
         and is nothing in 1.6: it is never read, the stat falls back to -1, and the animal looks
         perfectly normal. This is the fault that shipped for two versions without anyone noticing.
      3. A texPath with nothing behind it. Logged at load, but only when the animal is first drawn.
      4. A decision quietly lost. The trade tag and the incompatibility were added by this port on
         purpose; a careless re-merge against the original would drop both and nothing would say so.

    WHAT THIS CANNOT DO. It does not know RimWorld's 1.6 field names, so it cannot catch the next
    `<wildness>` - only this one, by name. That check needs the game's own type dump and lives in
    the monorepo as scripts\Check-XmlFields.ps1 with rw16_types.txt beside it; vendoring a 300 KB
    type list into a two-def mod would cost more than it returns. And nothing here runs the game:
    a clean pass means the files are consistent, never that the animals behave. That is TESTING.md.
#>

$root = Split-Path -Parent $PSScriptRoot
$mod  = Join-Path $root 'Mod'
$fail = 0

function Ok   ($m) { Write-Host "  ok    $m" }
function Bad  ($m) { Write-Host "  FAIL  $m" -ForegroundColor Red; $script:fail++ }
function Head ($m) { Write-Host ""; Write-Host $m }

# --- 1. every XML file parses ------------------------------------------------
Head '1. XML well-formedness'
$xmlFiles = Get-ChildItem $mod -Recurse -Filter *.xml
foreach ($f in $xmlFiles) {
    try   { [xml]$null = Get-Content $f.FullName -Raw; Ok $f.Name }
    catch { Bad "$($f.Name) : $($_.Exception.Message)" }
}
if ($xmlFiles.Count -lt 4) { Bad "only $($xmlFiles.Count) XML files found under Mod\, expected at least 4" }
if ($fail -gt 0) { exit $fail }

# --- 2. the wildness fault ---------------------------------------------------
Head '2. wildness is a stat, not a RaceProperties field'
$old = Select-String -Path (Join-Path $mod '*\*.xml') -Pattern '<wildness>' -CaseSensitive
if ($old) {
    foreach ($h in $old) { Bad "the 1.4 form is back in $(Split-Path $h.Path -Leaf) line $($h.LineNumber)" }
} else {
    Ok 'no lowercase <wildness> anywhere'
}

$expected = @{ 'BelgianBlueCow' = '0.05'; 'PygmyBeefalo' = '0.5' }
foreach ($def in $expected.Keys) {
    $file = Get-ChildItem (Join-Path $mod 'Defs') -Filter *.xml |
            Where-Object { (Get-Content $_.FullName -Raw) -match "<defName>$def</defName>" } |
            Select-Object -First 1
    if (-not $file) { Bad "no def file declares $def"; continue }

    [xml]$doc = Get-Content $file.FullName -Raw
    $node = $doc.SelectSingleNode("//ThingDef[defName='$def']/statBases/Wildness")
    if (-not $node)                          { Bad "$def has no <Wildness> under statBases" }
    elseif ($node.InnerText -ne $expected[$def]) { Bad "$def wildness is $($node.InnerText), expected $($expected[$def])" }
    else                                     { Ok "$def wildness $($node.InnerText) under statBases" }
}

# --- 3. every texture the defs name is shipped -------------------------------
Head '3. texPaths resolve'
$textures = Join-Path $mod 'Textures'
$paths = @()
foreach ($f in $xmlFiles) {
    [xml]$doc = Get-Content $f.FullName -Raw
    $paths += $doc.SelectNodes('//texPath') | ForEach-Object { $_.InnerText.Trim() }
}
$paths = $paths | Sort-Object -Unique
foreach ($p in $paths) {
    if ($p -like 'Things/*') { Ok "$p (base game)"; continue }
    $leaf = Split-Path $p -Leaf
    $dir  = if ($p -eq $leaf) { $textures } else { Join-Path $textures (Split-Path $p -Parent) }
    if (-not (Test-Path $dir)) { Bad "$p : no such folder under Mod\Textures"; continue }

    # Prefix matching is not enough: PygmyBeefalo* also matches PygmyBeefaloPack and
    # PygmyBeefaloArmour, so a missing body texture would pass on its neighbours' names.
    # Graphic_Multi needs _south at the very least; _west is legitimately absent and mirrored.
    $all   = @(Get-ChildItem $dir -Filter "$leaf*.png" -ErrorAction SilentlyContinue)
    $exact = @($all | Where-Object { $_.Name -eq "$leaf.png" -or $_.Name -eq "${leaf}_south.png" })
    if ($exact.Count -gt 0) { Ok "$p ($($all.Count) file(s) on that name)" }
    else { Bad "$p : neither $leaf.png nor ${leaf}_south.png is under Mod\Textures" }
}

# --- 4. the decisions this port made on purpose ------------------------------
Head '4. decisions that a re-merge would silently drop'
[xml]$about = Get-Content (Join-Path $mod 'About\About.xml') -Raw
$meta = $about.ModMetaData

if ($meta.name -eq 'Beef Eaters Renew (unofficial)') { Ok 'unofficial title suffix' }
else { Bad 'the title must identify this unofficial continuation' }
$repoUrl = 'https://github.com/vbardales/Rimworld-Beef-Eaters-Renew'
if ($meta.url -eq $repoUrl -and $meta.description.Contains($repoUrl)) { Ok 'GitHub URL in metadata and description' }
else { Bad 'GitHub URL missing or changed in metadata or description' }

if ($meta.packageId -eq 'nelim.beefeaters') { Ok 'packageId' } else { Bad "packageId is $($meta.packageId)" }

$versions = @($meta.supportedVersions.li)
if ($versions -contains '1.6') { Ok "supportedVersions: $($versions -join ', ')" }
else                           { Bad "supportedVersions does not name 1.6: $($versions -join ', ')" }

$incompatible = @($meta.incompatibleWith.li)
if ($incompatible -contains 'TheGoofyOne.BeefEaters') { Ok 'incompatibleWith the original' }
else { Bad 'incompatibleWith no longer names TheGoofyOne.BeefEaters - both mods declare the same defNames' }

[xml]$beefalo = Get-Content (Join-Path $mod 'Defs\Race_PygmyBeefalo.xml') -Raw
$tags = @($beefalo.SelectNodes("//ThingDef[defName='PygmyBeefalo']/tradeTags/li") | ForEach-Object { $_.InnerText })
if ($tags -contains 'AnimalFarm') { Ok "pygmy beefalo tradeTags: $($tags -join ', ')" }
else { Bad "pygmy beefalo has lost AnimalFarm and can no longer be traded at all: $($tags -join ', ')" }

$a = Join-Path $root 'ATTRIBUTION.md'
$b = Join-Path $mod  'ATTRIBUTION.md'
if ((Get-FileHash $a).Hash -eq (Get-FileHash $b).Hash) { Ok 'the two copies of ATTRIBUTION.md are identical' }
else { Bad 'ATTRIBUTION.md and Mod\ATTRIBUTION.md have drifted apart' }

# --- 5. optional patch must remain guarded ------------------------------------
Head '5. Animal Gear patch guard'
[xml]$armor = Get-Content (Join-Path $mod 'Patches\Armor.xml') -Raw
$operations = @($armor.SelectNodes('/Patch/Operation'))
$guard = $armor.SelectSingleNode('/Patch/Operation[@Class="PatchOperationFindMod"][mods/li="Animal Gear"]')
if ($operations.Count -eq 1 -and $guard -and -not $guard.nomatch) {
    Ok 'the only patch operation is guarded by Animal Gear, with no absent-mod branch'
} else { Bad 'Animal Gear patch is no longer exclusively guarded' }
$apparel = $armor.SelectNodes('/Patch/Operation[@Class="PatchOperationFindMod"]/match[@Class="PatchOperationSequence"]/operations/li[@Class="PatchOperationAdd"][xpath="Defs"]/value/ThingDef[defName="Apparel_PygmyBeefaloArmour"]')
if ($apparel.Count -eq 1) { Ok 'guarded patch adds the expected armour def' }
else { Bad 'expected guarded armour addition missing or duplicated' }


# --- 6. optional-mod patches (ADS 2, Dogs mate) applied to synthetic defs -----
# System.Xml speaks XPath 1.0 like the game. Each patch file is a PatchOperationConditional whose
# guard is the target itself; run it on a document with the target (must add exactly the expected
# defNames, and leave a decoy node alone) and on one without (must change nothing).
Head '6. ADS 2 and Dogs mate patches'
function Apply-Patch($patchPath, [xml]$doc) {
    [xml]$p = Get-Content $patchPath -Raw
    function Run($op, $doc) {
        switch ($op.Class) {
            'PatchOperationConditional' {
                if ($doc.SelectNodes($op.xpath).Count -gt 0 -and $op.match) { Run $op.match $doc }
                elseif ($doc.SelectNodes($op.xpath).Count -eq 0 -and $op.nomatch) { Run $op.nomatch $doc }
            }
            'PatchOperationSequence' { foreach ($o in $op.operations.li) { Run $o $doc } }
            'PatchOperationAdd' {
                foreach ($t in $doc.SelectNodes($op.xpath)) {
                    foreach ($n in $op.value.ChildNodes) { [void]$t.AppendChild($doc.ImportNode($n, $true)) }
                }
            }
            default { throw "unhandled operation class $($op.Class)" }
        }
    }
    foreach ($o in $p.Patch.Operation) { Run $o $doc }
}
function Users($doc, $xp) { @($doc.SelectNodes($xp) | ForEach-Object { $_.InnerText }) -join ',' }

$ads = Join-Path $mod 'Patches\ADS2.xml'
$adsDoc = '<Defs>' + (1..3 | ForEach-Object { "<RecipeDef Name=`"ADS_Cat$_`" Abstract=`"True`"><recipeUsers/></RecipeDef>" }) + '<RecipeDef Name="Decoy"><recipeUsers/></RecipeDef></Defs>'
[xml]$d = $adsDoc; Apply-Patch $ads $d
$c1 = Users $d '/Defs/RecipeDef[@Name="ADS_Cat1"]/recipeUsers/li'
$c2 = Users $d '/Defs/RecipeDef[@Name="ADS_Cat2"]/recipeUsers/li'
$c3 = Users $d '/Defs/RecipeDef[@Name="ADS_Cat3"]/recipeUsers/li'
$dc = Users $d '/Defs/RecipeDef[@Name="Decoy"]/recipeUsers/li'
if ($c1 -eq 'BelgianBlueCow,PygmyBeefalo' -and $c2 -eq 'BelgianBlueCow,PygmyBeefalo' -and $c3 -eq 'PygmyBeefalo' -and $dc -eq '') {
    Ok 'ADS 2: cow in Cat1+Cat2, beefalo in Cat1+Cat2+Cat3, decoy recipe untouched'
} else { Bad "ADS 2 lists wrong: Cat1=[$c1] Cat2=[$c2] Cat3=[$c3] decoy=[$dc]" }
[xml]$d = '<Defs><RecipeDef Name="Decoy"><recipeUsers/></RecipeDef></Defs>'; Apply-Patch $ads $d
if ((Users $d '//li') -eq '') { Ok 'ADS 2 absent: patch changes nothing' } else { Bad 'ADS 2 absent: patch still wrote something' }

$dm = Join-Path $mod 'Patches\DogsMate.xml'
$g = { param($n) "<Revolus.DogsMate.AnimalGroupDef><defName>$n</defName><pawnKinds><li>Vanilla$n</li></pawnKinds></Revolus.DogsMate.AnimalGroupDef>" }
[xml]$d = '<Defs>' + (& $g 'Cow') + (& $g 'Bison') + (& $g 'Dog') + '</Defs>'; Apply-Patch $dm $d
$cow = Users $d '/Defs/Revolus.DogsMate.AnimalGroupDef[defName="Cow"]/pawnKinds/li'
$bis = Users $d '/Defs/Revolus.DogsMate.AnimalGroupDef[defName="Bison"]/pawnKinds/li'
$dog = Users $d '/Defs/Revolus.DogsMate.AnimalGroupDef[defName="Dog"]/pawnKinds/li'
if ($cow -eq 'VanillaCow,BelgianBlueCow' -and $bis -eq 'VanillaBison,PygmyBeefalo' -and $dog -eq 'VanillaDog') {
    Ok 'Dogs mate: cow in group Cow, beefalo in group Bison, other groups untouched, existing members kept'
} else { Bad "Dogs mate groups wrong: Cow=[$cow] Bison=[$bis] Dog=[$dog]" }
[xml]$d = '<Defs/>'; Apply-Patch $dm $d
if ($d.Defs.ChildNodes.Count -eq 0) { Ok 'Dogs mate absent: patch changes nothing' } else { Bad 'Dogs mate absent: patch wrote something' }

[xml]$about = Get-Content (Join-Path $mod 'About\About.xml') -Raw
if ($about.ModMetaData.loadBefore.li -contains 'SamBucher.ADogSaidAnimalProsthetics2') { Ok 'About.xml loads before ADS 2' }
else { Bad 'About.xml lost loadBefore ADS 2' }
if (-not $about.ModMetaData.modDependencies) { Ok 'no hard dependency was added' } else { Bad 'a modDependencies block appeared' }

# --- verdict -----------------------------------------------------------------
Write-Host ""
if ($fail -eq 0) { Write-Host 'All checks passed. Nothing here says the animals behave - see TESTING.md.' -ForegroundColor Green }
else             { Write-Host "$fail check(s) failed." -ForegroundColor Red }
exit $fail
