# RStudio server

This guide will help you set up a RStudio server running with Docker. The
benefits of this approach is that it is more reliable and only involves one
install, as opposed to several independent ones.

## Local install

If you are an R user; this is a great image to get you up and running with the tidyverse + various geospatial packages + Rstudio server:

> [`https://hub.docker.com/r/rocker/geospatial`](https://hub.docker.com/r/rocker/geospatial)

To install...

```
docker pull rocker/geospatial
```

This will require a good internet connection and will take a while, but you
only need to run it once.

Once ready, you can start the instance as follows (Mac example):

```
docker run -d --name rstudio -v $HOME:/home/rstudio/alex -e PASSWORD=secret -p 8787:8787 rocker/geospatial
```

This maps your local home drive (`$HOME`) to a given directory in the container (in this case - `/home/rstudio/alex`). 
Using this approach, you can store files on your laptop's drive, and access, edit or create new ones from the container (ie. using RStudio).
The command above also sets up a password (`secret`) and username (`rstudio`)
to use when you login to RStudio.

On Windows, this is similar (change `alexa` to your account name - look at your directory structure):

```
docker run -d --name rstudio -v  c:\users\alexa:/home/rstudio/alex -e PASSWORD=secret -p 8787:8787 rocker/geospatial
```

If this runs ok; you access Rstudio server through a browser at: [`http://localhost:8787`](http://localhost:8787)

## Remote install

[Add here specifics to make this work across the wire in a secure way]

## Useful R Docker Images


