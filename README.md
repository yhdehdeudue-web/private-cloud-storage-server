# Private Cloud Storage Server

A self-hosted private cloud storage project using a Raspberry Pi 5, Nextcloud, and Tailscale.

The goal is to build my own private cloud storage system that I can access from anywhere without paying monthly cloud storage fees or exposing my home network directly to the public internet.

## What I’m building

I’m building a Raspberry Pi-based file server that can:

- Store personal files on an external SSD/NVMe drive
- Run Nextcloud as the cloud storage dashboard and file manager
- Use Tailscale for private remote access from my laptop and phone
- Sync files across devices like Google Drive, iCloud Drive, or OneDrive
- Avoid opening public router ports
- Keep private passwords, keys, and real files out of the public GitHub repo

## Why I’m building it

I wanted a project that is useful in real life and helps me learn Linux, servers, networking, storage, and security. Instead of only relying on big cloud storage companies, this project lets me understand how to host and protect my own storage system.

## Main technologies

- Raspberry Pi 5
- Raspberry Pi OS 64-bit
- Nextcloud
- Tailscale
- SSH
- Linux terminal
- NVMe or external USB storage
- GitHub documentation and setup scripts

## Hardware needed

See [`docs/parts-list.md`](docs/parts-list.md).

## Setup guide

See [`docs/setup-guide.md`](docs/setup-guide.md).

## Security

See [`docs/security.md`](docs/security.md).

## Privacy

This repo does **not** include:

- Passwords
- Tailscale auth keys
- Private keys
- Real personal files
- Private IP addresses
- `.env` files
- Backups
- Private screenshots with personal information

## Credit

This project was inspired by a YouTube tutorial about setting up a Raspberry Pi 5 with Nextcloud and Tailscale for private cloud storage. I am using the tutorial as a learning reference while creating my own documented setup, security checklist, scripts, and project notes.
