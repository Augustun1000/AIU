#!/bin/bash

# Define variables
DISK="/dev/sdX"        # Replace with your actual disk identifier
PART1_SIZE="1GB"       # Size of the first partition (FAT32)

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root." >&2
    exit 1
fi

# Ensure the disk is not in use
if lsblk | grep -q "$DISK"; then
    echo "The disk $DISK is in use. Please unmount any partitions on it before proceeding." >&2
    exit 1
fi

# Create a new GPT partition table and partitions
parted --script "$DISK" mklabel gpt
parted --script "$DISK" mkpart primary fat32 0% "$PART1_SIZE"
parted --script "$DISK" mkpart primary ext4 "$PART1_SIZE" 100%

# Format the partitions
mkfs.fat -F32 "${DISK}1"
mkfs.ext4 "${DISK}2"

# Print success message
echo "Partitioning and formatting completed."
echo "1GB FAT32 partition created at ${DISK}1."
echo "Remaining space formatted as ext4 at ${DISK}2."

# End of script
