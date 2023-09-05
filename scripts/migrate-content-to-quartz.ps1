# Source and destination directories
$sourceDir = "C:\Users\edmun\Projects\Repositories\the-vault"
$destDir = "C:\Users\edmun\Projects\Repositories\quartz\content"

# Directories and files to exclude
$excludedDirectories = @("templates", ".obsidian", ".github", ".trash", "anki", "scripts")
$excludedFiles = @(".gitignore", "README.md", ".gitmodules")

# Check if destination directory exists, if not, create it
if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir
}

# Function to sanitize filenames
function Sanitize-FileName($fileName) {
    # Remove emojis
    $fileName = [regex]::replace($fileName, '\p{So}', '')

    # Remove leading and trailing spaces
    $fileName = $fileName.Trim()

    # Remove single and double quotes
    $fileName = $fileName -replace "[`"']",''

    # Replace special colons and double colons with hyphens
    $fileName = $fileName -replace "꞉꞉|::", '-'

    # Replace "꞉ " with "-"
    $fileName = $fileName -replace "꞉ ", '-'

    # Remove periods right after a number
    $fileName = $fileName -replace "(?<=\d)\.", ''

    return $fileName
}

# Copy files and folders
Get-ChildItem -Path $sourceDir -Recurse | ForEach-Object {
    $exclude = $False
    foreach ($dir in $excludedDirectories) {
        if ($_.FullName -match "\\$dir\\") {
            $exclude = $True
            break
        }
    }
    if ($exclude -or ($excludedFiles -contains $_.Name)) {
        Write-Host "Skipping excluded directory or file: $($_.FullName)"
    } else {
        $destination = $destDir + $_.FullName.Substring($sourceDir.Length)

        # Check if sanitization is needed and if so, sanitize the filename
        $sanitizedDestination = Sanitize-FileName $destination
        if ($sanitizedDestination -ne $destination) {
            $destination = $sanitizedDestination
        }

        if ($_.PSIsContainer) {
            New-Item -ItemType Directory -Force -Path $destination
        } else {
            Copy-Item -Path $_.FullName -Destination $destination -Force
        }
    }
}

