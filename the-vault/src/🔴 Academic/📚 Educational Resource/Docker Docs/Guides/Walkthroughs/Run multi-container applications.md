---
title: Run multi-container applications
created: 2023-10-31T16:39
updated: 2023-11-19T04:45
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/🔖/guides/walkthroughs/what-is-a-container?
  - 🔴-academic/📚-educational-resource/website
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Walkthroughs::Run multi-container applications
---

# Run multi-container applications

---

> [!abstract]+ 
> Notes that pertain to [Run multi-container applications | Docker Docs](https://docs.docker.com/guides/walkthroughs/multi-container-apps/). Use Docker Compose to run multi-container applications.

---

﹇<br>
What primary problem does **Docker Compose** solve?

#card 

Traditionally, you must start each container individually. **Docker Compose** solves this issue by being a tool that allows you to start multiple containers with a single command.

⌂
<br>﹈<br>^1700397252897

## [Step 1: Get the sample application](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-1-get-the-sample-application)

﹇<br>
What is an example of an application that uses multiple containers?

#card 

One example application could be a simple todo application built using ExpressJS and Node.js. The application saves all todos in a MongoDB database.

![|450](Pasted%20image%2020231119023627.png)

⌂
<br>﹈<br>^1700397252904


## [Step 2: Dig into the Compose file](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-2-dig-into-the-compose-file)

﹇<br>
So the below code belongs to my `compose.yaml` file. Can you explain the benefit of doing it this way and how docker compose allows me to just run one command instead of running docker build multiple times to build each container?

```yaml
# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Docker compose reference guide at
# https://docs.docker.com/compose/compose-file/

# Here the instructions define your application as two services called "todo-app" and “todo-database”
# The service “todo-app” is built from the Dockerfile in the /app directory,
# and the service “todo-database” uses the official MongoDB image 
# from Docker Hub - https://hub.docker.com/_/mongo. 
# You can add other services your application may depend on here.

services:
  todo-app:
    build:
      context: ./app
    depends_on:
      - todo-database
    environment:
      NODE_ENV: production
    ports:
      - 3000:3000
      - 35729:35729
    develop:
      watch:
        - path: ./app/package.json
          action: rebuild
        - path: ./app
          target: /usr/src/app
          action: sync

  todo-database:
    image: mongo:6
    #volumes: 
    #  - database:/data/db
    ports:
      - 27017:27017

#volumes:
  #database:
```

#card 

Docker Compose is a powerful tool that allows you to define and manage multi-container Docker applications. [It uses a YAML file (like the `compose.yaml` you provided) to configure your application’s services, and then with a single command, you can create and start all the services from your configuration](https://docs.docker.com/compose/)[1](https://docs.docker.com/compose/)[2](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04).

Here are some benefits of using Docker Compose:

1. [**Fast and simple configuration**: Thanks to YAML scripts and environment variables, you can easily configure or modify application services](https://phoenixnap.com/kb/docker-compose)[3](https://phoenixnap.com/kb/docker-compose).
2. [**Secure internal communication**: Compose creates a network for all the services to share](https://docs.docker.com/compose/)[3](https://phoenixnap.com/kb/docker-compose).
3. [**Single host deployment**: This means you can run everything on a single piece of hardware](https://docs.docker.com/compose/)[3](https://phoenixnap.com/kb/docker-compose).
4. [**High productivity**: Docker Compose reduces the time it takes to perform tasks](https://docs.docker.com/compose/)[3](https://phoenixnap.com/kb/docker-compose).
5. [**Security**: All the containers are isolated from each other, reducing the threat landscape](https://docs.docker.com/compose/)[3](https://phoenixnap.com/kb/docker-compose).

In your `compose.yaml` file, you have defined two services: `todo-app` and `todo-database`. The `todo-app` service is built from the Dockerfile in the `./app` directory, and the `todo-database` service uses the official MongoDB image from Docker Hub.

By defining these services in the `compose.yaml` file, you can start both services together in an isolated environment with a single command: `docker-compose up`. [This eliminates the need to run `docker build` multiple times to build each container](https://docs.docker.com/compose/)[4](https://docs.docker.com/compose/features-uses/)[5](https://docs.docker.com/get-started/08_using_compose/).

[Moreover, Docker Compose also allows you to define common objects shared by containers, making it easier to manage multi-container applications](https://docs.docker.com/compose/)[6](https://www.baeldung.com/ops/docker-dockerfile-docker-compose). [It also supports variables and moving a composition between environments](https://docs.docker.com/compose/)[1](https://docs.docker.com/compose/).

In conclusion, Docker Compose simplifies the process of managing multi-container Docker applications, making it an essential tool for developers.

⌂
<br>﹈<br>^1700397252911

﹇<br>
Refer to the following `compose.yaml` file…

```yaml
# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Docker compose reference guide at
# https://docs.docker.com/compose/compose-file/

# Here the instructions define your application as two services called "todo-app" and “todo-database”
# The service “todo-app” is built from the Dockerfile in the /app directory,
# and the service “todo-database” uses the official MongoDB image 
# from Docker Hub - https://hub.docker.com/_/mongo. 
# You can add other services your application may depend on here.

services:
  todo-app:
    build:
      context: ./app
    depends_on:
      - todo-database
    environment:
      NODE_ENV: production
    ports:
      - 3000:3000
      - 35729:35729
    develop:
      watch:
        - path: ./app/package.json
          action: rebuild
        - path: ./app
          target: /usr/src/app
          action: sync

  todo-database:
    image: mongo:6
    #volumes: 
    #  - database:/data/db
    ports:
      - 27017:27017

#volumes:
  #database:
```

Could you please explain line by line what is happening in the `compose.yml` file and relate it to what happens when you run `docker compose up`. 

For instance, does **Docker Compose** first build all the images, or does it first try to build the `todo-app` service, and then, when reaching the `depends_on` line, jumps to building the `todo-database` service?

#card 

Here’s a breakdown of the `compose.yaml` file: 

1. **`services:`**: This line indicates the start of the service definitions. Services are the different components of your application.
2. **`todo-app:`**: This line starts the definition of a service named `todo-app`.
3. **`build:`**: This line indicates that **Docker Compose** needs to build an image for this service.
4. **`context: ./app`**: This line tells **Docker Compose** that the build context (i.e., the set of files to include in the build) is in the `./app` directory. **Docker Compose** will look for a Dockerfile in this directory to build the image.
5. **`depends_on:`**: This line specifies that the `todo-app` service depends on another service.
6. **`- todo-database`**: This line indicates that the `todo-app` service depends on the `todo-database` service. **Docker Compose** will ensure that the `todo-database` service is started before the `todo-app` service.
7. **`environment:`**: This line starts the definition of environment variables for the `todo-app` service.
8. **`NODE_ENV: production`**: This line sets the `NODE_ENV` environment variable to `production` for the `todo-app` service.
9. **`ports:`**: This line starts the definition of port mappings for the `todo-app` service.
10. **`- 3000:3000`** and **`- 35729:35729`**: These lines map port 3000 and port 35729 of the `todo-app` service to port 3000 and port 35729 of the host machine, respectively.
11. **`todo-database:`**: This line starts the definition of a service named `todo-database`.
12. **`image: mongo:6`**: This line tells **Docker Compose** to use the `mongo:6` image from Docker Hub for the `todo-database` service. **Docker Compose** will pull this image if it’s not already present on the host machine.
13. **`ports:`**: This line starts the definition of port mappings for the `todo-database` service.
14. **`- 27017:27017`**: This line maps port 27017 of the `todo-database` service to port 27017 of the host machine.
15. [The following segment of your `compose.yaml` file is related to Docker Compose’s `develop` and `watch` features, which are designed to improve the development workflow by automatically updating services based on local file changes](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).
	1. [**`develop:`**: This line starts the definition of development-specific configuration options for the service](https://docs.docker.com/compose/compose-file/develop/)[2](https://docs.docker.com/compose/compose-file/develop/).
	2. [**`watch:`**: This line starts the definition of rules that control automatic service updates based on local file changes](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).
	3. **`- path: ./app/package.json`**: This line defines the path to the `package.json` file in the `./app` directory. [Docker Compose will monitor this file for changes](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).
	4. [**`action: rebuild`**: This line tells Docker Compose to rebuild the service image and recreate the service with the updated image when changes to the `package.json` file are detected](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/).
	5. **`- path: ./app`**: This line defines the path to the `./app` directory. [Docker Compose will monitor this directory for changes](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).
	6. [**`target: /usr/src/app`**: This line defines the path in the service container where the files from the `./app` directory should be synchronized](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).
	7. [**`action: sync`**: This line tells Docker Compose to synchronize source files with container content according to the `target` attribute when changes in the `./app` directory are detected](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/).
	   
	   In summary, these lines in your `compose.yaml` file enable Docker Compose to automatically rebuild your service or synchronize files when changes are detected in your local `package.json` file or `./app` directory. [This can be particularly useful for development workflows that involve frequent changes to source code](https://docs.docker.com/compose/file-watch/)[1](https://docs.docker.com/compose/file-watch/)[2](https://docs.docker.com/compose/compose-file/develop/).

When you run `docker-compose up`, **Docker Compose** does the following:

1. **Reads the `compose.yaml` file**: **Docker Compose** starts by reading the `compose.yaml` file to understand the services, networks, and volumes that need to be created.
2. **Pulls/builds images**: **Docker Compose** pulls the `mongo:6` image from **Docker Hub** for the `todo-database` service. It also builds an image for the `todo-app` service using the Dockerfile in the `./app` directory. The order of these operations depends on the dependencies between services. In your case, because `todo-app` depends on `todo-database`, **Docker Compose** will ensure that the `todo-database` service is ready before it starts the `todo-app` service.
3. **Creates and starts services**: **Docker Compose** creates and starts the `todo-app` and `todo-database` services in the correct order, respecting the dependencies between services.
4. **Sets up networking**: **Docker Compose** sets up a single default network for the application. All services are connected to this network and can communicate with each other.
5. **Maps ports**: **Docker Compose** maps the specified ports of the services to the host machine, allowing you to interact with the services.
6. **Sets environment variables**: **Docker Compose** sets the specified environment variables for the services.

⌂
<br>﹈<br>^1700397932926




﹇<br>
Read to the following `compose.yaml` file…

```yaml
# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Docker compose reference guide at
# https://docs.docker.com/compose/compose-file/

# Here the instructions define your application as two services called "todo-app" and “todo-database”
# The service “todo-app” is built from the Dockerfile in the /app directory,
# and the service “todo-database” uses the official MongoDB image 
# from Docker Hub - https://hub.docker.com/_/mongo. 
# You can add other services your application may depend on here.

services:
  todo-app:
    build:
      context: ./app
    depends_on:
      - todo-database
    environment:
      NODE_ENV: production
    ports:
      - 3000:3000
      - 35729:35729
    develop:
      watch:
        - path: ./app/package.json
          action: rebuild
        - path: ./app
          target: /usr/src/app
          action: sync

  todo-database:
    image: mongo:6
    #volumes: 
    #  - database:/data/db
    ports:
      - 27017:27017

#volumes:
  #database:
```

Now, with that context, read the following statement…

> `todo-app:`: This line starts the definition of a service named `todo-app`.

What does the term “service” mean in the above statement? Is a “service” in this case an image, or a container? For example, what does the term “service” in the following statement you stated....


#card 

In the context of **Docker Compose**, a “service” is a part of your application that performs a specific function. It’s an abstraction that represents a single component of a multi-component application.

Each service is defined by its own configuration (which includes the image to use, environment variables, volumes, etc.) and can be scaled independently.

In your `compose.yaml` file, you have two services: `todo-app` and `todo-database`. Each service will run in its own container (or multiple containers if scaled).

So, when I say “`todo-app`: This line starts the definition of a service named `todo-app`”, it means that we’re beginning to define the configuration for a component of your application (the `todo-app` component). This configuration includes the instructions Docker Compose needs to build the image for this component and run it as a container.

In summary, a service in Docker Compose is a component of your application, defined by its own configuration, and run in its own container(s). 

⌂
<br>﹈<br>^1700397252917

In the context of **Docker Compose**, a {1:“service”} is a {2:part of your application that performs a specific function}. It’s an {2:abstraction} that represents a {2:single component of a multi-component application}.
^1700397252925

﹇<br>
In the `compose.yaml` I provided, what line states to run a container based off the `todo_app` image or `todo_database` image?

```yaml
# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Docker compose reference guide at
# https://docs.docker.com/compose/compose-file/

# Here the instructions define your application as two services called "todo-app" and “todo-database”
# The service “todo-app” is built from the Dockerfile in the /app directory,
# and the service “todo-database” uses the official MongoDB image 
# from Docker Hub - https://hub.docker.com/_/mongo. 
# You can add other services your application may depend on here.

services:
  todo-app:
    build:
      context: ./app
    depends_on:
      - todo-database
    environment:
      NODE_ENV: production
    ports:
      - 3000:3000
      - 35729:35729
    develop:
      watch:
        - path: ./app/package.json
          action: rebuild
        - path: ./app
          target: /usr/src/app
          action: sync

  todo-database:
    image: mongo:6
    #volumes: 
    #  - database:/data/db
    ports:
      - 27017:27017

#volumes:
  #database:
```

#card 

In your `compose.yaml` file, the instructions to run containers based on the `todo-app` and `todo-database` images are implied in the service definitions:

- For the `todo-app` service, the line `build: context: ./app` instructs Docker Compose to build an image using the Dockerfile in the `./app` directory. When you run `docker-compose up`, Docker Compose will use this image to start a container for the `todo-app` service.
    
- For the `todo-database` service, the line `image: mongo:6` instructs Docker Compose to use the `mongo:6` image from Docker Hub. When you run `docker-compose up`, Docker Compose will pull this image (if it’s not already present on your machine) and use it to start a container for the `todo-database` service.
    

So, while there’s no explicit line that says “run a container”, the instructions to do so are inherent in the service definitions and the `docker-compose up` command.

⌂
<br>﹈<br>^1700397252931


## [Step 3: Run the application](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-3-run-the-application)

## [Step 4: View the frontend and add todos](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-4-view-the-frontend-and-add-todos)

## [Step 5: Develop in your containers](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-5-develop-in-your-containers)

## [Step 6: Delete everything and start over](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#step-6-delete-everything-and-start-over)

## [Summary](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#summary)

## [Next steps](https://docs.docker.com/guides/walkthroughs/multi-container-apps/#next-steps)

---

## :EiZoteroItem: Bibliography

---

> [!info]+
> **Next Note(s):**

---
