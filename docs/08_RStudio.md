# Docker Containers for R

A widely-used suite of docker images for R has been developed by the Rocker project [@RJ-2017-065]. 29 repositories of rocker's images are listed on the [docker hub](https://hub.docker.com/u/rocker/) providing R environments customized to perform a variety of tasks. Most of them include R studio server, allowing to work remotely from the R studio server web interface accessible through any browser.

Rocker images are versioned, meaning that if you want to employ a specific version of R rather than the latest you can specify an R version tag in the image name, i.e. *rocker/verse:3.4.0*, if no tag is requested you will automatically pull the latest version [@RJ-2017-065]. 

## Run Docker Remotely

Docker is installed on all our shared resources. Most machines already have images that can be used for gds. 

An useful image for running geospatial analysis, including the tidyverse + various geospatial packages, is [*rocker/geospatial*](https://hub.docker.com/r/rocker/geospatial):

 You can pull the repository running the following command:

```shell
docker pull rocker/geospatial
```

*Rocker/geospatial* has been extended to have all libraries that GDSL members generally use -link to the image-. 

Once you accessed the server you can list the existing images with the following command:

```shell
docker images ls
```
check ports

run command same specifics of user names and psw.

```shell
docker run -e USER=<your-user> -e PASSWORD=<your-password> -e USERID=$UID -e GROUPID=$GID -d --rm -p <free-port>:8787 -v ${PWD}:/home/your-user rocker/geospatial
```
With the run command you generate a container where the image is running. You can check your process with the *docker ps* command. As already mentioned above almost all rocker images include R studio server, therefore you can access the server-based application through its web interface. To do that, open your browser and go to the following address:
```shell
<host-ip>:<port>
``` 

## Run Docker Locally

To run one of the rocker images locally on your laptop you need to install docker as described in - par ref - and pull the image of your choise from the docker hub. 

Once the image is on your local machine, you can run it with the same command as above.

You can access Rstudio server running on your local host through a browser at: 
[`http://localhost:8787`](http://localhost:8787)


