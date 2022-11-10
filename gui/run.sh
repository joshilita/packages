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
fi

echo "gui lol"

