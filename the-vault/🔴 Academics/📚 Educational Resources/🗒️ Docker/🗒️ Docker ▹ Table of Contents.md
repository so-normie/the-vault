---
title: 🗒️ Docker ▹ Table of Contents
created: 2023-08-04 01:58
updated: 2023-10-22T10:43
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-docker/docker-▹-table-of-contents
  - 🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ Docker::Docker ▹ Table of Contents
---

# 🗒️ Docker ▹ Table of Contents

---

> [!ABSTRACT]
> 

---

> [!INFO]
> Previous Note(s):

---

﹇<br>
How do you create and start a container from a  service?

#card 

`docker-compose up`

⌂
<br>﹈<br>^1697989068033


﹇<br>
How do I start containers in the background and leave them running? 

#card 

`docker-compose up -d`

⌂
<br>﹈<br>^1697989068076


﹇<br>
Why would I need to start a container in the background?

#card

Before starting a Docker container, you must decide if you want to run it in the default foreground mode or in the background in a detached mode. In the foreground mode, Docker can start the process in the container and attach the console to the process’s standard input, output, and standard error. The disadvantage of running a container in the foreground is that you cannot access the command prompt anymore. Which means you cannot run any other commands while the container is running¹.

To run a Docker container in the background, use the `-d` option. This starts the containers in the background and leaves them running¹. This means that you can use your terminal for other purposes while the container is running.

⌂
<br>﹈<br>^1697989068095


﹇<br>
What does the command `docker-compose down -v` do? 

#card 

The `docker-compose down` command stops all services associated with a Docker Compose configuration. Unlike `stop`, it also removes any containers and internal networks associated with the services. But it does not remove internally specified volumes by default. To do that as well, you need to additionally specify the `-v` flag after the `down` command.

⌂
<br>﹈<br>^1697989068111


﹇<br>
What is the difference between docker and docker-compose?

#card 

**Docker** is a platform that allows you to develop, test, and deploy applications as portable containers that can run virtually anywhere. The `docker` command line interface (CLI) is used to manage individual containers on a docker engine. It is the client command line to access the docker daemon API¹.

On the other hand, `docker-compose` is a tool for defining and running multi-container Docker applications. With `docker-compose`, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration¹.

In summary, `docker` manages single containers while `docker-compose` manages multiple container applications.

⌂
<br>﹈<br>^1697989068127


﹇<br>
Consider the case where I have already instantiated a docker image and have a container currently running on my machine but I forgot to open an integrated terminal to that container. How can I run a shell inside the container?

#card 

If you have a running Docker container and want to browse its contents via the terminal, you can use the `docker exec` command to run a shell inside the container. This will allow you to interact with the container’s file system and execute commands as if you were logged in to the container.

Here is an example command that you can use to start a shell inside a running Docker container:

```sh
docker exec -it <container_name> /bin/bash
```

In this command, `<container_name>` should be replaced with the name or ID of your running container. The `-it` option tells Docker to allocate a pseudo-TTY and keep STDIN open, which allows you to interact with the shell. The `/bin/bash` argument specifies the command to run inside the container, which in this case is a `bash` shell.

Once you have started a shell inside the container, you can use standard Linux commands such as `ls`, `cd`, and `cat` to browse the contents of the container’s file system. When you are finished, you can exit the shell by typing `exit` or pressing `Ctrl-D`.

⌂
<br>﹈<br>^1697989068139


﹇<br>
What command should you run to list all containers, including those that are currently running?

#card-reverse 

To do that, you can do this…

`docker ps -a`

⌂
<br>﹈<br>^1697989068162


﹇<br>
What command should you run to list all containers that were created from the `ghcr.io/edmund-leibert/quartz:hugo` image?

#card-reverse 

To do that, you can do this…

`docker ps -a --filter ancestor=ghcr.io/edmund-leibert/quartz:hugo`

⌂
<br>﹈<br>^1697989068173


﹇<br>
What command can I use to start an existing container that is not currently running?

#card-reverse 

To do that, you can do this…

`docker start <container_id>`

⌂
<br>﹈<br>^1697989068180


﹇<br>
When I run the following command, does it always instantiate a new container?

```bash
docker run -it --volume=$(shell pwd):/quartz -p 1313:1313 ghcr.io/edmund-leibert/quartz:hugo
```

#card 

Yes, when you run the `docker run` command, it will always create and start a new container from the specified image. In this case, the command you provided will create and start a new container from the `ghcr.io/edmund-leibert/quartz:hugo` image.

The `-it` option tells Docker to allocate a pseudo-TTY and keep STDIN open, which allows you to interact with the container. The `--volume=$(shell pwd):/quartz` option mounts the current working directory (`$(shell pwd)`) on the host machine to the `/quartz` directory inside the container. The `-p 1313:1313` option maps port 1313 on the host machine to port 1313 inside the container.

Once the container is started, you can interact with it via the terminal. When you are finished, you can stop and remove the container using the `docker stop` and `docker rm` commands.

⌂
<br>﹈<br>^1697989068192


﹇<br>
What is a development continaer (i.e., “Dev container”)?

#card 

A Development Container, or Dev Container, is essentially a fully-configured development environment encapsulated within a Docker container. The concept is becoming increasingly popular as it allows developers to standardize their development environments and share them easily with others, ensuring that everyone is working with the same dependencies, tools, and configurations.

In a Dev Container setup, not only is your project code running inside a container, but all of the development tools and environments you need are also installed in the same container. This means that your IDE can be configured to run inside the container as well, or it can connect to the container to execute builds, tests, and debug sessions.

For example, Visual Studio Code has a feature called "Remote - Containers" that allows you to open any folder inside a Dev Container and use VS Code as if it were running on your local machine, but all the operations are actually being executed inside the container. This includes IntelliSense, debugging, Git commands, terminal sessions, and more.

Benefits of using Dev Containers:

1. **Consistency**: Eliminates the "it works on my machine" problem, as every developer works with the same environment.
  
2. **Isolation**: Dependencies and configurations for one project do not interfere with others, which is useful when working on multiple projects with different requirements.
  
3. **Ease of Setup**: New team members (or even you, when switching machines) can be up and running with a complex stack in minutes.

4. **Reproducibility**: Makes it easier to identify issues early, as the environment in development is closer to the production environment.

5. **Security**: Allows you to keep your development environment isolated from your local machine, offering some degree of security isolation.

⌂
<br>﹈<br>^1697996620442




---

> [!INFO]
> Next Note(s):

---
