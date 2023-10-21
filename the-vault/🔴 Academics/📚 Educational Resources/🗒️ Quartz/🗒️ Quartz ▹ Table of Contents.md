---
title: 🗒️ Quartz
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/quartz
  - study-note
cards-deck: Default::Computer Science
created: 2023-10-13T01:57
updated: 2023-10-21T13:19
---

# 🗒️ Quartz

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## 🗒️ Quartz

Where is the repository, or project homepage, for this software? 
#card 
- **GitHub**: [jackyzha0/quartz: 🌱 host your own second brain and digital garden for free (github.com)](https://github.com/jackyzha0/quartz)
- **Homepage**: 
^1691896819075

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
#card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- `docker run`: This is the command used to start a new Docker container.
- `-it`: These are flags that start the container in interactive mode with a pseudo-TTY, which means you'll be put directly into the command line interface of the container.
- `--volume=$(shell pwd):/quartz`: This flag mounts a volume from the host machine (the directory where you're running this command, `$(shell pwd)`) to the `/quartz` directory in the Docker container. Any changes made in the host's directory will reflect in the `/quartz` directory of the container, and vice versa.
- `-p 1313:1313`: This flag maps port 1313 in the Docker container to port 1313 on the host machine. This allows you to access the service running inside the Docker container (presumably a web server, since Hugo typically serves sites on port 1313) directly at `localhost:1313` on your host machine.
- `ghcr.io/jackyzha0/quartz:hugo`: This is the Docker image that the container will be based on. This particular image is hosted on GitHub's container registry (ghcr.io) and belongs to the user `jackyzha0`. The image is called `quartz` and the `hugo` tag suggests that it's an image configured specifically for running Hugo.
^1691105070997

What does `ghrc.io` mean?
#card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker  
- This specifies that the particular image is hosted on GitHub’s container registry (ghcr.io).
- For example, `ghcr.io/jackyzha0/quartz:hugo` means that the image belongs to the user `jackyzha0`, the image is called `quartz`, and the `hugo` tag suggests that it's an image configured specifically for running Hugo. 
^1691105071003

What does the following code do? #card 
❗ To be filled
^1691146224916

If I put an emoji in the value for the `title` of my metadata, will the emoji be properly rendered/display correctly in browser?  In other words, can I have emojis in the title of my webpage?
#card 
Yes, you can have emojis in the titles of webpages. (The title that is shown on the current tab)
^1691896819081

When making internal links, what setting ***must*** I set in Obsidian for when I make internal links?
#card 
No! This is an error I had when including the _root directory_ of my Obsidian vault in the contents folder.
- I should use the “Absolute path” and make sure that my Obsidian vault’s _content_ (not the directory itself) is in the `content/` folder of my Quartz project 
^1691896819086

When editing my markdown files in Obsidian, can I use the “Absolute path” option for the “new link format” setting?
#card 
Yes! Just need to make sure that my Obsidian vault’s _content_ (not the directory itself) is in the `content/` folder of my Quartz project 
^1691896819091

Should I turn **on** the  **Automatically update internal links** setting?
#card 
Yes! This is required for Quartz to successfully convert/serve the markdown files.
^1691896915405

Does Quartz support **mathjax**?
#card 
Yes! It does support **mathjax**.
^1691897124575

Just to clarify, when I run `make serve`, am I using a docker image or am I simply serving the files locally in my repo without using a docker image?
#card 
When you call the `serve` target with `make`, you are **not** using a docker image.
^1691901759317

In the context of GitHub Actions, what is a brief summary of the output of the following `docker-publish.yaml` file…
```yaml
name: Create and publish a Docker image  
on:  
  push:  
    branches: ['hugo']  
env:  
  REGISTRY: ghcr.io  
  IMAGE_NAME: ${{ github.repository }}  
jobs:  
  build-and-push-image:  
    if: github.repository == 'edmund-leibert/quartz'  
    runs-on: ubuntu-latest  
    permissions:  
      contents: read  
      packages: write  
    steps:  
      - name: Checkout repository  
        uses: actions/checkout@v3  
      - name: Log in to the Container registry  
        uses: docker/login-action@f054a8b539a109f9f41c372932f1ae047eff08c9  
        with:  
          registry: ${{ env.REGISTRY }}  
          username: ${{ github.actor }}  
          password: ${{ secrets.GITHUB_TOKEN }}  
      - name: Extract metadata (tags, labels) for Docker  
        id: meta  
        uses: docker/metadata-action@98669ae865ea3cffbcbaa878cf57c20bbf1c6c38  
        with:  
          images: ${{ env.REGISTRY }}/${{ env.IMAGE_NAME }}  
      - name: Build and push Docker image  
        uses: docker/build-push-action@ad44023a93711e3deb337508980b4b5e9bcdc5dc  
        with:  
          context: .  
          push: true  
          tags: ${{ steps.meta.outputs.tags }}  
          labels: ${{ steps.meta.outputs.labels }}
```
#card 
This is a GitHub Actions workflow that builds and publishes a Docker image to the GitHub Container Registry (ghcr.io) when there is a push to the `hugo` branch of the `jackyzha0/quartz` repository.
The workflow has one job, `build-and-push-image`, which runs on an `ubuntu-latest` runner. The job has several steps:
1. **Checkout repository**: This step checks out the repository using the `actions/checkout@v3` action.
2. **Log in to the Container registry**: This step logs in to the GitHub Container Registry using the `docker/login-action` action. It uses the `github.actor` and `secrets.GITHUB_TOKEN` values for authentication.
3. **Extract metadata (tags, labels) for Docker**: This step extracts metadata for the Docker image using the `docker/metadata-action`. The metadata includes tags and labels for the image.
4. **Build and push Docker image**: This step builds and pushes the Docker image using the `docker/build-push-action`. It uses the context of the current directory (`.`), and pushes the image with the tags and labels extracted in the previous step.
This workflow automates the process of building and publishing a Docker image to the GitHub Container Registry whenever there is a push to the specified branch of the specified repository. It makes use of several pre-built actions to perform tasks such as checking out the repository, logging in to the container registry, extracting metadata, and building and pushing the Docker image.
^1691901759324

When testing my Docker image locally, what must I always remember to do after pushing my changes and (hopefully) building my image again? 
#card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker  
Need to run the command `docker pull ghcr.io/edmund-leibert/quartz:hugo` to make sure I have the most recent image on my machine.
^1691973635598

If I am **just** using GitHub Pages to host my Quartz website, what should I make sure to do when configuring my website?
#card 
Make sure in the `config.toml` of your website that you are setting it to your URL *with* the necessary `/quartz/` appended to end of it.
Image for reference…
![[the-vault/assets/images/Pasted image 20230813091946.png|550]]
^1691973635606

What does the following console error mean?
```
> Access to fetch at 'https://edmund-leibert.github.io/quartz/indices/contentIndex.4300c34035bc65f969ede19f34daa5c0.min.json' from origin 'https://edmund-leibert.dev' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource. If an opaque response serves your needs, set the request's mode to 'no-cors' to fetch the resource with CORS disabled.
```
#card 
Essentially, the issue is that you are trying to have the JavaScript (that the client has downloaded) access a resource form a **separate** URL.
- This is a security/guarantee feature of most browsers to ensure their is no malicious downloading of unwanted resources.
- For further insight, take a look in DevTools to see that in “Application” > “Frames” the HTML/JS resources are making a request for resources from a URL **_not_** from where they originated from.
![[the-vault/assets/images/Pasted image 20230813121059.png]]
^1691973635614



---

## 🔜 Next Note(s):

---
