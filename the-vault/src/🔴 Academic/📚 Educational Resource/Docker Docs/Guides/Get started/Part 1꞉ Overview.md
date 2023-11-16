---
title: Part 1꞉ Overview
created: 2023-10-31T17:48
updated: 2023-11-06T17:42
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/guides/get-started/part-1-overview
  - 🔴-academic/📚-educational-resource/source-format/internet
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: "🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Get started::Part 1: Overview"
---

# Overview of the get started guide

---

> [!ABSTRACT]+
> 

---


> [!INFO]+ 
> **Previous Note(s)**:
> 

---

﹇<br>
What does this guide contain? [@OverviewGetStarted0200]

#card 

This guide contains step-by-step instructions on how to get started with Docker. This guide shows you how to:
- Build and run an image as a container.
- Share images using Docker Hub.
- Deploy Docker applications using multiple containers with a database.
- Run applications using Docker Compose.

⌂
<br>﹈<br>^1698833072729


## What is a container?

A {1:container} is a {2:sandboxed process running on a host machine that is isolated from all other processes running on that host machine}. 
^1698833072764

﹇<br>
What technologies does Docker leverage to isolate containers?

#card 

The isolation leverages _kernel namespaces_ and _cgroups_, features that have been in Linux for a long time.

⌂
<br>﹈<br>^1698833072768


﹇<br>
In brief, what is a container?

#card 

- Is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI.
- Can be run on local machines, virtual machines, or deployed to the cloud.
- Is portable (and can be run on any OS).
- Is isolated from other containers and runs its own software, binaries, configurations, etc.

⌂
<br>﹈<br>^1698833072772


If you're familiar with {`chroot`}, then think of a container as an extended version of {`chroot`}. The filesystem comes from the image. However, a container adds additional isolation not available when using chroot.
^1698833072778

## What is an image?

A running container uses an {isolated filesystem}.
^1698833246162

The {1:isolated filesystem} is provided by an {2:image}, and the {2:image} must contain {3:everything needed to run an application - all dependencies, configurations, scripts, binaries, etc.}
^1698833246166

## Next steps

---


> [!INFO]+ 
> **Next Note(s)**:
> - [Part 2꞉ Containerize an application](the-vault/src/🔴%20Academic/📚%20Educational%20Resource/Docker%20Docs/Guides/Get%20started/Part%202꞉%20Containerize%20an%20application.md)

---



