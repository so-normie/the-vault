# Get the current folder path to ..\🔴 Academics\📚 Educational Resources
$folderPath = (Get-Item -Path "../🔴 Academics/📚 Educational Resources/").FullName

# Print the folderPath
Write-Host "folderPath: $folderPath"

# Change the current directory to the folderPath
Set-Location $folderPath

# Get a list of all the files (not folders) in the folder
$folderItems = Get-ChildItem -Path $folderPath -File

# If the file name contains the 🗒️ emoji, then create a folder with the same name as the file name
foreach ($item in $folderItems) {
    if ($item.Name.Contains("📕")) {
        $folderName = $item.Name.Replace(".md", "")
        Write-Host "folderName: $folderName"
        New-Item -Path $folderPath -Name $folderName -ItemType "directory"
        # Move the file into the newly created folder
        Move-Item -Path $item.FullName -Destination $folderName
    }
}





