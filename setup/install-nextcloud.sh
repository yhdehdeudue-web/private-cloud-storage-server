#!/usr/bin/env bash
set -e

echo "Updating system..."
sudo apt update
sudo apt upgrade -y

echo "Installing snapd..."
sudo apt install snapd -y

echo "Installing Nextcloud..."
sudo snap install nextcloud

echo "Checking Nextcloud services..."
sudo snap services

echo "Nextcloud install step completed."
echo "Next: open the Pi IP address in a browser and create the admin account."
