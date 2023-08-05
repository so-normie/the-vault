---
title: "🗒️ Quartz"
created: 2023-08-04 01:58 
authors: [Edmund Leibert III]
tags: [educational-resource/quartz, study-note]
cards-deck: Default::Computer Science
---

# 🗒️ Quartz


When using Quartz, what **must** I remember to do when structuring the metadata of my files? 
#card 
- Hugo is picky when it comes to metadata for files. Make sure that your title is double-quoted and that you have a title defined at the top of your file like so, otherwise the generated page will not have a title!
- You can also add tags here as well.
```markdown
---
title: "Example Title"
tags:
- example-tag
---
Rest of your content here...
```
^1691061037231

What does the following code do? 
`docker run -it --volumne=$(shell pwd):/uartz -pp 1313:1313 ghcr.io/jackyzha0/quartz:hugo` 
#card #computer-science/technology/docker 
- `docker run`: This is the command used to start a new Docker container.
- `-it`: These are flags that start the container in interactive mode with a pseudo-TTY, which means you'll be put directly into the command line interface of the container.
- `--volume=$(shell pwd):/quartz`: This flag mounts a volume from the host machine (the directory where you're running this command, `$(shell pwd)`) to the `/quartz` directory in the Docker container. Any changes made in the host's directory will reflect in the `/quartz` directory of the container, and vice versa.
- `-p 1313:1313`: This flag maps port 1313 in the Docker container to port 1313 on the host machine. This allows you to access the service running inside the Docker container (presumably a web server, since Hugo typically serves sites on port 1313) directly at `localhost:1313` on your host machine.
- `ghcr.io/jackyzha0/quartz:hugo`: This is the Docker image that the container will be based on. This particular image is hosted on GitHub's container registry (ghcr.io) and belongs to the user `jackyzha0`. The image is called `quartz` and the `hugo` tag suggests that it's an image configured specifically for running Hugo.
^1691105070997

What does `ghrc.io` mean?
#card #computer-science/technology/docker  
- This specifies that the particular image is hosted on GitHub’s container registry (ghcr.io).
- For example, `ghcr.io/jackyzha0/quartz:hugo` means that the image belongs to the user `jackyzha0`, the image is called `quartz`, and the `hugo` tag suggests that it's an image configured specifically for running Hugo. 
^1691105071003

What does the following code do? #card 
^1691146224916

If I put an emoji in the value for the `title` of my metadata, will the emoji be properly rendered/display correctly in browser?  In other words, can I have emojis in the title of my webpage?
#card 
Yes, you can have emojis in the titles of webpages. (The title that is shown on the current tab)


