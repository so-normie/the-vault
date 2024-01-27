---
title: What is a container?
created: 2023-10-31T16:39
updated: 2024-01-25T16:47
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resources/name/docker-docs/🔖/guides/walkthroughs/what-is-a-container?
  - 🔴-academic/📚-educational-resources/format/website
  - 🔴-academic/📚-educational-resources/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Walkthroughs::What is a container?
---

# What is a container?

---

> [!abstract]+ 
> Notes that pertain to [What is a container? | Docker Docs](https://docs.docker.com/guides/walkthroughs/what-is-a-container/). Explore a running container in Docker Desktop.

---

> [!info]+ 
> **Previous Note(s):**
> 

---

A {{1:container} is an {2:isolated environment for your code}.
^1700215950468

﹇<br>
Does a container have knowledge of your operating system, or files?

#card 

No, a container has no knowledge of your operating system, or your files

⌂
<br>﹈<br>^1700215950502

﹇<br>
Do _containers_ have everything that you need in order to run, down to a base operating system?

#card 

Yes.

⌂
<br>﹈<br>^1700215950514

## Step 1: Set up walkthrough

﹇<br>
What exactly is the **Host port** option under **Optional settings** when running a image from Docker Desktop?

![|400](https://docs.docker.com/guides/walkthroughs/images/getting-started-setup.webp?w=250&border=true)

#card 

The **Host port** option under **Optional settings** when running an image from Docker Desktop is used to map a port on your host machine to a port in the Docker container. This is known as port mapping or port forwarding.

When you run a Docker container, it has its own set of port numbers. [If you want to access a service on this container from your host machine or network, you need to map a port on your host to a port on the container](https://docs.docker.com/desktop/networking/). [@ExploreNetworkingFeatures0200] [@baeldungAssigningPortMapping2022] 

The syntax for this in Docker is `-p HOST_PORT:CONTAINER_PORT`. [Here, `HOST_PORT` is the port number on your host machine, and `CONTAINER_PORT` is the port number in the container](https://stackoverflow.com/questions/62125794/docker-run-p-what-are-this-two-port-numbers-and-what-they-represents). [@salkiAnswerDockerRun2020] [@baeldungAssigningPortMapping2022] 

For example, if you have a web server running in a Docker container listening on port 80, and you want to access it from your host machine on port 8000, you would use `-p 8000:80`. [Now, if you open a web browser on your host machine and go to `localhost:8000`, you’ll be able to access the web server running in your Docker container](https://docs.docker.com/desktop/networking/). [@ExploreNetworkingFeatures0200] [@baeldungAssigningPortMapping2022] 

⌂
<br>﹈<br>^1700215950549 

## Step 2: View containers on Docker Desktop

﹇<br>
Can you view your containers in Docker Desktop?

#card 

Yes, you can view it in the **Containers** tab of Docker Desktop.

![|550](https://docs.docker.com/guides/walkthroughs/images/getting-started-container.webp?w=400)

⌂
<br>﹈<br>^1700215950559


﹇<br>
The container in this walkthrough runs a simple web server that displays a simple website. What is an example architecture of a more complex project using docker containers?

#card 

When working with more complex projects, you'll run different parts in different containers. For example, a different container for the frontend, backend, and database. In this walkthrough, you only have a simple frontend container.

⌂
<br>﹈<br>^1700215950567

## Step 3: View the frontend

## Step 4: Explore your container

﹇<br>
In Docker Desktop, how can you easily view and interact with different aspects of your container?

#card 

In Docker Desktop, simply select your container and then select **Files** to explore your container's isolated file system.

![|250](https://docs.docker.com/guides/walkthroughs/images/getting-started-explore-container.webp?w=300&border=true)

⌂
<br>﹈<br>^1700215950573

﹇<br>
In Docker Desktop, when I inspect the files of a running container, what does the note “modified” mean of a file?

![|550](the-vault/assets/images/Pasted%20image%2020231117020633.png)

#card 

[In Docker Desktop, when you inspect the files of a running or stopped container, you can see which files have been recently added, modified, or deleted](https://docs.docker.com/desktop/use-desktop/container/)[1](https://docs.docker.com/desktop/use-desktop/container/). [The “modified” note indicates that the file has been changed or updated in some way since the container was started](https://docs.docker.com/desktop/use-desktop/container/)[1](https://docs.docker.com/desktop/use-desktop/container/). 

[This could be due to a variety of reasons, such as an application within the container writing to the file, a user manually editing the file, or a system process updating the file](https://www.howtogeek.com/devops/how-to-inspect-changes-to-a-docker-containers-filesystem/)[2](https://www.howtogeek.com/devops/how-to-inspect-changes-to-a-docker-containers-filesystem/). 

[Remember, any changes made to the container’s filesystem will be lost when the container is restarted or destroyed, unless those changes are made in a volume](https://www.howtogeek.com/devops/how-to-inspect-changes-to-a-docker-containers-filesystem/)[2](https://www.howtogeek.com/devops/how-to-inspect-changes-to-a-docker-containers-filesystem/).

⌂
<br>﹈<br>^1700215950582

## Step 5: Stop your container

The `welcome-to-docker` container continues to {1:run} until you {2:stop it}. To {2:stop} the container in Docker Desktop, go to the {3:**Containers**} tab and select the {4:**Stop**} icon in the {5:**Actions**} column of your container.
^1700215950606

## Next Steps

---

## :EiZoteroItem: Bibliography

\[1\]
“Explore networking features on Docker Desktop,” _Docker Documentation_, 09:42:25 +0200 +0200. Available: [https://docs.docker.com/desktop/networking/](https://docs.docker.com/desktop/networking/). [Accessed: Nov. 17, 2023]

\[2\]
baeldung, “Assigning a Port Mapping to a Running Docker Container | Baeldung on Linux,” Jan. 13, 2022. Available: [https://www.baeldung.com/linux/assign-port-docker-container](https://www.baeldung.com/linux/assign-port-docker-container). [Accessed: Nov. 17, 2023]

\[3\]
I. Salki, “Answer to ‘Docker run -p ?/? (what are this two port numbers and what they represents ),’” _Stack Overflow_, Jun. 01, 2020. Available: [https://stackoverflow.com/a/62125889/8088657](https://stackoverflow.com/a/62125889/8088657). [Accessed: Nov. 17, 2023]

---

> [!info]+
> **Next Note(s):**

---
