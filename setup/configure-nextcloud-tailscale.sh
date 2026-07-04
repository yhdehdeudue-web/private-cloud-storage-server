#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./configure-nextcloud-tailscale.sh YOUR-TAILSCALE-DNS-NAME"
  echo "Example: ./configure-nextcloud-tailscale.sh pcloud.example-tailnet.ts.net"
  exit 1
fi

TAILSCALE_DNS="$1"

echo "Configuring Nextcloud trusted proxy..."
sudo snap run nextcloud.occ config:system:set trusted_proxies 0 --value=127.0.0.1

echo "Forcing HTTPS overwrite protocol..."
sudo snap run nextcloud.occ config:system:set overwriteprotocol --value=https

echo "Adding trusted domain: $TAILSCALE_DNS"
sudo snap run nextcloud.occ config:system:set trusted_domains 1 --value="$TAILSCALE_DNS"

echo "Starting Tailscale Serve tunnel..."
sudo tailscale serve --bg --https=443 http://localhost:80

echo "Configuration complete."
