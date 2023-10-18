# Source and destination directories
$sourceDir = "C:\Users\edmun\Projects\Repositories\the-vault"
$destDir = "C:\Users\edmun\Projects\Repositories\quartz\content"

# Directories and files to exclude
$excludedDirectories = @("templates", ".obsidian", ".github", ".trash", "anki-flashcards", "scripts")
$excludedFiles = @(".gitignore", "README.md", ".gitmodules")

# Check if destination directory exists, if not, create it
if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir
}

# Copy files and folders
Get-ChildItem -Path $sourceDir -Recurse | ForEach-Object {
    $exclude = $False
    foreach ($dir in $excludedDirectories) {
        if ($_.FullName.Contains("\$dir\")) {
            $exclude = $True
            break
        }
    }
    if ($exclude -or ($excludedFiles -contains $_.Name)) {
        Write-Host "Skipping excluded directory or file: $($_.FullName)"
    } else {
        $destination = $destDir + $_.FullName.Substring($sourceDir.Length)

        if ($_.PSIsContainer) {
            New-Item -ItemType Directory -Force -Path $destination
        } else {
            Copy-Item -Path $_.FullName -Destination $destination -Force
        }
    }
}

