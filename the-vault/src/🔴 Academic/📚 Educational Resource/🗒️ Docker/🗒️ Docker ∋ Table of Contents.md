---
title: 🗒️ Docker
created: 2023-08-04 01:58
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: Default::Computer Science
updated: 2023-11-18T02:44
---

# 🗒️ Docker

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## 🗒️ Docker

How do you create and start a container from a  service?
#card 
`docker-compose up`
^1691904610426

How do I start containers in the background and leave them running? 
#card 
`docker-compose up -d`
^1691904610445

Why would I need to start a container in the background? 
#card
- Before starting a Docker container, you must decide if you want to run it in the default foreground mode or in the background in a detached mode. In the foreground mode, Docker can start the process in the container and attach the console to the process’s standard input, output, and standard error. The disadvantage of running a container in the foreground is that you cannot access the command prompt anymore. Which means you cannot run any other commands while the container is running¹.
- To run a Docker container in the background, use the `-d` option. This starts the containers in the background and leaves them running¹. This means that you can use your terminal for other purposes while the container is running.
- Source: Conversation with Bing, 6/14/2023
  (1) Run Docker Container in Background (Detached Mode) - Tecmint. https://www.tecmint.com/run-docker-container-in-background-detached-mode/.
  (2) How to launch and keep a background process inside a Docker container. https://stackoverflow.com/questions/52856059/how-to-launch-and-keep-a-background-process-inside-a-docker-container.
  (3) Docker run reference | Docker Documentation. https://docs.docker.com/engine/reference/run/.
  (4) How to run a docker container in the background or detached mode in the .... https://melvingeorge.me/blog/run-docker-container-in-background-or-detached-mode-terminal.
^1691904610453

**Front**: What does the command `docker-compose down -v` do? 
#card 
**Back**: The `docker-compose down` command stops all services associated with a Docker Compose configuration. Unlike `stop`, it also removes any containers and internal networks associated with the services. But it does not remove internally specified volumes by default. To do that as well, you need to additionally specify the `-v` flag after the `down` command.
^1691904610460

What is the difference between docker and docker-compose?
#card 
- **Docker** is a platform that allows you to develop, test, and deploy applications as portable containers that can run virtually anywhere. The `docker` command line interface (CLI) is used to manage individual containers on a docker engine. It is the client command line to access the docker daemon API¹.
- On the other hand, `docker-compose` is a tool for defining and running multi-container Docker applications. With `docker-compose`, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration¹.
- In summary, `docker` manages single containers while `docker-compose` manages multiple container applications.
- Source: Conversation with Bing, 6/14/2023
  (1) What is the difference between docker and docker-compose. https://stackoverflow.com/questions/37966552/what-is-the-difference-between-docker-and-docker-compose.
  (2) Difference between "docker compose" and "docker-compose". https://stackoverflow.com/questions/66514436/difference-between-docker-compose-and-docker-compose.
  (3) Docker run vs docker-compose: What's the difference? - TheServerSide. https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Docker-run-vs-docker-compose-Whats-the-difference.
  (4) Dockerfile vs docker-compose: What's the difference? - TheServerSide. https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Dockerfile-vs-docker-compose-Whats-the-difference.
  (5) Difference between Docker vs docker-compose and docker swarm - Naiveskill. https://naiveskill.com/docker-vs-docker-compose/.
^1691904610466

Consider the case where I have already instantiated a docker image and have a container currently running on my machine but I forgot to open an integrated terminal to that container. How can I run a shell inside the container?
#card 
If you have a running Docker container and want to browse its contents via the terminal, you can use the `docker exec` command to run a shell inside the container. This will allow you to interact with the container’s file system and execute commands as if you were logged in to the container.
Here is an example command that you can use to start a shell inside a running Docker container:
```sh
docker exec -it <container_name> /bin/bash
```
In this command, `<container_name>` should be replaced with the name or ID of your running container. The `-it` option tells Docker to allocate a pseudo-TTY and keep STDIN open, which allows you to interact with the shell. The `/bin/bash` argument specifies the command to run inside the container, which in this case is a `bash` shell.
Once you have started a shell inside the container, you can use standard Linux commands such as `ls`, `cd`, and `cat` to browse the contents of the container’s file system. When you are finished, you can exit the shell by typing `exit` or pressing `Ctrl-D`.
^1691904610474

What command should you run to list all containers, including those that are currently running?
#card-reverse 
To do that, you can do this…
`docker ps -a`
^1691905458949


What command should you run to list all containers that were created from the `ghcr.io/edmund-leibert/quartz:hugo` image?
#card-reverse 
To do that, you can do this…
`docker ps -a --filter ancestor=ghcr.io/edmund-leibert/quartz:hugo`
^1691905458956

What command can I use to start an existing container that is not currently running?
#card-reverse 
To do that, you can do this…
`docker start <container_id>`
^1691905458962

When I run the following command, does it always instantiate a new container?
```
docker run -it --volume=$(shell pwd):/quartz -p 1313:1313 ghcr.io/edmund-leibert/quartz:hugo
```
#card 
Yes, when you run the `docker run` command, it will always create and start a new container from the specified image. In this case, the command you provided will create and start a new container from the `ghcr.io/edmund-leibert/quartz:hugo` image.
The `-it` option tells Docker to allocate a pseudo-TTY and keep STDIN open, which allows you to interact with the container. The `--volume=$(shell pwd):/quartz` option mounts the current working directory (`$(shell pwd)`) on the host machine to the `/quartz` directory inside the container. The `-p 1313:1313` option maps port 1313 on the host machine to port 1313 inside the container.
Once the container is started, you can interact with it via the terminal. When you are finished, you can stop and remove the container using the `docker stop` and `docker rm` commands.
^1691905674106



---

## 🔜 Next Note(s):

---



