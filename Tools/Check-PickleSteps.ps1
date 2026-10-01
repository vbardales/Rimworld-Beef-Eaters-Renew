<#
.SYNOPSIS
  Compile this suite's local step patterns with Pickle's own expression engine, and check that every
  step line of every feature under Tests/Pickle resolves to exactly one step. No game, a few seconds.

.DESCRIPTION
  Adapted from PickleTools/TextureOwner/Check-Steps.ps1, which exists because a run once played zero
  scenarios over one character class. Two failures cost a whole queued run and are invisible until it
  plays, so they are checked here first:

    1. A local pattern that does not COMPILE with the PickleParameterTypeRegistry the game uses
       (parentheses mean optional text and a slash means alternation in a Cucumber Expression): the run
       plays zero scenarios.
    2. A step line that matches NO expression (a plausible step that does not exist), or MORE THAN ONE
       (an "Ambiguous step", which fails a healthy scenario). The candidate set is what a pass of this
       suite can actually load together: Pickle's own vocabulary, the engine's save step, this suite's
       local steps, and the PickleTools tool the texture pass stages (TextureOwner).

  What it cannot do: run anything. A line that resolves is a line Pickle can dispatch, not a line that
  passes. Lines are read as text; Scenario Outline placeholders are not expanded (this suite has none).

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File Tools\Check-PickleSteps.ps1
#>
param(
    [string]$PickleAssemblies = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\3791648678\1.6\Assemblies',
    [string]$Cecil = "$env:USERPROFILE\.nuget\packages\mono.cecil\0.11.5\lib\net40\Mono.Cecil.dll",
    [string]$ToolsRoot = (Join-Path (Split-Path $PSScriptRoot -Parent | Split-Path -Parent) 'PickleTools')
)
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$suite = Join-Path $root 'Tests\Pickle'

foreach ($dll in 'CucumberExpressions.dll', 'RimWorks.Pickle.Core.dll') {
    $path = Join-Path $PickleAssemblies $dll
    if (-not (Test-Path $path)) { throw "$dll not found under $PickleAssemblies" }
    [Reflection.Assembly]::LoadFrom($path) | Out-Null
}
if (-not (Test-Path $Cecil)) { throw "Mono.Cecil not found at $Cecil" }
Add-Type -Path $Cecil
$core = [AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GetName().Name -eq 'RimWorks.Pickle.Core' }
$registryType = $core.GetType('RimWorks.Pickle.Core.Steps.PickleParameterTypeRegistry')
if (-not $registryType) { throw 'PickleParameterTypeRegistry no longer exists: Pickle renamed it, update this script.' }
$registry = [Activator]::CreateInstance($registryType)
function New-Expr($pattern) { New-Object CucumberExpressions.CucumberExpression($pattern, $registry) }

