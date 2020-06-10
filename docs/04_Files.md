# Files

You need to make sure that:

a) You have access to all of your files;
b) Your files are backed up so your setup is not entirely reliant on a single device;
c) Each device on which your files are copied or from which they are accessed
is encrypted.

## Backup/sync

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

## Encryption

<!---[Add guide to encryption: what it is and how to set up on
Windows/macOS/Linux/iOS/Android]--->

Disk encryption helps protect data on your devices through converting 
them into an unreadable format. Deciphering the data without access to the 
required keys is challenging. Therefore, should your devices be lost or stolen, 
encrypting your devices therefore introduces an additional barrier for someone 
attempting to access potentially sensitive data. Please note that, as per 
University of Liverpool guidelines, 
["the security of confidential information is the responsibility of the individual 
member of staff or student NOT the University, nor the line manager or Head of 
Department"](https://www.liverpool.ac.uk/csd/security/information-security/encryption/). 
Encryption methods are platform dependent. A list of relevant guides is provided below:

1) [Windows](https://www.liverpool.ac.uk/csd/security/information-security/encryption/)
1) [Mac](https://support.apple.com/en-gb/guide/disk-utility/dskutl35612/mac)
1) [Ubuntu](https://help.ubuntu.com/community/Full_Disk_Encryption_Howto_2019)
1) [iOS](https://support.apple.com/en-gb/guide/security/secf6276da8a/1/web/1)
1) [Android](https://www.howtogeek.com/141953/how-to-encrypt-your-android-phone-and-why-you-might-want-to/)


## File Transfer

Below we shall discuss two approaches that can be used to transfer files between
two servers:

1) [File Transfer Protocol (FTP)](https://en.wikipedia.org/wiki/File_Transfer_Protocol); 
2) [Secure Copy Protocol (scp)](https://en.wikipedia.org/wiki/Secure_copy).

### File Transfer Protocol (FTP)

If you need to move large and/or many files from a local machine to a remote
server (e.g. from your laptop to a Linux machine at the lab), you can do so 
using a drag and drop interface with an FTP client (e.g., [filezilla](https://filezilla-project.org/) 
for Windows/Mac/Ubuntu or [WinSCP](https://winscp.net/eng/index.php) for Windows). To access 
a remote server you will need to enter the following into respective fields within your FTP client: 
 
* Host (Remote Server IP Address);
* Username (Your username on the remote host);
* Password (Remote host password).

### Secure Copy Protocol (scp)

Alternatively Mac and Linux users can copy files between servers using the scp command.
To copy a local file to a remote server:

```shell
scp <filepath> <username>@<server.ip.address>:<target_directory>
```

This command can also be use to copy a file from the remote server to your local machine:

```shell
scp <username>@<server.ip.address>:<filepath> <local_target_directory>/
```

As with copying file locally -r can be added to the above command to recursively copy
all files within a directory. However, if a directory contains a large number of files
then zip your directory before executing scp. The zip file can be unzipped using:

```shell
unzip <filename>.zip -d <target_directory>
```

Tar files meanwhile can be extracted using:

```shell
tar -xvzf <filename>.tar.gz -C <target_directory>
```

## File Download

Often large datasets, etc can be downloaded from the web directly. 
The wget command can be used to download files from both http(s) 

```shell
wget '<file_url>'
```

and ftp servers:

```shell
wget -r 'ftp://<username>:<password>@<server.ip.address>/<directory>'
```

Once the data has been downloaded we must verify that the integrity of the file. 
Typically the websites from which data can be downloaded provide a md5 checksum. 
This allows us to verify that a file has not been changed: 

```shell
md5sum <filename>
```

## Practical

### File Download

For the second task we shall download the CIFAR-10 dataset from 
[https://www.cs.toronto.edu/~kriz/cifar.html](https://www.cs.toronto.edu/~kriz/cifar.html) 
using the wget command. 

1) First we will need to determine the url from which we can download the dataset.
Visit the [CIFAR-10 website](https://www.cs.toronto.edu/~kriz/cifar.html), right 
click on the "CIFAR-10 python version", and choose the "copy link" option, 
which will copy the link to your clipboard. 
1) Next, ssh into your remote server. 
1) Type "wget " and paste the url into to the terminal by pressing (ctrl + shift + V).
1) Press enter to start the file download.
1) Upon downloading the CIFAR-10 dataset verify that the md5 checksum matches the one specified on the website. 

### File Transfer (Optional)

1) Create a file named "Test.txt" locally and enter some random text. 
From your local machine copy "Test.txt" to your remote server using either 
scp or a ftp client (e.g., using [WinSCP](https://winscp.net/eng/index.php)
or [filezilla](https://filezilla-project.org/)). 
1) Upon transferring the file, ssh into the remote server and verify that the file is within the 
specified target directory using the ls command. 
1) (Optional) Open the file using a 
[command line editing interface](https://en.wikipedia.org/wiki/List_of_text_editors) from the terminal, e.g, nano or vim:

```shell
nano ./Test.txt
```
