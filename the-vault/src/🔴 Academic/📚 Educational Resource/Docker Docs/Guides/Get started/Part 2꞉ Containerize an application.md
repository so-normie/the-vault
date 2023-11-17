---
title: Part 2꞉ Containerize an application
created: 2023-10-31T17:48
updated: 2023-11-16T23:07
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/🔖/guides/get-started/part-2-containerize-an-application
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: "🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Get started::Part 2: Containerize an application"
---

# Containerize an application

---

> [!ABSTRACT]+
> [Containerize an application | Docker Docs](https://docs.docker.com/get-started/02_our_app/)

---

> [!INFO]+ 
> **Previous Note(s)**:
> - [Part 1꞉ Overview](the-vault/src/🔴%20Academic/📚%20Educational%20Resource/Docker%20Docs/Guides/Get%20started/Part%201꞉%20Overview.md)

---

## Prerequisites

## Get the app

## Build the app's image

To {1:build the image}, you'll need to use a {2:Dockerfile}. 
^1699320877568

﹇<br>
What is a Dockerfile?

#card 

A Dockerfile is simply a text-based file with no file extension that contains a script of instructions. Docker uses this script to build a container image.

⌂
<br>﹈<br>^1699320877574

﹇<br>
What is the general process to building an app’s image?

#card 

1. Create the Dockerfile for the application
2. Build the image

⌂
<br>﹈<br>^1699320858022

﹇<br>
What does the following command do?

```bash
$ docker build -t getting-started .
```

#card 

The `docker build` command uses the Dockerfile to build a new image. You might have noticed that Docker downloaded a lot of "layers". This is because you instructed the builder that you wanted to start from the `node:18-alpine` image. But, since you didn't have that on your machine, Docker needed to download the image.

After Docker downloaded the image, the instructions from the Dockerfile copied in your application and used `yarn` to install your application's dependencies. The `CMD` directive specifies the default command to run when starting a container from this image.

Finally, the `-t` flag tags your image. Think of this as a human-readable name for the final image. Since you named the image `getting-started`, you can refer to that image when you run a container.

The `.` at the end of the `docker build` command tells Docker that it should look for the `Dockerfile` in the current directory.

⌂
<br>﹈<br>^1699320858031

## Start an app container

﹇<br>
What does the following code do?

```bash
$ docker run -dp 127.0.0.1:3000:3000 getting-started
```

#card 

Runs your container.

The `-d` flag (short for `--detach`) runs the container in the background. 

The `-p` flag (short for `--publish`) creates a port mapping between the host and the container. The `-p` flag takes a string value in the format of `HOST:CONTAINER`, where `HOST` is the address on the host, and `CONTAINER` is the port on the container. The command publishes the container's port 3000 to `127.0.0.1:3000` (`localhost:3000`) on the host. Without the port mapping, you wouldn't be able to access the application from the host.

⌂
<br>﹈<br>^1699320858038

Run the following {1:`docker ps`} command in a terminal to {2:list your containers}.

---

> [!INFO]+ 
> **Next Note(s)**:
> - 

---
