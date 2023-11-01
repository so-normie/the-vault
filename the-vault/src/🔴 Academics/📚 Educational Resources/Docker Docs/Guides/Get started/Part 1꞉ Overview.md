---
name: "Part 1: Overview"
created: 2023-10-31T17:48
updated: 2023-10-31T19:35
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/guides/get-started/part-1-overview
cards: "🔴 Academics::📚 Educational Resources::Docker Docs::Guides::Get started::Part 1: Overview"
---

# Overview of the get started guide

﹇<br>
What does this guide contain?

#card 

This guide contains step-by-step instructions on how to get started with Docker. This guide shows you how to:
- Build and run an image as a container.
- Share images using Docker Hub.
- Deploy Docker applications using multiple containers with a database.
- Run applications using Docker Compose.

⌂
<br>﹈<br>

## What is a container?

A {1:container} is a {2:sandboxed process running on a host machine that is isolated from all other processes running on that host machine}. 

﹇<br>
What technologies does Docker leverage to isolate containers?

#card 

The isolation leverages [kernel namespaces and cgroupsopen_in_new](https://medium.com/@saschagrunert/demystifying-containers-part-i-kernel-space-2c53d6979504), features that have been in Linux for a long time.

⌂
<br>﹈<br>



