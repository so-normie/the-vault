# Define the path to Anki's collection.media folder
$collectionMediaPath = "C:\Users\edmun\AppData\Roaming\Anki2\Edmund Leibert III (User 1)\collection.media"

# Copy the assets folder to the collection.media folder
Copy-Item -Path "../assets" -Destination $collectionMediaPath -Recurse
