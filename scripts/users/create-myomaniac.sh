#!/usr/bin/env bash

# Create a secure Proxmox user with sudo access

USERNAME="USERNAME"

# Create user
adduser $USERNAME

# Install sudo if missing
if ! command -v sudo &> /dev/null; then
  echo "Installing sudo..."
  apt update && apt install sudo -y
fi

# Add to sudo group
usermod -aG sudo $USERNAME

# Setup SSH directory
mkdir -p /home/$USERNAME/.ssh
chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh
chmod 700 /home/$USERNAME/.ssh

echo "✅ User '$USERNAME' created and added to sudo group."
echo "🔐 Don't forget to add their public SSH key to /home/$USERNAME/.ssh/authorized_keys"