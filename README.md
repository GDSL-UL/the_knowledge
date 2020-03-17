# The Knowledge

## Introduction

In preparation to moving online we thought it would be worth getting a few things jotted down in one place to help with setups etc. The first things is a checklist:

1. Do you have a computer to work on at home?
2. Do you have a webcam, mic and speakers?
3. Do you have the university VPN installed?

If the answer to any of the above is no; then speak with your PhD supervisor.... 

You need to make sure that you have all of your files. The very simplest way to do this is to keep them all on OneDrive. This is part of the Office 365 Suite available from the university - https://www.liverpool.ac.uk/csd/working-from-home/ - Therefore - 

4. Copy all your files onto your onedrive - the exception is where you have data that has requirements to be managed in particular ways - e.g. only from a single machine etc; not in the cloud. You should speak with your PhD supervisor if you access data that are problematic to move from local machines or within the university network (remember OneDrive is in the Cloud, not the university servers!).


## What is a VPN?
A VPN connects a machine that lies outside of the university (ie outside the firewall) to the internal network. When the VPN is running, your network traffic (e.g. Internet) is routed through the university in the same way as if the computer was on your work desk. This enables you to:
* Access journal websites like you would inside the university
* Access network drives (e.g. M Drive etc) - but be careful when transferring big files
* Access servers (e.g. over the terminal / command line / ftp)

## How will you work when at home?

Check the following:

1. Do you have R (R Studio) or Python (Jupyter Notebook) setup and working with all the libraries / packages you need?
2. If not, you will need to install these... or....
3. Install them via Docker (which is our recomendation) and get an appropriate image

## Install Docker
* Mac - https://docs.docker.com/docker-for-mac/
* Windows - https://docs.docker.com/docker-for-windows/

## Useful Docker Images
If you are an R user; this is a great image to get you up and runnign with the Hadleyverse + various geospatial packages + Rstudio server - https://hub.docker.com/r/rocker/geospatial

To install...

```
docker pull rocker/geospatial
```
To start the instance (Mac example) - this maps a local drive to a given directory (in this case - /home/rstudio/alex) so you can save your files outside of the instance; and sets up the password (secret) and username (rstudio)

On a Mac.....

```
docker run -d --name rstudio -v $HOME:/home/rstudio/alex -e PASSWORD=secret -p 8787:8787 rocker/geospatial
```
On Windows....

```
docker run -d --name rstudio -v  c:\users\alexa:/home/rstudio/alex -e PASSWORD=secret -p 8787:8787 rocker/geospatial
```

If this runs ok; you access Rstudio server from : http://localhost:8787

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

