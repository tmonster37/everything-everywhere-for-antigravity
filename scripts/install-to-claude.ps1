# Script cai dat / dong bo skills sang Claude Code (~/.claude/skills/)
param (
    [string]$TargetDir = "$env:USERPROFILE\.claude\skills",
    [string]$ClaudeConfig = "$env:USERPROFILE\.claude"
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " [Claude Code] Dong bo bo ky nang AI Coding Skills Kit" -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

$CurrentDir = Split-Path -Parent $PSScriptRoot
$SkillsSource = Join-Path $CurrentDir "skills"
$RulesSource = Join-Path $CurrentDir "rules"

Write-Host ">> Nguon skills: $SkillsSource"
Write-Host ">> Dich Claude: $TargetDir"

$skills = Get-ChildItem -Path $SkillsSource -Directory
$count = 0
foreach ($s in $skills) {
    $dest = Join-Path $TargetDir $s.Name
    Copy-Item -Path $s.FullName -Destination $dest -Recurse -Force
    $count++
}

Write-Host ">> Da dong bo thanh cong $count skills sang Claude Code!" -ForegroundColor Green

# Dong bo AGENTS.md va SOUL.md vao ~/.claude/
if (Test-Path "$RulesSource\AGENTS.md") {
    Copy-Item -Path "$RulesSource\AGENTS.md" -Destination "$ClaudeConfig\AGENTS.md" -Force
    Copy-Item -Path "$RulesSource\AGENTS.md" -Destination "$ClaudeConfig\CLAUDE.md" -Force
    Write-Host ">> Da cap nhat rules AGENTS.md va CLAUDE.md!" -ForegroundColor Yellow
}

if (Test-Path "$RulesSource\SOUL.md") {
    Copy-Item -Path "$RulesSource\SOUL.md" -Destination "$ClaudeConfig\SOUL.md" -Force
    Write-Host ">> Da cap nhat SOUL.md!" -ForegroundColor Yellow
}

Write-Host " Hoan tat cau hinh Claude Code!" -ForegroundColor Cyan
