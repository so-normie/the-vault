---
title: Part 3꞉ Update the application
created: 2023-10-31T17:48
updated: 2024-01-25T16:47
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resources/name/docker-docs/🔖/guides/get-started/part-3-update-the-application
  - 🔴-academic/📚-educational-resources/discipline/computer-science/technology/docker
  - study-note
cards-deck: "🔴 Academic::📚 Educational Resource::Docker Docs::Guides::Get started::Part 3: Update the application"
---

# Update the application

---

> [!ABSTRACT]+
> [Update the application | Docker Docs](https://docs.docker.com/get-started/03_updating_app/)

---

> [!INFO]+ 
> **Previous Note(s)**:
> - [Part 2꞉ Containerize an application](the-vault/src/🔴%20Academic/📚%20Educational%20Resources/Docker%20Docs/Guides/Get%20started/Part%202꞉%20Containerize%20an%20application.md)

---

## Update the source code

﹇<br>
After updating your source code, what must you always check what you _might_ need to do?

#card 

Need to check if you need to build an updated version of your image using the `docker build` command.

⌂
<br>﹈<br>

﹇<br>
What does this error mean/entail?

```
docker: Error response from daemon: driver failed programming external connectivity on endpoint laughing_burnell 
(bb242b2ca4d67eba76e79474fb36bb5125708ebdabd7f45c8eaf16caaabde9dd): Bind for 127.0.0.1:3000 failed: port is already allocated.
```

#card 

The error occurred because you aren't able to start the new container while your old container is still running. The reason is that the old container is already using the host's port 3000 and only one process on the machine (containers included) can listen to a specific port. 

To fix this, you need to remove the old container.

⌂
<br>﹈<br>

## Remove the old container

### Remove a container using the CLI

﹇<br>
Via the CLI, what are the general steps to removing the ID of a container?

#card 

1. Get the ID of the container by using the `docker ps` command.
    ```bash
    $ docker ps
    ```
2. Use the `docker stop` command to stop the container. Replace `<the-container-id>` with the ID from `docker ps`.
    ```bash
    $ docker stop <the-container-id>
    ```
3. Once the container has stopped, you can remove it by using the `docker rm` command.    
    ```bash
    $ docker rm <the-container-id>
    ```

⌂
<br>﹈<br>

﹇<br>
What must I always remember to do after stopping a container if I wish I rebuild the image that it is based on?

#card 

I **must** remember to stop it _and_ remove it completely.

⌂
<br>﹈<br>

﹇<br>
How can you stop and remove a container in a single command?

#card 

> [!Note] 
> You can stop and remove a container in a single command by adding the `force` flag to the `docker rm` command. For example: `docker rm -f <the-container-id>`

⌂
<br>﹈<br>

### Start the updated app container

## Summary

## Next steps

---

> [!INFO]+ 
> **Next Note(s)**:
> - 

---