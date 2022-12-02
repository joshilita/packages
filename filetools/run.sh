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


exit 0
fi
echo -e "${ERRORFG}This can only be ran by installing.${RESET}"
