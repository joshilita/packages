#!/usr/bin/env bash
GREENFG="\e[38;5;82m"
REDWEAKFG="\e[38;5;132m"
BBLUEFG="\e[1;38;5;75m"
GBLUEFG="\e[1;38;5;73m"
FOLDERNAMEFG="\e[1;38;5;45m"
ERRORFG="\e[1;38;5;197m"
RESET="\e[0m"
BOLD="\e[1m"

if [ -f ~/NewOSv3/Packages/gui/startup ]; then
echo -e "${GREENFG}Thank you for installing the GUI package!${RESET}"
sleep 1
echo -e "${BBLUEFG}We need to install the Dialog package. This requires root permission.${RESET}"
sudo echo "Installing Dialog using APT..."
sudo apt install dialog -y
echo -e "${GREENFG}Configuration complete! You can start the GUI by using the command: gui${RESET}"
rm -rf ~/NewOSv3/Packages/gui/startup
exit
fi
variable1=$1
if [ "$variable1" ]; then
if [ "$variable1" = "auto" ]; then
if [ ! -f ~/NewOSv3/.startscript ];then
echo "are you serious right neow bro"
exit
fi
for i in $(seq 0 10 100) ; do sleep 0.2; echo $i | dialog --gauge "Starting up NewOS with NewGUI. Please wait." 10 70 0; done
sec=$(dialog --passwordbox "Please enter your password." 10 30 3>&1- 1>&2- 2>&3-)
if [ "$?" == "1" ]; then
clear
echo "Exit"
exit
fi
passlol=$(cat ~/NewOSv3/.pass)
if [ "$sec" == "$passlol" ]; then
clear
dialog  --infobox   "Please Wait..." 15 30
sleep 2.5
clear
dialog --ok-label "Start!" --extra-button  --extra-label "Shutdown" --msgbox   "Welcome to NewGUI!\n(c)2021-2022 Joshilita" 15 30
value=$?
if [ "$value" == "0" ];then
while true; do
 
lol=$(dialog --nocancel --ok-label "Run" --menu "What command would you like to run?" 30 60 60 1 "Install Package" 2 "List Packages" 3 "Delete Package" 4 "Shutdown" 5 "Run Package/Normal Command" 3>&1- 1>&2- 2>&3-)
if [ "$lol" == "1" ]; then
mama=$(dialog  --inputbox "What package would you like to install?" 15 30 'enter here' 3>&1- 1>&2- 2>&3-)
if [ "$?" == "1" ]; then
echo ""
else
 dialog --clear --prgbox   "Installing Package" "bash ~/NewOSv3/Packages/gui/installpckg.sh ${mama}"  30 60
fi
elif [ "$lol" == "4" ]; then
dialog --ok-label "Return to terminal" --extra-button  --extra-label "Shutdown" --msgbox   "Do you want to return to NewOS terminal or Shutdown?" 10 50
value=$?
if [ "$value" == "0" ];then
dialog --nocancel --ok-label "Restart Now" --pause "Rebooting to terminal in 10 seconds. You need to use the command 'gui enable' if you want to start NewGUI automatically." 15 30 10
clear
rm -rf ~/NewOSv3/.startscript
newos
exit 0
else
clear
echo "Bye!"
exit 0
fi
fi
done
elif [ "$value" == "3" ];then
dialog --ok-label "Return to terminal" --extra-button  --extra-label "Shutdown" --msgbox   "Do you want to return to NewOS terminal or Shutdown?" 10 50
value=$?
if [ "$value" == "0" ];then
dialog --nocancel --ok-label "Restart Now" --pause "Rebooting to terminal in 10 seconds. You need to use the command 'gui enable' if you want to start NewGUI automatically." 15 30 10
clear
rm -rf ~/NewOSv3/.startscript
newos
exit 0
else
clear
echo "Bye!"
exit 0
fi
fi
else 
clear
echo "incorrect"
fi

elif [ "$variable1" = "enable" ]; then
touch ~/NewOSv3/.startscript
echo "gui" >> ~/NewOSv3/.startscript
echo "Enabled. Please reboot NewOS."
else
echo "i have no idea what you just said"
fi
else
echo "do you want me to do anything orr..?"
fi

# dialog --title Warning --msgbox "NewOS Gui is still in development. Please expect bugs." 10 50

