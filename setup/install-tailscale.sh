#!/usr/bin/env bash
set -e

echo "Installing Tailscale using the official install script..."
curl -fsSL https://tailscale.com/install.sh | sh

echo "Starting Tailscale authentication..."
sudo tailscale up

echo "Tailscale setup started."
echo "Follow the login link shown in the terminal."
