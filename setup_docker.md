# Docker containers

This document describes how to install and use Docker on different platforms.

## Installation

If you are on Mac, Linux or Windows 10 Pro/Student editions, installing Docker
is relatively straightforward:

* [Mac](https://docs.docker.com/docker-for-mac/)
* [Linux official instructions](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [Windows 10 Pro/Student](https://docs.docker.com/docker-for-windows/)

It is important to note that, on Mac and Windows, Docker runs under a virtual
machine so it will not use up all of the resources of your machine
(conversely, it'll equate to be working on a more limited machine). This can
be changed. But if you need more firepower, the idea is that you develop on
your laptop and scale to a server (e.g. running out of the lab).

The steps to install Docker include:

- Obtain a copy of Docker and install it:
    - `Windows10 Pro/Enterprise`: [Install Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)
    - `macOS`: [Get started with Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/)
- Once Docker is successfully installed, make sure to enable access to your main drive (e.g. `C:\\`): 
    - `Windows10 Pro/Enterprise`: Open the preferences for Docker and click the
      "Shared Drives" tab; click on the drive you want to add and then "Apply"
    - `macOS`: this feature is automatically enabled

## Useful Docker Commands

See what containers are running (this also shows you the ID - this is useful to know then R-studio crashes...)

```
docker ps
```
Stop and remove a particular container - replace ID; with the specific ID from the above (listed under CONTAINER ID) - if everything has crashed

```
docker stop ID
docker rm -f ID
```

