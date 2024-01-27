---
title: Persist data between containers
created: 2023-11-19T12:44
updated: 2024-01-25T16:47
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resources/name/docker-docs/🔖/guides/walkthroughs/persist-data-between-containers
  - 🔴-academic/📚-educational-resources/format/website
  - 🔴-academic/📚-educational-resources/discipline/computer-science/technology/docker
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Walkthroughs::Persist data between containers
---

# Persist data between containers

---

> [!abstract]+ 
> Notes pertaining to [Persist data between containers | Docker Docs](https://docs.docker.com/guides/walkthroughs/persist-data/) [@PersistDataContainers0800]. Persist and share data among containers using a named volume.

---

> [!info]+ 
> **Previous Note(s):**
> 

---

﹇<br>
What does this walkthrough show you?

#card 

How to persist data between containers.

⌂
<br>﹈<br>^1700427510273

﹇<br>
What should you complete first to better understand some concepts in this walkthrough?

#card 

The [Run multi-container applications](the-vault/src/🔴%20Academic/📚%20Educational%20Resources/Docker%20Docs/Guides/Walkthroughs/Run%20multi-container%20applications.md) walkthrough.

⌂
<br>﹈<br>^1700427510283

﹇<br>
What does Docker do with all content, code, and data in a container?

#card 

Docker isolates all content, code, and data in a container from your local filesystem.

![|350](https://docs.docker.com/guides/walkthroughs/images/getting-started-isolation.webp?w=400)

⌂
<br>﹈<br>^1700427510289

﹇<br>
What happens when you delete a Docker container?

#card 

Docker deletes all the content within that container.

![|350](https://docs.docker.com/guides/walkthroughs/images/getting-started-isolation.webp?w=400)

⌂
<br>﹈<br>^1700427510294

﹇<br>
What can you use if you want to persist the data that a container generates?

#card 

You can use volumes.

⌂
<br>﹈<br>^1700427510301

﹇<br>
What should you get before you start?

#card 

Docker Desktop.

⌂
<br>﹈<br>^1700427510307
## [Step 1: Get the sample application](https://docs.docker.com/guides/walkthroughs/persist-data/#step-1-get-the-sample-application)


## [Step 2: Add a volume to persist data](https://docs.docker.com/guides/walkthroughs/persist-data/#step-2-add-a-volume-to-persist-data)

﹇<br>
What is a volume in Docker?

#card 

A volume is a location in your local filesystem, automatically managed by Docker Desktop. It is used to persist data after you delete a container.

⌂
<br>﹈<br>^1700429007404

﹇<br>
How do you add a volume to a project?

#card 

To add a volume to a project, open the compose.yaml file in a code or text editor, and uncomment the lines under the `volumes` element of the service (e.g., `todo-database`).

⌂
<br>﹈<br>^1700429007413

﹇<br>
What does the `volumes` element nested under a service (e.g., `todo-database`) do in a Compose file?

#card 

The `volumes` element that is nested under a service tells Compose to mount the volume (e.g., `database`) to a specific path (e.g., `/data/db`) in the container for the service.

⌂
<br>﹈<br>^1700429007421

﹇<br>
What does the top-level `volumes` element do in a Compose file?

#card 

The top-level `volumes` element defines and configures a volume that can be used by any of the services in the Compose file.

⌂
<br>﹈<br>^1700429007432

﹇<br>
How exactly are volumes managed by Docker?

#card 

[Volumes in Docker are completely managed by Docker](https://docs.docker.com/storage/volumes/) [@Volumes0000]. [They are stored in a part of the host filesystem which is managed by Docker](https://docs.docker.com/storage/) [@ManageDataDocker0000]. [This management by Docker provides several advantages such as ease of backup, migration, and sharing among multiple containers](https://docs.docker.com/storage/volumes/) [@Volumes0000] [@ManageDataDocker0000]. 

[So, while the data in the volume persists even after the container is deleted, the management of these volumes is handled automatically by Docker](https://docs.docker.com/storage/volumes/) [@Volumes0000] [@ManageDataDocker0000].

![|350](the-vault/assets/images/Pasted%20image%2020231119132130.png)

⌂
<br>﹈<br>^1700429007441

﹇<br>
Break line by line, paying specific attention in regard to the volume parts, what is happening in this snippet of a `compose.yaml` file…

```yaml
  todo-database:
    image: mongo:6
    volumes:
      - database:/data/db
    ports:
      - 27017:27017

volumes:
  database:
```

#card 

- `todo-database:`: This is the name of the service. In this case, it’s a MongoDB database service.
- `image: mongo:6`: This line tells Docker to use the `mongo:6` image from Docker Hub for this service.
- `volumes:`: This is where you define any volumes that you want to attach to this service.
- `- database:/data/db`: This line is doing two things:
    - `database`: This is the name of the volume as defined in the Docker Compose file. Docker will automatically create this volume if it doesn’t exist.
    - `/data/db`: This is the path inside the container where the volume will be mounted. Any data that the MongoDB service writes to `/data/db` will be stored in the `database` volume on the host machine.
- `ports:`: This is where you define any ports that you want to expose from this service.
- `- 27017:27017`: This line is mapping port 27017 of the container to port 27017 of the host machine.
- `volumes:`: This is a top-level element in the Docker Compose file where you can define and configure volumes.
- `database:`: This is defining a volume named `database`. This volume can be used by any service in the Docker Compose file. In this case, it’s being used by the `todo-database` service.

So, in summary, this configuration is setting up a MongoDB service with a volume named `database`. The volume is mounted to `/data/db` inside the container. This means any data written to `/data/db` inside the MongoDB container will be stored in the `database` volume on the host machine, persisting data across container restarts or removals. The MongoDB service is accessible via port 27017 on the host machine.

⌂
<br>﹈<br>^1700429306927

## [Step 3: Run the application](https://docs.docker.com/guides/walkthroughs/persist-data/#step-3-run-the-application)

## [Step 4: View the frontend and add todos](https://docs.docker.com/guides/walkthroughs/persist-data/#step-4-view-the-frontend-and-add-todos)

## [Step 5: Delete the application stack and run new containers](https://docs.docker.com/guides/walkthroughs/persist-data/#step-5-delete-the-application-stack-and-run-new-containers)

﹇<br>
What happens to your data when you delete and recreate containers in Docker Desktop?

#card 

If the image is configured to persist data, for example on a volume, Docker Desktop persists your data and it’s accessible to any container on your system by mounting the database volume. 

Docker Desktop looks for the database volume and creates it if it doesn’t exist.

⌂
<br>﹈<br>^1700429769041

﹇<br>
How do you delete an application stack in Docker Desktop?

#card 

To delete an application stack, open the Containers tab of Docker Desktop and select the Delete icon next to your application stack.

⌂
<br>﹈<br>^1700429769048

## [Summary](https://docs.docker.com/guides/walkthroughs/persist-data/#summary)

## [Next steps](https://docs.docker.com/guides/walkthroughs/persist-data/#next-steps)


---

## :EiZoteroItem: Bibliography

---

> [!info]+ 
> **Next Note(s):**
> 

---
