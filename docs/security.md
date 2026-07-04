# Security Checklist

This project is meant to be private and safe. The goal is remote access without exposing the server directly to the public internet.

## Do not publish

Never commit these to GitHub:

- Passwords
- Tailscale auth keys
- SSH private keys
- `.env` files
- Personal documents
- Backups
- Real sensitive screenshots
- Full private network details

## Authentication

- Use a strong Raspberry Pi password
- Use a strong Nextcloud admin password
- Do not reuse passwords
- Use SSH keys if possible
- Keep the Pi updated

## Network safety

- Use Tailscale for remote access
- Do not open router ports unless needed
- Avoid exposing Nextcloud directly to the public internet
- Keep the Tailscale account secure

## Updates

Run updates regularly:

```bash
sudo apt update
sudo apt upgrade -y
```

## Firewall plan

Possible firewall setup:

```bash
sudo apt install ufw -y
sudo ufw allow ssh
sudo ufw enable
```

I need to test firewall rules carefully so I do not lock myself out of SSH.
