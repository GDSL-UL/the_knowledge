# SSH 

## What is SSH?

Secure Shell (SSH) is a cryptographic network protocol for accessing a computer over an unsecured network. It gives you secure access to a machine's command-line.
Secure Shell provides strong password authentication and public key authentication, as well as encrypted data communications between two computers connecting over an open network, such as the internet. However, all computers within the University of Liverpool Network are not accessible from the open internet for security reasons.
Therefore, to access a machine at the University you do not only need to be connected to the internet, but also to the Virtual Private Network (VPN) that *virtually brings you to the University of Liverpool Network*.  

The use of SSH to connect to a remote host is performed through the following command:

```
ssh UserName@hostIPaddress 
```
```
The authenticity of host 'hostIPaddress' cannot be established.
 DSA key fingerprint is 01:23:45:67:89:ab:cd:ef:ff:fe:dc:ba:98:76:54:32:10.
 Are you sure you want to continue connecting (yes/no)?
```

## Unix Commands

Servers often run unix operating systems such as GNU/Linux. Unix commands are essential to perform operations from the terminal.

The following are the most frequently used commands:

### List Files:
```
user@host:~$ ls -lh
```
### Make Directory:
```
user@host:~$ mkdir Fancy_Project
```
### Move:
```
user@host:~/Fancy_Project$ mv example.txt new_name.txt  This is to change a file name
user@host:~$ mv example.txt Fancy_Project/ This is to move a file to a folder
user@host:~$ mv -r Fancy_Project/ New_Folder/ This is to move a folder with all its content to an other folder 
```
### Remove:
```
user@host:~$ rm example.txt 
user@host:~$ rm -r Fancy_Project/
```
### Change your Working Directory:
```
user@host:~$ cd Fancy_Project/
```
### Copy:
```
user@host:~$ cp ./path/filename1.txt ./path/filename2.txt
user@host:~$ cp −r ./folder ./destination/
```


