# Setup Guide

This guide documents my plan for building a private cloud storage server using Raspberry Pi, Nextcloud, and Tailscale.

## 1. Flash Raspberry Pi OS

Use Raspberry Pi Imager.

Settings to configure:

- Device: Raspberry Pi 5
- OS: Raspberry Pi OS 64-bit
- Hostname: `pcloud` or another easy name
- Username: custom username
- Password: strong password
- Wi-Fi: home Wi-Fi if not using Ethernet
- SSH: enabled

## 2. Connect to the Pi with SSH

Format:

```bash
ssh username@hostname.local
```

Example:

```bash
ssh pi@pcloud.local
```

## 3. Update the system

```bash
sudo apt update
sudo apt upgrade -y
```

## 4. Memory setting from tutorial

```bash
echo "kernel=kernel8.img" | sudo tee -a /boot/firmware/config.txt
```

## 5. Clone microSD to NVMe

The tutorial uses Jeff Geerling’s Rpi-Clone tool.

Reference:

```text
https://rpi-clone.jeffgeerling.com/
```

After cloning, use Raspberry Pi configuration to prefer NVMe boot.

```bash
sudo raspi-config
```

Then go to:

```text
Advanced Options → Boot Order → NVMe first
```

## 6. Install Nextcloud

```bash
sudo apt install snapd -y
sudo snap install nextcloud
```

Check services:

```bash
sudo snap services
```

## 7. Create Nextcloud admin account

Open the Raspberry Pi local IP address in a browser while on the same network.

Then create a Nextcloud admin username and a strong password.

## 8. Install Tailscale

Use the official Tailscale Linux download instructions:

```text
https://tailscale.com/download/
```

Then authenticate:

```bash
sudo tailscale up
```

## 9. Make Nextcloud trust Tailscale

Replace `YOUR-TAILSCALE-DNS-NAME` with the real Tailscale DNS name from the Tailscale dashboard.

```bash
sudo snap run nextcloud.occ config:system:set trusted_proxies 0 --value=127.0.0.1
sudo snap run nextcloud.occ config:system:set overwriteprotocol --value=https
sudo snap run nextcloud.occ config:system:set trusted_domains 1 --value="YOUR-TAILSCALE-DNS-NAME"
```

## 10. Turn on the secure Tailscale tunnel

```bash
sudo tailscale serve --bg --https=443 http://localhost:80
```

## 11. Test access

Testing plan:

- Install Tailscale on my laptop
- Install Tailscale on my phone
- Connect both devices to my Tailscale account
- Open the Nextcloud page through the Tailscale address
- Install the Nextcloud desktop or mobile app
- Test file upload
- Test file download
- Test file sync from another network
