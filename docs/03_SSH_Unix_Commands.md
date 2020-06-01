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

If this is your first time connecting to the server, or if the server has recently been 
reconfigured with a new key, then the above message is perfectly normal. You can proceed by typing yes and enter.  

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

To change your working directory use the cd (change directory) command, specifying your target directory:

```shell
user@host:~$ cd <target_directory>
```

### Copy:

To copy files use cp. Again the -r flag can be added to recursively copy all files and subdirectories within a directory:

```shell
user@host:~$ cp <filename> <filecopy>
user@host:~$ cp −r <directory> <target>
```

## Command Line Editors

There exists a large number of [command line editors](https://en.wikipedia.org/wiki/List_of_text_editors) 
that can be used to edit files directly within the terminal. Below we provide instructions for using the
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

For an overview of nano shortcut keys you can press **Ctrl + G**, which will output the following list:

```shell
 Main nano help text

 The nano editor is designed to emulate the functionality and ease-of-use
 of the UW Pico text editor.  There are four main sections of the editor.
 The top line shows the program version, the current filename being
 edited, and whether or not the file has been modified.  Next is the main
 editor window showing the file being edited.  The status line is the
 third line from the bottom and shows important messages.  The bottom two
 lines show the most commonly used shortcuts in the editor.

 The notation for shortcuts is as follows: Control-key sequences are
 notated with a caret (^) symbol and can be entered either by using the
 Control (Ctrl) key or pressing the Escape (Esc) key twice.  Escape-key
 sequences are notated with the Meta (M-) symbol and can be entered using
 either the Esc, Alt, or Meta key depending on your keyboard setup.  Also,
 pressing Esc twice and then typing a three-digit decimal number from 000
 to 255 will enter the character with the corresponding value.  The
 following keystrokes are available in the main editor window.
 Alternative keys are shown in parentheses:

^G    (F1)      Display this help text
^X    (F2)      Close the current file buffer / Exit from nano
^O    (F3)      Write the current file to disk
^R    (F5)      Insert another file into the current one

^W    (F6)      Search for a string or a regular expression
^\    (M-R)     Replace a string or a regular expression
^K    (F9)      Cut the current line and store it in the cutbuffer
^U    (F10)     Uncut from the cutbuffer into the current line

^J    (F4)      Justify the current paragraph
^T    (F12)     Invoke the spell checker, if available
                Invoke the linter, if available
                Invoke formatter, if available

^C    (F11)     Display the position of the cursor
^_    (M-G)     Go to line and column number

^Y    (F7)      Go one screenful up
^V    (F8)      Go one screenful down
M-\   (M-|)     Go to the first line of the file
M-/   (M-?)     Go to the last line of the file

M-W   (F16)     Repeat the last search
M-]             Go to the matching bracket
^^    (M-A)     Mark text starting from the cursor position
M-^   (M-6)     Copy the current line and store it in the cutbuffer

M-}             Indent the current line
M-{             Unindent the current line

M-U             Undo the last operation
M-E             Redo the last undone operation

...
```
