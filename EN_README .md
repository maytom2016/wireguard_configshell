**English** | [中文](https://github.com/maytom2016/wireguard_autoconfig/blob/main/README.md)
# wireguard_autoconfig
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/maytom2016/wireguard_autoconfig/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/maytom2016/wireguard_autoconfig.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/maytom2016/wireguard_autoconfig.svg?style=flat-square&label=Forks&logo=github)

## Quickly configure wireguard in openwrt
This script can help you quickly deploy wireguard on openwrt, generate 3 users for you, first of all, you need to confirm that your openwrt has the following wireguard related components installed.

mod-wireguard
luci-app-wireguard
luci-proto-wireguard
wireguard-tools

### Now,lets get start.Download the project file locally and upload all the project files to openwrt using tools such as WINSCP

`git clone https://github.com/maytom2016/wireguard_autoconfig.git`

then edit ipport.conf 

`0.0.0.0:23456`

replace 0.0.0.0 to your public ip

### In the second step, use SSH or TTY to connect to the openwrt background and use the following command to execute the script

`sh run.sh`

You can refer to the contents of the log .txt to operate. After success, you need to manually restart openwrt.

### In the third step, download 01.conf-03.conf at the bottom of the wg subdirectory to the local, and use the wireguard client to import the configuration file.

## In win quick configuration wireguard, windows as the server

### The first step is to download the project file locally.

`git clone https://github.com/maytom2016/wireguard_autoconfig.git`

Go to the win folder.

### The second step is to edit ipport.conf

`0.0.0.0:23456`

Replace 0.0.0.0 with your connection IP address

### The third step is to edit ipport.conf

You can configure the server configuration file as wg0.conf and the client configuration as c01-0x.conf in the /win/conf directory.

You can use the configuration by importing the configuration into the corresponding host.

The result is communication between the wireguard nodes.