# The attribute argument is a C# literal: undo its escaping to get the pattern Pickle sees.
$attr = '\[(?:Given|When|Then)\("((?:[^"\\]|\\.)*)"'
function Read-Patterns($dir, $source) {
    foreach ($f in Get-ChildItem -LiteralPath $dir -Filter *.cs -ErrorAction SilentlyContinue) {
        $text = [IO.File]::ReadAllText($f.FullName)
        foreach ($m in [regex]::Matches($text, $attr)) {
            [pscustomobject]@{ Source = $source; File = $f.Name; Pattern = ($m.Groups[1].Value -replace '\\\\', '\' -replace '\\"', '"') }
        }
    }
}

$bad = 0

# --- 1. this suite's local steps ---------------------------------------------------------------------
$mine = @(Read-Patterns (Join-Path $suite 'Source') 'local')
if ($mine.Count -eq 0) { throw "no step patterns under $suite\Source: the attribute shape this script looks for has changed" }
foreach ($g in ($mine | Group-Object Pattern | Where-Object { $_.Count -gt 1 })) {
    Write-Host "DUPLICATE  $($g.Name)  (declared $($g.Count) times)" -ForegroundColor Red; $bad++
}
$candidates = @()
foreach ($d in $mine) {
    try { $candidates += [pscustomobject]@{ Source = $d.Source; Pattern = $d.Pattern; Regex = (New-Expr $d.Pattern).Regex } }
    catch {
        $e = $_.Exception; while ($e.InnerException) { $e = $e.InnerException }
        Write-Host "INVALID  $($d.File): $($d.Pattern)`n         $($e.Message.Split("`n")[0])" -ForegroundColor Red; $bad++
    }
}
$localCount = $candidates.Count

# --- Pickle's own vocabulary --------------------------------------------------------------------------
$pickleCount = 0
foreach ($name in 'RimWorks.Pickle.Vanilla.dll', 'RimWorks.Pickle.dll') {
    $asm = [Mono.Cecil.AssemblyDefinition]::ReadAssembly((Join-Path $PickleAssemblies $name))
    foreach ($t in $asm.MainModule.GetTypes()) {
        foreach ($m in $t.Methods) {
            foreach ($a in $m.CustomAttributes | Where-Object { $_.AttributeType.Name -in 'GivenAttribute', 'WhenAttribute', 'ThenAttribute' }) {
                $p = [string]$a.ConstructorArguments[0].Value
                try { $candidates += [pscustomobject]@{ Source = 'pickle'; Pattern = $p; Regex = (New-Expr $p).Regex }; $pickleCount++ } catch { }
            }
        }
    }
}
# Handled by the runner without an attribute the extraction sees. Not derived: the evidence is that the
# features the installed Pickle ships (<Pickle mod>\Pickle\Features\*.feature) use each verbatim -
# 'the save {string} is loaded' in every Background, and the three save steps and 'the engine is alive'
# in save-reload.feature. Found the hard way on 2026-09-28: this script first reported
# 'the save round trips' UNRESOLVED, and the shipped feature proved the step exists.
foreach ($p in 'the save {string} is loaded', 'I save and reload', 'I save and reload as {string}', 'the save round trips', 'the engine is alive') {
    $candidates += [pscustomobject]@{ Source = 'pickle-engine'; Pattern = $p; Regex = (New-Expr $p).Regex }; $pickleCount++
}

# --- the one PickleTools tool the texture pass stages ---------------------------------------------------
$toolCount = 0
$toolSource = Join-Path $ToolsRoot 'TextureOwner\Source'
if (Test-Path $toolSource) {
    foreach ($p in Read-Patterns $toolSource 'tool:TextureOwner') {
        try { $candidates += [pscustomobject]@{ Source = $p.Source; Pattern = $p.Pattern; Regex = (New-Expr $p.Pattern).Regex }; $toolCount++ } catch { }
    }
} else { Write-Host "note: $toolSource not found, TextureOwner lines cannot resolve" -ForegroundColor Yellow }

# --- 2. every step line of every feature -----------------------------------------------------------------
$features = @(Get-ChildItem -LiteralPath (Join-Path $suite 'Mod\Pickle\Features') -Filter *.feature)
if ($features.Count -eq 0) { throw 'no feature files found' }
$lines = 0
foreach ($file in $features) {
    foreach ($raw in [IO.File]::ReadAllLines($file.FullName)) {
        if ($raw.Trim() -notmatch '^(Given|When|Then|And|But)\s+(.+)$') { continue }
        $step = $Matches[2].Trim(); $lines++
        $hits = @($candidates | Where-Object { $_.Regex.IsMatch($step) })
        if ($hits.Count -eq 0) {
            Write-Host "UNRESOLVED  $($file.Name): $step" -ForegroundColor Red; $bad++
        } elseif ($hits.Count -gt 1) {
            $names = ($hits | ForEach-Object { "$($_.Source) `"$($_.Pattern)`"" }) -join ' AND '
            Write-Host "AMBIGUOUS  $($file.Name): $step`n           matches $names" -ForegroundColor Red; $bad++
        }
    }
}

Write-Host ''
Write-Host "$localCount local pattern(s) compile. $lines step line(s) in $($features.Count) feature file(s) checked against $($candidates.Count) candidates ($pickleCount Pickle, $toolCount TextureOwner, $localCount local)."
Write-Host ''
if ($bad -gt 0) {
    Write-Host "$bad PROBLEM(S). An invalid pattern makes a run play zero scenarios; an unresolved line is a step that does not exist; an ambiguous line fails a healthy scenario." -ForegroundColor Red
    exit 1
}
Write-Host 'ALL PATTERNS COMPILE, NONE DECLARED TWICE, EVERY STEP LINE RESOLVES TO EXACTLY ONE STEP' -ForegroundColor Green
exit 0
