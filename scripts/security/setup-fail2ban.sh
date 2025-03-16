#!/usr/bin/env bash

# Fail2Ban secure setup script for Proxmox

echo "📦 Installing fail2ban..."
nala install fail2ban -y

echo "🔐 Writing secure jail.local..."
cat <<EOF | tee /etc/fail2ban/jail.local > /dev/null
[DEFAULT]
bantime = 1h
findtime = 10m
maxretry = 3
backend = systemd
destemail = root@localhost
sender = fail2ban@localhost
action = %(action_)s

[sshd]
enabled = true
EOF

echo "🔁 Restarting Fail2Ban..."
systemctl restart fail2ban
systemctl enable fail2ban

echo "✅ Fail2Ban is now protecting SSH access."