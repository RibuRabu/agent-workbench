param(
    [switch]$Check,
    [switch]$Tree,
    [switch]$Next
)

$ErrorActionPreference = "Stop"

function Write-Section {
    param(
        [string]$Title
    )

    Write-Host ""
    Write-Host "=== $Title ===" -ForegroundColor Cyan
}

function Test-RequiredPath {
    param(
        [string]$Path,
        [string]$Label
    )

    if (Test-Path $Path) {
        Write-Host "[OK] $Label -> $Path" -ForegroundColor Green
        return $true
    }
    else {
        Write-Host "[MISSING] $Label -> $Path" -ForegroundColor Yellow
        return $false
    }
}

function Show-RepoTree {
    Write-Section "Repository tree"

    $items = @(
        "AGENTS.md",
        "workflows",
        "workflows\feature.md",
        "workflows\bugfix.md",
        "workflows\review.md",
        "prompts",
        "prompts\implement.md",
        "prompts\review.md",
        "memory",
        "memory\context.md",
        "scripts",
        "scripts\dev.ps1",
        "experiments"
    )

    foreach ($item in $items) {
        if (Test-Path $item) {
            Write-Host "[FOUND] $item" -ForegroundColor Green
        }
        else {
            Write-Host "[MISSING] $item" -ForegroundColor Yellow
        }
    }
}

function Show-NextSteps {
    Write-Section "Recommended next steps"

    $nextSteps = @(
        "1. Keep AGENTS.md as the primary repository instruction file.",
        "2. Expand prompts with task-specific templates if needed.",
        "3. Add more scripts only when they solve a real repeated workflow.",
        "4. Use Codex in this order: review -> plan -> implement.",
        "5. Keep changes one file at a time unless a multi-file change is truly required."
    )

    foreach ($step in $nextSteps) {
        Write-Host $step -ForegroundColor White
    }
}

function Run-Checks {
    Write-Section "Repository checks"

    $results = @()

    $results += Test-RequiredPath -Path "AGENTS.md" -Label "Root instructions"
    $results += Test-RequiredPath -Path "workflows\feature.md" -Label "Feature workflow"
    $results += Test-RequiredPath -Path "workflows\bugfix.md" -Label "Bugfix workflow"
    $results += Test-RequiredPath -Path "workflows\review.md" -Label "Review workflow"
    $results += Test-RequiredPath -Path "prompts\implement.md" -Label "Implement prompt"
    $results += Test-RequiredPath -Path "prompts\review.md" -Label "Review prompt"
    $results += Test-RequiredPath -Path "memory\context.md" -Label "Repository context"

    $missingCount = ($results | Where-Object { $_ -eq $false }).Count

    Write-Host ""
    if ($missingCount -eq 0) {
        Write-Host "All core repository files are present." -ForegroundColor Green
    }
    else {
        Write-Host "$missingCount required item(s) are missing." -ForegroundColor Yellow
    }
}

Write-Section "Agent Workbench Dev Script"
Write-Host "Location: $(Get-Location)" -ForegroundColor White

if (-not $Check -and -not $Tree -and -not $Next) {
    Run-Checks
    Show-RepoTree
    Show-NextSteps
    exit 0
}

if ($Check) {
    Run-Checks
}

if ($Tree) {
    Show-RepoTree
}

if ($Next) {
    Show-NextSteps
}
