#!/usr/bin/env bash

# Install base system tools securely and cleanly using nala

echo "🔄 Updating package list..."
apt update && apt install nala -y

echo "📦 Installing base tools..."
nala install -y \
  htop vim curl wget git \
  smartmontools zsh btop neofetch \
  lsb-release pve-headers

echo "✅ All base packages installed."