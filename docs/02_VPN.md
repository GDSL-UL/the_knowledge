# VPN

## *What is a VPN?*

A VPN (virtual private network) connects a machine that lies outside of the university (ie. outside the firewall) to the internal network. When the VPN is running, your network traffic (e.g. Internet) is routed through the university in the same way as if the computer was on your work desk. This enables you to:

* Access journal websites like you would inside the university
* Access network drives (e.g. M Drive etc) - but be careful when transferring big files
* Access servers (e.g. over the terminal / command line / ftp)

## *How can I setup the VPN for Liverpool?*

<!--You can find a more comprehensive guide to setup your VPN on the
[`setup_vpn.md`](setup_vpn.md) document of this repository. -->

This document describes how to set up a VPN. <!--The text below has been copied from CSD website.-->

To access the VPN service:

**1. Register**

First you will need to submit [a request to register for the VPN service via CSD](https://liverpool.service-now.com/sp?id=sc_cat_item&sys_id=bd8d37f1376ba60051a3532e53990e3f). CSD will need you to explain why you require VPN access and what you intend to do with it. <!--It may be that other services offer the solution you require instead of the VPN.-->

**2. Download the VPN Client**

Once your registration is confirmed you will need to download and install a VPN Client. 

**3. Open the client and connect**

Finally you will need to connect to the VPN using your VPN client. Below we provide instructions on how to accomplish this on Windows, Mac and Ubuntu.

## Windows and Mac 

You must make sure you are registered to access the VPN service first. 
Once you are registered you can download and install the GlobalProtect VPN Client to connect to the University network.
GlobalProtect is compatible with Windows 10 and Macs. 
Please access admin rights before attempting to download the VPN Client on your MWS PC. 
It is not possible to use GlobalProtect to connect to the University network on a mobile or tablet device.

To install the Client:

1) Access Admin Rights on you PC. 

1) Visit https://vpn.liv.ac.uk
1) Enter your University username and password to login to the VPN portal.
1) Click the appropriate link to download the required version of the VPN client - Windows 32 bit, Windows 64 bit, or Mac OS. 
   (To check which version you require, see your system properties on your device)
1) Once the file has downloaded, double-click to run the installation. 
1) Follow the steps through the installation wizard, accepting the default options.
1) Once installed you will see the GlobalProtect "globe" icon appear in the system tray (bottom right, near the clock). 
   It is a globe and it will have a red x on it, showing that it is not currently connected.
1) Double-click on the GlobalProtectglobe icon in the system tray. In the window that opens, enter the following:

   * Username: enter your University username
   * Password: enter your University password
   * Portal: vpn.liv.ac.uk

1) Click Apply.

The GlobalProtect VPN client will then automatically connect to the University network - the red cross should disappear form the icon in the system tray.

You can close the window: the client will stay connected.

### To connect and disconnect the client

Once the GlobalConnect VPN client has been installed, the icon will remain in your system tray.

To connect the VPN right click the GlobalProtect icon in the system tray and choose Connect.
When you have finished and want to disconnect the VPN, right click on the icon and choose Disconnect.

How to allow third party applications - like Global Protect - to install on a Mac

1) Open System Preferences and click Security & Privacy

1) Select the General tab 

1) Click the lock in the lower left-hand corner 

1) Enter your computer username and password, then select Unlock

## Ubuntu

The University of Liverpool provides a [guide](https://liverpool.service-now.com/sp/?id=kb_article&sysparm_article=KB0010404&sys_kb_id=52bfb8303717e200d6fa4a7a43990ef9) 
for setting up VPN on Linux, tested with Ubuntu 14.04, 16.04, 18.04 and Centos 7. The guide recommends the 
installation of the VPN Client VPNc:

```shell
sudo apt-get install network-manager-vpnc
sudo apt-get install network-manager-vpnc-gnome
```

Alternatively yum can be used to install the software: 

```shell
sudo yum install NetworkManager-vpnc
sudo yum install NetworkManager-vpnc-gnome
```
To recap the remaining steps from the [UoL guide](https://liverpool.service-now.com/sp/?id=kb_article&sysparm_article=KB0010404&sys_kb_id=52bfb8303717e200d6fa4a7a43990ef9):

1) First you will need to download the UoL VPN configuration file: 
[VPN.PCF](https://pcwww.liv.ac.uk/csd/vpn/University%20of%20Liverpool%20VPN.PCF)
1) In the top right corner of your desktop there is a network icon. 
Click on this icon, then choose:

> VPN Connections > Configure VPN

1) Click "Add" and then "Select Import" in order to locate your \*.pcf file. 
1) Next enter your MWS username in the User Name field. 
1) Click the IPv4 Settings tab.
1) If left blank fill in the Group password field using the group password specified within the \*.pcf file. 
1) Add DNS servers:

   * 138.253.110.103
   * 138.253.110.104

and search domains (if a search domain field is available):

   * liv.ac.uk
   * liverpool.ac.uk
   * livad.liv.ac.uk

1) Click on Routes. 

1) You will need one route with the following details:

   * Address: 138.253.0.0
   * Netmask: 255.255.255.0
   * gateway: 0.0.0.0
   * metric: 0

1) Tick the "Use this connection only for resources on its network" box.

1) Click Save / Apply / Close depending on the distribution. 

### To connect the client and disconnect the client:

To connect to the network, click on the icon in the top right corner of the desktop and choose

> VPN Connections > University of Liverpool VPN Service

You will be promted to authenticate using your MWS password. Upon connecting the network 
icon will display a locked symbol. You can now use your computera as if you were physically 
connected to the University of Liverpool network. 

To disconnect click on the network icon again and choose:  

> VPN Connections > Disconnect VPN

