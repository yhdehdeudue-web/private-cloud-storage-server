# Devlog Ideas

## Devlog 1: Started planning my private cloud storage server

Today I started building the public repo for my private cloud storage server project. The goal is to create a Raspberry Pi-based cloud storage system using Nextcloud and Tailscale so I can access my files from anywhere without opening public router ports. I organized the GitHub repo, wrote the setup guide, added a parts list, created security notes, and added setup scripts/templates for installing Nextcloud, installing Tailscale, and configuring the trusted domain. I also made sure the repo does not include private passwords, keys, real files, or sensitive network information.

## Devlog 2: Raspberry Pi OS setup

Today I worked on the Raspberry Pi OS setup plan. I documented the Raspberry Pi Imager settings, including hostname, SSH, username, Wi-Fi, and password setup. I also added notes about connecting to the Pi through SSH and updating the system after first boot.

## Devlog 3: Nextcloud setup

Today I documented the Nextcloud install process using Snap. I added commands for installing snapd, installing Nextcloud, checking services, and creating the admin account from the browser dashboard.

## Devlog 4: Tailscale setup

Today I worked on the Tailscale part of the project. I documented how Tailscale allows private remote access without opening public router ports. I added the commands needed to authenticate the Pi and make Nextcloud trust the Tailscale DNS name.

## Devlog 5: Security hardening

Today I added a security checklist to the project. I focused on what should never be uploaded to GitHub, such as passwords, private keys, Tailscale auth keys, real files, and private screenshots. I also added update and firewall notes.
