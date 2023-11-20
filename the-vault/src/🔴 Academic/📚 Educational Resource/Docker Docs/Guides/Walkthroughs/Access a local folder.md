---
title: Access a local folder
created: 2023-11-19T12:44
updated: 2023-11-19T16:02
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/docker-docs/🔖/guides/walkthroughs/access-a-local-folder-from-a-container
  - 🔴-academic/📚-educational-resource/website
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Walkthroughs::Access a local folder from a container
---

# Access a local folder from a container

---

> [!abstract]+ 
> Notes pertaining to [Access a local folder from a container | Docker Docs](https://docs.docker.com/guides/walkthroughs/access-local-folder/) [@AccessLocalFolder0800]. Persist and share data among containers using a named volume.

---

> [!info]+ 
> **Previous Note(s):**
> 

---

## [Step 1: Get the sample application](https://docs.docker.com/guides/walkthroughs/access-local-folder/#step-1-get-the-sample-application)

﹇<br>
What is a bind mount in Docker?

#card 

A bind mount in Docker lets you share a directory from your host’s filesystem into the container. It allows you to access data on your system from a container.

![|350](Pasted%20image%2020231119160217.png)

⌂
<br>﹈<br>^1700438454634

﹇<br>
What does the `volumes` element do in a **Docker Compose** file in the context of a bind mount?

#card 

The `volumes` element tells Compose to mount the local folder (e.g., `./app`) to a specific path (e.g., `/usr/src/app`) in the container for the service (e.g., `todo-app`). This particular bind mount overwrites the static contents of the directory in the container and creates what is known as a development container.

⌂
<br>﹈<br>^1700438454643

﹇<br>
Read the following `compose.yaml` file…

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
    links: 
      - todo-database
    volumes: 
      - ./app:/usr/src/app
      - /usr/src/app/node_modules
    ports: 
      - 3001:3001

  todo-database: 
    image: mongo:6
    command: mongod --port 27018
    ports: 
      - 27018:27018
```

What is the purpose of the second instruction `/usr/src/app/node_modules` in the `volumes` element?

#card 

The second instruction, `/usr/src/app/node_modules`, prevents the bind mount from overwriting the container’s `node_modules` directory to preserve the packages installed in the container.

⌂
<br>﹈<br>^1700438454649

﹇<br>
Read the following `compose.yaml` file…

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
    links: 
      - todo-database
    volumes: 
      - ./app:/usr/src/app
      - /usr/src/app/node_modules
    ports: 
      - 3001:3001

  todo-database: 
    image: mongo:6
    command: mongod --port 27018
    ports: 
      - 27018:27018
```

Can you explain, line by line, what is happening in the following `compose.yaml` file?

#card 

```yaml
services: 
  todo-app: 
    build: 
      context: ./app
    links: 
      - todo-database
    volumes: 
      - ./app:/usr/src/app
      - /usr/src/app/node_modules
    ports: 
      - 3001:3001

  todo-database: 
    image: mongo:6
    command: mongod --port 27018
    ports: 
      - 27018:27018
```

- `services:`: This is the top-level element where you define all the services that make up your application.
- `build:`: This tells Docker to build an image for this service from a Dockerfile.
- `context: ./app`: This specifies the location of the Dockerfile. In this case, it’s in the `./app` directory.
- `links:`: This is where you define any services that this service depends on. In this case, `todo-app` depends on `todo-database`.
- `- todo-database`: This tells Docker that `todo-app` depends on `todo-database`.
- `volumes:`: This is where you define any volumes or bind mounts that you want to attach to this service.
- `- ./app:/usr/src/app`: This is a bind mount. It tells Docker to mount the `./app` directory from the host machine to the `/usr/src/app` directory in the `todo-app` container.
- `- /usr/src/app/node_modules`: This is another bind mount. It tells Docker to mount the `/usr/src/app/node_modules` directory from the host machine to the same directory in the `todo-app` container.
- `ports:`: This is where you define any ports that you want to expose from this service.
- `- 3001:3001`: This tells Docker to map port 3001 of the host machine to port 3001 of the `todo-app` container.
- `todo-database:`: This is the name of the second service. It’s a MongoDB database.
- `image: mongo:6`: This tells Docker to use the `mongo:6` image from Docker Hub for this service.
- `command: mongod --port 27018`: This is the command that Docker will run when it starts the `todo-database` container. In this case, it’s starting the MongoDB server on port 27018.
- `ports:`: This is where you define any ports that you want to expose from this service.
- `- 27018:27018`: This tells Docker to map port 27018 of the host machine to port 27018 of the `todo-database` container.

So, in summary, this configuration is setting up two services: `todo-app` and `todo-database`. The `todo-app` service is built from a Dockerfile in the `./app` directory and is linked to the `todo-database` service. It also has two bind mounts and exposes port 3001. The `todo-database` service uses the `mongo:6` image from Docker Hub, runs the MongoDB server on port 27018, and exposes this port.

⌂
<br>﹈<br>^1700438454655

﹇<br>
{{Question}}

#card 

{{Answer}}

⌂
<br>﹈<br>






## [Step 2: Add a bind mount using Compose](https://docs.docker.com/guides/walkthroughs/access-local-folder/#step-2-add-a-bind-mount-using-compose)

## [Step 3: Run the application](https://docs.docker.com/guides/walkthroughs/access-local-folder/#step-3-run-the-application)

## [Step 4: Develop the application](https://docs.docker.com/guides/walkthroughs/access-local-folder/#step-4-develop-the-application)

## [Summary](https://docs.docker.com/guides/walkthroughs/access-local-folder/#summary)

## [Next steps](https://docs.docker.com/guides/walkthroughs/access-local-folder/#next-steps)

---

## :EiZoteroItem: Bibliography

---

> [!info]+
> **Next Note(s):**

---
