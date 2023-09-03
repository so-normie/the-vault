
# Get every item in the Assets/Audio and Assets/Images folders and copy them to Anki's collection.media folder
$collectionMediaPath = "C:\Users\edmun\AppData\Roaming\Anki2\Edmund Leibert III\collection.media"
Get-ChildItem -Path {"..\Assets\Audio" , "..\Assets\Images"} -Recurse | Copy-Item -Destination $collectionMediaPath -Force
