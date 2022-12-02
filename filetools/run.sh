#!/usr/bin/env bash
GREENFG="\e[38;5;82m"
REDWEAKFG="\e[38;5;132m"
BBLUEFG="\e[1;38;5;75m"
GBLUEFG="\e[1;38;5;73m"
FOLDERNAMEFG="\e[1;38;5;45m"
ERRORFG="\e[1;38;5;197m"
RESET="\e[0m"
BOLD="\e[1m"
if [ -f ~/NewOSv3/Packages/filetools/startup ]; then
echo -e "${GREENFG}Thank you for installing out file tools!${RESET}"
echo -e "${BBLUEFG}This package will install custom packages. ${RESET}"
sleep 4
echo -e "${GREENFG}Installing all tools.${RESET}"

mkdir ~/NewOSv3/Packages/cd
mkdir ~/NewOSv3/Packages/dir
# mkdir ~/NewOSv3/Packages/folder
wget https://raw.githubusercontent.com/joshilita/allfiletools/main/cd/run.sh
mv run.sh ~/NewOSv3/Packages/cd
wget https://raw.githubusercontent.com/joshilita/allfiletools/main/dir/run.sh
mv run.sh ~/NewOSv3/Packages/dir
echo -e "${GREENFG}All done! You can use cd and dir.${RESET}"
rm -rf ~/NewOSv3/Packages/filetools/startup 




exit 0
fi
echo -e "${ERRORFG}This can only be ran by installing.${RESET}"
