#!/bin/bash
#Copyright (C) 2024 Augustun1000 <augustoperezriesgo@gmail.com>
#By Augustun1000
# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color
function MBR() {
    # Define variables
DISK="/dev/sda"        # Replace with your actual disk identifier
PART1_SIZE="1GB"       # Size of the first partition (FAT32)

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "${RED}This script must be run as root.${NC}" >&2
    exit 1
fi

# Ensure the disk is not in use
if lsblk | grep -q "$DISK"; then
    echo -e "${RED}The disk $DISK is in use. Please unmount any partitions on it before proceeding.${NC}" >&2
    exit 1
fi

# Create a new MRB partition table and partitions
parted --script "$DISK" mklabel msdos
parted --script "$DISK" mkpart primary fat32 0% "$PART1_SIZE"
parted --script "$DISK" mkpart primary ext4 "$PART1_SIZE" 100%

# Format the partitions
echo -e "${GREEN}Formatting FAT32 partition...${NC}"
mkfs.fat -F32 "${DISK}1"
echo -e "${GREEN}Formatting EXT4 partition...${NC}"
mkfs.ext4 "${DISK}2"

# Print success message
echo -e "${GREEN}Partitioning and formatting completed.${NC}"
echo -e "FAT32 partition created at ${DISK}1."
echo -e "Remaining space formatted as EXT4 at ${DISK}2."

# End of script
}
function GPT() {
    # Define variables
DISK="/dev/sda"        # Replace with your actual disk identifier
PART1_SIZE="1GB"       # Size of the first partition (FAT32)

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "${RED}This script must be run as root.${NC}" >&2
    exit 1
fi

# Ensure the disk is not in use
if lsblk | grep -q "$DISK"; then
    echo -e "${RED}The disk $DISK is in use. Please unmount any partitions on it before proceeding.${NC}" >&2
    exit 1
fi

# Create a new GPT partition table and partitions
parted --script "$DISK" mklabel gpt
parted --script "$DISK" mkpart primary fat32 0% "$PART1_SIZE"
parted --script "$DISK" mkpart primary ext4 "$PART1_SIZE" 100%

# Format the partitions
echo -e "${GREEN}Formatting FAT32 partition...${NC}"
mkfs.fat -F32 "${DISK}1"
echo -e "${GREEN}Formatting EXT4 partition...${NC}"
mkfs.ext4 "${DISK}2"

# Print success message
echo -e "${GREEN}Partitioning and formatting completed.${NC}"
echo -e "FAT32 partition created at ${DISK}1."
echo -e "Remaining space formatted as EXT4 at ${DISK}2."

# End of script
}

menu(){
    echo -ne "
Power menu
${GREEN}1)${NC} Format drive with MBR and ext4
${GREEN}2)${NC} Format drive with GPT and ext4
${BLUE}0)${NC} Exit
Choose an option: "
    read -r a
    case $a in
        1) MBR; menu ;;
        2) GPT; menu ;;
        0) exit 0 ;;
        *) echo -e "${RED}Wrong option.${NC}" ;;
    esac
}

# Start the menu
menu

