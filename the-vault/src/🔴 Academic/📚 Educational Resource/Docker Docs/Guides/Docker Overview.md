---
title: Docker Overview
created: 2023-10-31T17:48
updated: 2023-11-20T05:03
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/🔖/guides/docker-overview
  - 🔴-academic/📚-educational-resource/source-format/internet
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Docker Overview
version: v0.1
---

---

> [!ABSTRACT]+
> These notes pertain to [Docker overview | Docker Docs](https://docs.docker.com/get-started/overview/#responsive-deployment-and-scaling).

---


> [!INFO]+ 
> **Previous Note(s)**:
> 

---

# Docker overview

﹇<br>
What is Docker and what is its main purpose? How does it achieve this purpose?

#card 

Docker is an open platform for developing, shipping, and running applications. Its main purpose is to separate applications from infrastructure to enable quick software delivery. Docker achieves this by containerizing applications, which means packaging an application and its dependencies into a standardized unit for software development. This containerization allows applications to be run on any machine without worrying about specific system requirements or dependencies.

⌂
<br>﹈<br>^1698913810129



﹇<br>
How does Docker allow you to manage your infrastructure? Can you provide an example of how this might work in practice?

#card 

Docker allows you to manage your infrastructure in the same ways you manage your applications. This means that you can use Docker to create, deploy, start, stop, and monitor your applications and services in a consistent way across different environments. 

For example, if you have a web application that requires a specific version of a database server, instead of manually installing and configuring that database on your production servers, you can use Docker to create a container that includes your application and the database server. You can then deploy this container to any environment that supports Docker, ensuring consistency across your development, testing, and production environments.

⌂
<br>﹈<br>^1698913810142


﹇<br>
What are the advantages of Docker’s methodologies for shipping, testing, and deploying code? How do these methodologies work in practice?

#card 

Docker’s methodologies for shipping, testing, and deploying code can significantly reduce the delay between writing code and running it in production. This is achieved through the use of Docker images and containers. 
- A Docker image is a lightweight, standalone, executable package that includes everything needed to run a piece of software, including the code, a runtime, libraries, environment variables, and config files. 
- A Docker container is a runtime instance of an image. When you want to run your application, you can simply start a new container using the Docker image you’ve created. This leads to faster iterations and more efficient development cycles as it eliminates the “it works on my machine” problem.

⌂
<br>﹈<br>^1698913810147


## The Docker platform

{1:Docker} provides the ability to package and run an application in a loosely isolated environment called a {2:container}.
^1698913810153

﹇<br>
What is a Docker container and what are its advantages?

#card

A Docker container is a loosely isolated environment that packages and runs an application. The isolation and security allow many containers to run simultaneously on a given host. Containers are lightweight and contain everything needed to run the application, eliminating reliance on the host's installed software. This ensures consistency, as everyone you share with gets the same container that works in the same way.

⌂
<br>﹈<br>^1698913810157


﹇<br>
How does Docker manage the lifecycle of containers?

#card 

Docker provides tooling and a platform to manage the lifecycle of containers. This includes developing your application and its supporting components using containers, distributing and testing your application as a container, and deploying your application into your production environment as a container or an orchestrated service.

⌂
<br>﹈<br>^1698913810161


﹇<br>
Front: How does Docker's approach benefit the deployment of applications?

#card 

With Docker, when you're ready to deploy your application into your production environment, it can be deployed as a container or an orchestrated service. This works the same whether your production environment is a local data center, a cloud provider, or a hybrid of the two. This ensures consistency and portability across different environments.

⌂
<br>﹈<br>^1698913810165


## What can I use Docker for?

### Fast, consistent delivery of your applications

 Containers are great for {1:continuous integration and continuous delivery (CI/CD) workflows}.
^1698913810168

﹇<br>
What is a good example scenario that highlights how Docker can be used for fast, consistent delivery of applications?

#card-reverse  

Consider the following example scenario:
- Your developers write code locally and share their work with their colleagues using Docker containers.
- They use Docker to push their applications into a test environment and run automated and manual tests.
- When developers find bugs, they can fix them in the development environment and redeploy them to the test environment for testing and validation.
- When testing is complete, getting the fix to the customer is as simple as pushing the updated image to the production environment.

⌂
<br>﹈<br>^1698913810172


### Responsive deployment and scaling


﹇<br>
How does Docker’s container-based platform enhance workload portability?

#card 

Docker’s container-based platform allows for highly portable workloads. Docker containers can run on a developer’s local laptop, on physical or virtual machines in a data center, on cloud providers, or in a mixture of environments. This flexibility makes it easy to move workloads across different environments as needed.

⌂
<br>﹈<br>^1698913810176


### Running more workloads on the same hardware

﹇<br>
How does Docker facilitate responsive deployment and scaling?

#card 

Docker’s portability and lightweight nature make it easy to dynamically manage workloads. You can scale up or tear down applications and services as business needs dictate, in near real time. This allows for responsive deployment and scaling to meet changing demands.

⌂
<br>﹈<br>^1698913810180


﹇<br>
How does Docker contribute to running more workloads on the same hardware?

#card 

Docker is lightweight and fast, providing a viable, cost-effective alternative to hypervisor-based virtual machines. This allows you to use more of your server capacity to achieve your business goals. Docker is ideal for high-density environments and for small and medium deployments where you need to do more with fewer resources.

⌂
<br>﹈<br>^1698913810183


## Docker architecture

Docker uses a {1:client-server architecture}.
^1698913810188

﹇<br>
What architecture does Docker use and what are the main components of this architecture?

#card 

Docker uses a client-server architecture. The main components of this architecture are the Docker client and the Docker daemon. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing Docker containers.

![|600](the-vault/assets/images/docker-docs-docker-architecture.png)

⌂
<br>﹈<br>^1698913810192


﹇<br>
How can the Docker client and daemon be configured to run?

#card 

The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. This provides flexibility in how you set up and manage your Docker environment.

⌂
<br>﹈<br>^1698913810196


﹇<br>
How do the Docker client and daemon communicate?

#card 

The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. This allows for robust and flexible communication between the client and daemon.

⌂
<br>﹈<br>^1698913810199


﹇<br>
What is Docker Compose and how does it relate to the Docker client?

#card 

Docker Compose is another Docker client that lets you work with applications consisting of a set of containers. It provides a higher level of abstraction for managing multi-container applications.

⌂
<br>﹈<br>^1698913810203


### The Docker daemon

﹇<br>
What is the Docker daemon and what is its role?

#card

The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

⌂
<br>﹈<br>^1698913810207


### The Docker client

﹇<br>
What is the Docker client and how does it interact with Docker?

#card

The Docker client (`docker`) is the primary way that many Docker users interact with Docker. When you use commands such as `docker run`, the client sends these commands to `dockerd`, which carries them out. The `docker` command uses the Docker API. The Docker client can communicate with more than one daemon.

⌂
<br>﹈<br>^1698913810212


### Docker Desktop

﹇<br>
What is Docker Desktop?

#card

Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (`dockerd`), the Docker client (`docker`), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper.

⌂
<br>﹈<br>^1698913810216


### Docker registries

﹇<br>
What are Docker registries?

#card

A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker looks for images on Docker Hub by default. You can even run your own private registry. When you use the `docker pull` or `docker run` commands, Docker pulls the required images from your configured registry. When you use the docker push command, Docker pushes your image to your configured registry.

⌂
<br>﹈<br>^1698913810222


### Docker objects

﹇<br>
What are some of the objects you create and use when working with Docker?

#card

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects.

⌂
<br>﹈<br>^1698913810228


#### Images

﹇<br> What is a Docker image and how is it created?

#card

A Docker image is a read-only template with instructions for creating a Docker container. It’s often based on another image, with some additional customization. An image is created using a Dockerfile, which has a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt.

⌂
<br>﹈<br>

#### Containers

﹇<br>
What is a Docker container and how does it differ from an image?

#card

A Docker container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. A container is defined by its image as well as any configuration options you provide to it when you create or start it. Unlike an image, which is read-only, a container has a read-write filesystem.

⌂
<br>﹈<br>^1698913810233

A {1:container} is defined by its {2:image} as well as {2:any configuration options you provide to it when you create or start it}. When a container is removed, {3:any changes to its state that aren't stored in persistent storage disappear}.
^1698914829748

#### Example docker run command

﹇<br>
What happens when you run a Docker container using the `docker run` command?

#card

When you run a Docker container using the docker run command, several things happen:
1. If you don’t have the required image locally, Docker pulls it from your configured registry. 
2. Docker creates a new container and allocates a read-write filesystem to it. 
3. Docker creates a network interface to connect the container to the default network.
4. Finally, Docker starts the container and executes the specified command.

⌂
<br>﹈<br>^1698913810239


﹇<br>
What does the following command do?

```bash
$ docker run -i -t ubuntu /bin/bash
```

#card 

The following command runs an `ubuntu` container, attaches interactively to your local command-line session, and runs `/bin/bash`.

When you run this command, the following happens (assuming you are using the default registry configuration):

1. If you don't have the `ubuntu` image locally, Docker pulls it from your configured registry, as though you had run `docker pull ubuntu` manually.
2. Docker creates a new container, as though you had run a `docker container create` command manually.
3. Docker allocates a read-write filesystem to the container, as its final layer. This allows a running container to create or modify files and directories in its local filesystem.
4. Docker creates a network interface to connect the container to the default network, since you didn't specify any networking options. This includes assigning an IP address to the container. By default, containers can connect to external networks using the host machine's network connection.
5. Docker starts the container and executes `/bin/bash`. Because the container is running interactively and attached to your terminal (due to the `-i` and `-t` flags), you can provide input using your keyboard while Docker logs the output to your terminal.
6. When you run `exit` to terminate the `/bin/bash` command, the container stops but isn't removed. You can start it again or remove it.

⌂
<br>﹈<br>^1698913810244



When you run {1:`exit`} to terminate the `/bin/bash` command, the container {2:stops but isn't removed}. You can start it again or remove it.
^1698913810251


## The underlying technology

﹇<br>
Which programming language is Docker primarily written in and why might this language have been chosen?

#card 

Docker is primarily written in the Go programming language. Go, often referred to as Golang, is known for its efficiency and accessibility in terms of compilation and execution times, which makes it a suitable choice for systems-level programming.

⌂
<br>﹈<br>^1698905013603


﹇<br>
How does Docker utilize the Linux kernel to deliver its functionality?

#card 

Docker takes advantage of several features of the Linux kernel, such as `cgroups` and `namespaces`, to isolate resources and provide each container with its own isolated environment.

⌂
<br>﹈<br>^1698905013648


﹇<br>
Can you explain the role of namespaces within Docker's architecture?

#card 

Namespaces are a feature used by Docker to provide isolated workspaces called containers. When a container is run, Docker creates a set of namespaces for that container, ensuring that each aspect of the container runs in a separate namespace with access limited to that namespace.

⌂
<br>﹈<br>^1698905013656


﹇<br>
What happens at the kernel level when a Docker container is initiated?

#card 

When a Docker container is initiated, a set of namespaces is created for that container. These namespaces provide isolation between containers by ensuring that each aspect of a container runs in its own namespace with access limited to that namespace.

⌂
<br>﹈<br>^1698905013669


﹇<br>
How do namespaces contribute to the isolation between Docker containers?

#card 

Namespaces provide a layer of isolation by ensuring that each aspect of a container runs in its own namespace and its access is limited to that namespace. This means that processes running inside a container do not have visibility into processes running in another container or on the host system.

⌂
<br>﹈<br>^1698905013676

---

## :EiZoteroItem: Bibliography

\[1\]
“Home,” _Docker Docs_, 09:42:25 +0200 +0200. Available: [https://docs.docker.com/](https://docs.docker.com/). [Accessed: Nov. 17, 2023]

---

> [!info]+
> **Next Note(s):**
> - [Part 2꞉ Containerize an application](the-vault/src/🔴%20Academic/📚%20Educational%20Resource/Docker%20Docs/Guides/Get%20started/Part%202꞉%20Containerize%20an%20application.md)

---



