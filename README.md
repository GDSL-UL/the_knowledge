# The Knowledge

## Introduction

In preparation to be able to stay productive while having to work fully remote, this document presents a few things jotted down in one place to help with setups, etc. 

The first step is a checklist everyone should go through:

1. Do you have a computer to work on at home?
1. Are *all* your relevant files accessible from home? (see some info
   [here](#Files))
1. Do you have a webcam, mic and speakers/headphones?
1. Are you able to connect to computers on campus? This involves being setup with the University VPN? (if you don't know what a VPN is or how to set it up, see [here](#VPN))

These are the basic elements you will require, so if the answer to any of the above is no, please speak with your PhD supervisor.

This guide includes information on the following topics:

- [Personal file storage and management](#Files)
- [VPN introduction and install guidance](#VPN)
- [Data Science Stack](#Data-Science-Stack)

## Files

You need to make sure that a) you have access to all of your files and b) that
these are somewhat backed up so it is not entirely reliant on a single device.
The simplest and recommended way to do this at Liverpool is to keep all your
files and data on your university account at OneDrive. This is part of the
Office 365 Suite available from the university, you can find more info at:

> [`https://www.liverpool.ac.uk/csd/working-from-home/`](https://www.liverpool.ac.uk/csd/working-from-home/)

There are Windows and Mac clients that work relatively well (equivalent to
Dropbox client).

Once you are set up, copy all your files onto your OneDrive account, which
will create a copy of them in Microsoft's secure cloud. The exception is
where you have data that has requirements to be managed in particular ways - e.g.
only from a single machine etc; not in the cloud.

Please, be sure to speak with your PhD supervisor if you access data that
may pose some challenges when moving from local machines or within the university
network (remember OneDrive is in the Cloud, not the university servers!).

If you need to move large and/or many files from a local machine to a remote
server (e.g. from your laptop to a Linux machine at the lab), you will
probably want to use something like FTP. For that, have a look at the guide
at:

> [`setup_ftp.md`](setup_ftp.md)

## VPN

### *What is a VPN?*

A VPN (virtual private network) connects a machine that lies outside of the university (ie. outside the firewall) to the internal network. When the VPN is running, your network traffic (e.g. Internet) is routed through the university in the same way as if the computer was on your work desk. This enables you to:

* Access journal websites like you would inside the university
* Access network drives (e.g. M Drive etc) - but be careful when transferring big files
* Access servers (e.g. over the terminal / command line / ftp)

### *How can I setup the VPN for Liverpool?*

You can find a more comprehensive guide to setup your VPN on the
[`setup_vpn.md`](setup_vpn.md) document of this repository.

## Data Science Stack

Once you have access from home to all your files and (remote) university computers, next step is easily being able to bootstrap a full data science stack that allows you to carry out scientific work. There are several ways of achieving this, but our preferred strategy is to rely on container technology, in particular on [Docker](https://www.docker.com/). This will allow you to rapidly install the platform and set of libraries you are familiar with in a way that can be easily reproduced and redeployed (e.g. on a remote computer on campus).

Here are a series of pages that will help you get a stack ready to go:

- [`setup_docker.md`](setup_docker.md): instructions to install and get Docker
  up and running on different platforms
- [`setup_jupyterlab.md`](setup_jupyterlab.md): instructions to install and
  run a JupyterLab server both on local (e.g. laptop) and remote (e.g. server)
  machines
- [`setup_rstudio.md`](setup_rstudio.md): instructions to install and
  run a JupyterLab server both on local (e.g. laptop) and remote (e.g. server)
  machines


