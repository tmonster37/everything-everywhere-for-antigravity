# Script cai dat / dong bo plugins va rules sang Google Antigravity (~/.gemini/config/plugins/)
param (
    [string]$TargetPluginsDir = "$env:USERPROFILE\.gemini\config\plugins"
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Google Antigravity] Dong bo bo ky nang va Plugins" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

if (-not (Test-Path $TargetPluginsDir)) {
    New-Item -ItemType Directory -Path $TargetPluginsDir -Force | Out-Null
}

$CurrentDir = Split-Path -Parent $PSScriptRoot
$PluginsSource = Join-Path $CurrentDir "plugins"
$RulesSource = Join-Path $CurrentDir "rules"

Write-Host ">> Nguon plugins: $PluginsSource"
Write-Host ">> Dich Antigravity Plugins: $TargetPluginsDir"

if (Test-Path $PluginsSource) {
    $plugins = Get-ChildItem -Path $PluginsSource -Directory
    $count = 0
    foreach ($p in $plugins) {
        $dest = Join-Path $TargetPluginsDir $p.Name
        Copy-Item -Path $p.FullName -Destination $dest -Recurse -Force
        $count++
    }
    Write-Host ">> Da dong bo thanh cong $count plugins sang Google Antigravity!" -ForegroundColor Green
}

# Cap nhat AGENTS.md vao antigravity-kit-plugin/rules
$agKitRules = "$TargetPluginsDir\antigravity-kit-plugin\rules"
if (Test-Path $agKitRules) {
    Copy-Item -Path "$RulesSource\AGENTS.md" -Destination "$agKitRules\AGENTS.md" -Force
    Copy-Item -Path "$RulesSource\SOUL.md" -Destination "$agKitRules\SOUL.md" -Force
    Write-Host ">> Da cap nhat rules AGENTS.md va SOUL.md vao Antigravity Kit!" -ForegroundColor Yellow
}

Write-Host " Hoan tat cau hinh Google Antigravity!" -ForegroundColor Cyan
