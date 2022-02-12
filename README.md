**中文** | [English](https://github.com/maytom2016/wireguard_autoconfig/blob/main/EN_README%20.md)
# wireguard_autoconfig
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/maytom2016/wireguard_autoconfig/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/maytom2016/wireguard_autoconfig.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/maytom2016/wireguard_autoconfig.svg?style=flat-square&label=Forks&logo=github)

## 在openwrt快速配置wireguard，openwrt作为服务端

该脚本可以帮你快速在openwrt上部署wireguard，为你生成3个用户，首先，你要确认你的openwrt已经安装好如下wireguard相关组件。
kmod-wireguard

luci-app-wireguard

luci-proto-wireguard

wireguard-tools

### 第一步，下载项目文件到本地，并使用WINSCP等工具将项目文件全部上传到openwrt

`git clone https://github.com/maytom2016/wireguard_autoconfig.git`

并编辑ipport.conf

`0.0.0.0:23456`

将0.0.0.0替换成你的连接IP地址

### 第二步，使用SSH或者TTY连接openwrt后台，使用如下命令执行脚本

`sh run.sh`

可以参考log.txt里面的内容进行操作。成功后需要手动重启openwrt。

### 第三步，下载wg子目录底下01.conf-03.conf到本地，使用wireguard客户端导入配置文件。

## 在win快速配置wireguard，windows作为服务端

### 第一步，下载项目文件到本地。

`git clone https://github.com/maytom2016/wireguard_autoconfig.git`

进入win文件夹。

### 第二步，编辑ipport.conf

`0.0.0.0:23456`

将0.0.0.0替换成你的连接IP地址

### 第三步，找到配置文件

你可以在/win/conf目录中，服务器配置文件为wg0.conf，客户端配置为c01-0x.conf。

将配置分别导入对应主机中就可以使用。

最终实现效果wireguard各节点进行之间通信。