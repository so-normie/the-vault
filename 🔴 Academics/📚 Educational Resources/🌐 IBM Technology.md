---
created: 2023-09-02 09:11
updated: 2023-09-02 16:10
---

---
author: 
publisher: 
published: 
tags: [🔴-academics/📚-educational-resources/name/ibm-technology] 
cards-deck: Default::Computer Science
---

# IBM Technology


## [Containerization Explained](https://www.youtube.com/watch?v=0qotVMX-J5s&t=8s) 

In <span class="spoiler">2008</span>, <span class="spoiler">Linux kernel</span> introduced <span class="spoiler">C-groups, or “control groups”</span>, which paved the way for all the different container technologies we see today. #card 
In 2008, Linux kernel introduced C-groups, or “control groups”, which paved the way for all the different container technologies we see today.
^1683800365591


What are C-groups, or “control groups”? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
12
^1683800365608

What are some common container technologies? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- Docker
- Cloud Foundry
- Rocket
^1683800365631


How should one visualize the resource usage differences of containers vs virtual machines? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
[[assets/excalidraw/containerization-explained]]
^1683827206715

G
What allows up to spin up VMs? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
The hypervisor.
^1683800994167


What is a hypervisor? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
A type of computer software, firmware, or hardware, that creates and run virtual machines.
^1683800994172

What is the disadvantage of a VM? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- Even though we may be dealing with a light weight application, a VM takes a large amount of resources because it not only needs to replicate the whole OS, but all the additional libraries as well.
^1683802357824

Is it easy to scale out an application when on VM? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
No, if we one to scale out are application, we would need to create 2 *exact* copies of the applications.
- This means we have to use and deploy that separate guest OS and libraries every time.
- Consumes *a lot* of resources.
^1683802357829

What is the 3 step process when doing anything container-related and pushing or creating containers. #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
1. Starts with some sort of **manifest**, describes the container itself. (e.g. docker file, manifest YAML, etc.)
2. Make the actual **image**. (e.g. Docker image, ACI, etc.)
3. End up with the container itself
^1683802357835

What is YAML? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
YAML is a recursive acronym that stands for YAML Ain’t Markup Language. 
^1683802357839

What is YAML used for? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
It is a human-readable data serialization language that is often used for writing configuration files.
^1683802441962

What is a data serialization language? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker  
- A language that is used to convert complex objects to sequences of bits.
- It is commonly used for configuration files and in applications where data is being stored or transmitted.
^1683892874477

What does the container run on? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
A runtime engine (e.g. Docker Engine)
^1683802357845

Lets say that we had our application is running on a VM, but wanted to introduce a new Python service, what pains might be coming our way? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- Would have to create a VM of *both* the Python and JS service
- Run into the issue of not being able to scale out just one of the services, would have to free out some resource (a VM) and deploy the Python application into the VM instead.
^1683802357851

Lets say that we had our application is running on a runtime engine for containers, but wanted to introduce a new Python service, what is the advantage of this approach compared to VMs? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- With a container based approach, we can simply deploy one copy of the Python application
- Remaining resources can be shared with remaining containers on the hardware.
^1683802357856

## [Virtual Machine (VM) vs Docker](https://www.youtube.com/watch?v=a1M_thDTqmU)

What is the definition of **virtualization**? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
A process where software is used to create an abstraction layer.
^1683828834833

For VMs what is the primary abstraction layer called? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
The **hypervisor**.
^1683828834837

What is a **hypervisor**? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Simply put, something that helps a virtual machine emulate a physical computer.
^1683828834843

What does a **hypervisor** do? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Manages the allocation of resources between different virtual machines on that single physical host.
^1683828834849

What does each VM have? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
It has its own…
- OS
- Virtual hardware (e.g., virtual CPU, virtual storage, etc.)
^1683828834854


What is docker primarily used by developers for? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Packaging applications and their dependencies in lightweight, portable containers.
^1683828834859

Does Docker virtualize the underlying hardware? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
No, instead of virtualizing the underlying hardware like this hypervisor is doing for the VMs, Docker containers virtualize the operating system.
^1683828834864

What does each container contain? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Each container contains *only*…
- the application
- the application’s libraries
- the application’s dependencies
^1683828834869

What is the **docker engine**? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
The core software that’s responsible for managing the lifecycle of Docker containers.
^1683828834874

What entails managing the life cycle of docker containers? #card-reverse #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Providing the infrastructure for creating, running, and orchestrating containers.
^1683828834880

What is container orchestration in the context of Docker? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
A broader term referring to the automation of any container’s lifecycle.
^1683831459210

Why does the **docker engine** interact with the host kernel? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
So it can allocate resources and enforce isolation between containers.
^1683828834886

How does does the **docker engine**, through interacting with the host kernel, allocate resources and enforce isolation between container? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Primarily done through two things…
- **cgroups** (i.e. control groups)
	- They  allocate resources among processes.
- **Namespaces**
	- Restrict a containers access and visibility to other resources on the system.
All of the above ensures that each container has its own isolated environment.
^1683828834891

What are **Docker images**? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
<span class="spoiler">Docker images</span> are lightweight, standalone, and executable packages that include everything you need to run a piece of software.
^1683828834896

How are **docker images** built? #card-reverse  #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Built using docker files.
^1683828834903

What are **docker files**? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Very simple documents which provide instructions for creating the image.
^1683828834909

What are **docker containers**? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Instances of the docker images that run in the docker engine.
^1683828834915


<span class="spoiler">Docker containers</span> are instances of <span class="spoiler">docker images</span> that run in the <span class="spoiler">docker engine</span>.
Docker containers are instances of docker images that run in the docker engine.
^1683828834921


What are the two types of hypervisors? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
- Type 1 “Bare metal” - Runs directly on the hardware.
- Type 2 “Hosted Hypervisor” - Runs on top of an existing operating system.
^1683831459215

What is virtual hardware? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
The virtual components of an emulated machine. (e.g., virtual CPU, virtual storage, virtual network interfaces, etc.)
^1683831459221

<span class="spoiler">Guest OS</span> are the individual operating systems that run inside each virtual machine. #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Guest OS are the individual operating systems that run inside each virtual machine.
^1683831459226

When would use you a VM? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
1. Diverse OS
2. Isolation
3. Running legacy applications
^1683831459232

When would use containers? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
1. microservices
2. Rapid development and deployment
3. Resource efficiency.
^1683831459239

Is it common to see both used in organizations? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
Yes.
^1683831459246

How should one visualize the Virtual Machine (VM) vs Docker? #card #🔴-academics/📚-educational-resources/discipline/computer-science/technology/docker 
![[assets/excalidraw/virtual-machine-(vm)-vs-docker.svg|600]]
^1683831459252
