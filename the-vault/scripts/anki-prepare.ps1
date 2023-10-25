
# Ouput to the console a menu to select the type of preparation to be done
# If the user selects "1", then the script will prepare the files for Anki import by replacing "::" with "꞉꞉" in the files
# If the user selects "2", then the script will prepare the files for Anki import by replacing all occurences of the regex occurence \^\d\d\d\d\d\d\d\d\d\d\d\d\d
# If the user selects "3", then the script will exit

# Print the menu to the console
Write-Host "Select the type of preparation to be done:"
Write-Host "1. Replace all occurences of '::' with '꞉꞉'"
Write-Host "2. Replace all occurences of the regex occurence \^\d\d\d\d\d\d\d\d\d\d\d\d\d"
Write-Host "3. Exit"

# Read the user input
$choice = Read-Host "Enter your choice: "

if($choice -eq "1") {
    # Set current directory to the directory of the script
    Set-Location $PSScriptRoot

    # Get all the files in the "🔴 Academics/Study Notes/*" directory
    $files = Get-ChildItem -Path "..\🔴 Academics\Study Notes\*" -Recurse -File

    # Loop through all the files
    foreach ($file in $files) {
        # Print to console the name of the current file being read
        # Write-Host $file.FullName

        # Read the contents of the file
        $contents = Get-Content $file.FullName

        # Count all occurences of "::" with "꞉꞉" in the file that is not preceded by "Default" and store it in a variable named $numberOfOccurences
        $pattern = '::'
        $fileContent = Get-Content $file
        [int]$numberOfOccurences = ($fileContent | Select-String -Pattern $pattern -AllMatches).Matches.Count

        #Print to console the number of occurences of "::" with "꞉꞉" in the file that is not preceded by "Default" if the number of occurences is greater than 1
        if($numberOfOccurences -gt 1) {
            Write-Host "There are $numberOfOccurences occurences of '::' in  $($file.FullName)"
        }

        # Replace all occurences of "::" with "꞉꞉" in the file
        # Exclude replacing occurences of "::" if it is preceded by "Default"
        $contents = $contents -replace "(?<!Default)::", "꞉꞉"


        # Write the contents back to the file
        $contents | Set-Content $file.FullName
    }
}
elseif($choice -eq "2") {
    # Set current directory to the directory of the script
    Set-Location $PSScriptRoot

    # Get all the files in the "🔴 Academics/Study Notes/*" directory
    $files = Get-ChildItem -Path "..\🔴 Academics\Study Notes\*" -Recurse -File

    # Loop through all the files
    foreach ($file in $files) {
        # Read the contents of the file
        $contents = Get-Content $file.FullName

        # Count all occurences of \^\d\d\d\d\d\d\d\d\d\d\d\d\d in the file and store it in a variable named $numberOfOccurences
        $pattern = '\^\d\d\d\d\d\d\d\d\d\d\d\d\d'
        $fileContent = Get-Content $file
        [int]$numberOfOccurences = ($fileContent | Select-String -Pattern $pattern -AllMatches).Matches.Count

        #Print to console the number of occurences of "\^\d\d\d\d\d\d\d\d\d\d\d\d\d" in the file if the number of occurences is greater than 0
        if($numberOfOccurences -gt 0) {
            Write-Host "There are $numberOfOccurences occurences of '\^\d\d\d\d\d\d\d\d\d\d\d\d\d' in  $($file.FullName)"
        }


        # Replace all occurences of the regex occurence \^\d\d\d\d\d\d\d\d\d\d\d\d\d with "" in the file
        $contents = $contents -replace "\^\d\d\d\d\d\d\d\d\d\d\d\d\d", ""
       

        # Write the contents back to the file
        $contents | Set-Content $file.FullName
    }
}
else {
    # Exit the script
    exit
}

