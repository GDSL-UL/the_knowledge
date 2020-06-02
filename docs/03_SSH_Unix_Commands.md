# SSH 

## What is SSH?

Secure Shell (SSH) is a cryptographic network protocol for accessing a computer over an unsecured network. It gives you secure access to a machine's command-line.
Secure Shell provides strong password authentication and public key authentication, as well as encrypted data communications between two computers connecting over an open network, such as the internet. However, all computers within the University of Liverpool Network are not accessible from the open internet for security reasons.
Therefore, to access a machine at the University you do not only need to be connected to the internet, but also to the Virtual Private Network (VPN) that *virtually brings you to the University of Liverpool Network*.  

## Connecting to a remote host

The use of SSH to connect to a remote host is performed through the following command:

```shell
ssh <username>@<server.ip.address>
```
  
If you are connecting to a server for the first time, then you may receive the following warning:

```
The authenticity of host 'hostIPaddress' cannot be established.
 DSA key fingerprint is 01:23:45:67:89:ab:cd:ef:ff:fe:dc:ba:98:76:54:32:10.
 Are you sure you want to continue connecting (yes/no)?
```
Windows users need to install an SSH client in order to access a server remotely through SSH. There are several clients available, MobaXterm is the option we advise to employ as it provides a number of useful functions for remote computing in a single application. 
The free edition can be downloaded [here](https://mobaxterm.mobatek.net/download.html). To establish a connection with your remote server you open mobaXterm and click on session and then SSH. The Remote Host is the machine you want to access which can be identified by an IP address. IP addresses of our shared resources are listed in - add file name here-.
[Here](https://mobaxterm.mobatek.net/demo.html) you can find a simple demo of the SSH client. 

If this is your first time connecting to the server, or if the server has recently been 
reconfigured with a new key, then the above message is perfectly normal. You can proceed by typing yes and enter.  

Once you have accessed the server the first thing to do is to change the temprorary password we assigned to your user.

```shell
user@host:~$ passwd
```

## Unix Commands

Servers often run unix operating systems such as GNU/Linux. Unix commands are essential to perform operations from the terminal.

The following are the most frequently used commands:

### List Files:
```shell
user@host:~$ ls -lh
```

In the above example two flags have been added to the ls command:

* -l List with long format, e.g., show file read/write/execute permissions.
* -h List files with readable file size, e.g. MB, GB, etc. 

### Make Directory:

A new directory can be created using the mkdir command:

```shell
user@host:~$ mkdir <new_directory_name>
```

### Move:

The mv command command can be used to either rename or move files and folders:

```shell
user@host:~$ mv <current_filename> <new_filename>  # This is to change a file name
user@host:~$ mv <filepath> <target_directory> # This is to move a file to a folder
user@host:~$ mv -r <directory_path> <target_directory> # This is to move a folder with all its content to an other folder 
```

We add the -r (recursive) flag to move a directory and all its contents (subdirectories and files). 

### Remove:

Files and folders and can be deleted using the rm (remove) command:

```shell
user@host:~$ rm <filepath> # To delete a file
user@host:~$ rm -r <directory> # To delete a folder and its content
```

Again, we add the -r (recursive) flag to remove a directory and all its contents (subdirectories and files). 

**Warning: rm is to be used with caution. There is no trash folder 
from which the files can be recovered. Upon using this command the files are deleted.** 

### Change your Working Directory:

To change your working directory use the cd (change directory) command, specifying your target directory or .. to move back:

```shell
user@host:~$ cd <target_directory>
user@host:~$ cd ..
```

### Copy:

To copy files use cp. Again the -r flag can be added to recursively copy all files and subdirectories within a directory:

```shell
user@host:~$ cp <filename> <filecopy>
user@host:~$ cp −r <directory> <target>
```

## Command Line Editors

There exists a large number of [command line editors](https://en.wikipedia.org/wiki/List_of_text_editors) 
that can be used to edit files directly within the terminal. 
To create a file from the terminal you can simply type the following command:
```shell
user@host:~$ > filename.txt
```

 Below we provide instructions for using the
[nano editor](https://www.nano-editor.org/). To open a file in nano run the following command inside the 
terminal:

```shell
user@host:~$ nano <filename>
```

Once the file opens you can move your cursor using the arrow keys, and edit content
as in any text editor. You can save any changes that you have made to the file
using **Ctrl + O**. To close the editor press **Ctrl + X**. Before the editor 
closes you will be asked if you want to save your changes. Type Y for Yes to
save changes, and N for No if you want to close the editor without saving.

For an overview of nano shortcut keys you can press **Ctrl + G**, which will output the following list.

## Practical

1) Use SSH to access one of the lab servers (the IP address of the server you have been assigned will be provided).

1) Change the current temporary password with a password of your choice.

1) Create a directory with your project name.

1) List files to check that the directory is created.

1) Change your working directory with the project directory.

1) Create a file, edit and save using nano.



