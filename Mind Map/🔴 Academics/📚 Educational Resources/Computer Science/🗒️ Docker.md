---
author: 
publisher: 
published: 
tags: [computer-science/technology/docker, educational-resource/docker, study-note] 
cards-deck: Default::Computer Science
---

# Docker

How do you create and start a container from a  service? #card 
`docker-compose up`

How do I start containers in the background and leave them running? #card 
`docker-compose up -d`

Why would I need to start a container in the background? #card
- Before starting a Docker container, you must decide if you want to run it in the default foreground mode or in the background in a detached mode. In the foreground mode, Docker can start the process in the container and attach the console to the process’s standard input, output, and standard error. The disadvantage of running a container in the foreground is that you cannot access the command prompt anymore. Which means you cannot run any other commands while the container is running¹.
- To run a Docker container in the background, use the `-d` option. This starts the containers in the background and leaves them running¹. This means that you can use your terminal for other purposes while the container is running.
- Source: Conversation with Bing, 6/14/2023
  (1) Run Docker Container in Background (Detached Mode) - Tecmint. https://www.tecmint.com/run-docker-container-in-background-detached-mode/.
  (2) How to launch and keep a background process inside a Docker container. https://stackoverflow.com/questions/52856059/how-to-launch-and-keep-a-background-process-inside-a-docker-container.
  (3) Docker run reference | Docker Documentation. https://docs.docker.com/engine/reference/run/.
  (4) How to run a docker container in the background or detached mode in the .... https://melvingeorge.me/blog/run-docker-container-in-background-or-detached-mode-terminal.

**Front**: What does the command `docker-compose down -v` do? #card 
**Back**: The `docker-compose down` command stops all services associated with a Docker Compose configuration. Unlike `stop`, it also removes any containers and internal networks associated with the services. But it does not remove internally specified volumes by default. To do that as well, you need to additionally specify the `-v` flag after the `down` command.

What is the difference between docker and docker-compose? #card 
- `Docker` is a platform that allows you to develop, test, and deploy applications as portable containers that can run virtually anywhere. The `docker` command line interface (CLI) is used to manage individual containers on a docker engine. It is the client command line to access the docker daemon API¹.
- On the other hand, `docker-compose` is a tool for defining and running multi-container Docker applications. With `docker-compose`, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration¹.
- In summary, `docker` manages single containers while `docker-compose` manages multiple container applications.
- Source: Conversation with Bing, 6/14/2023
  (1) What is the difference between docker and docker-compose. https://stackoverflow.com/questions/37966552/what-is-the-difference-between-docker-and-docker-compose.
  (2) Difference between "docker compose" and "docker-compose". https://stackoverflow.com/questions/66514436/difference-between-docker-compose-and-docker-compose.
  (3) Docker run vs docker-compose: What's the difference? - TheServerSide. https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Docker-run-vs-docker-compose-Whats-the-difference.
  (4) Dockerfile vs docker-compose: What's the difference? - TheServerSide. https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/Dockerfile-vs-docker-compose-Whats-the-difference.
  (5) Difference between Docker vs docker-compose and docker swarm - Naiveskill. https://naiveskill.com/docker-vs-docker-compose/.

How can I get a 