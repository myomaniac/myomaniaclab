#!/usr/bin/env bash

DATE=$(date +%Y-%m-%d)
BACKUP_DIR="/root/proxmox-backup"
ARCHIVE_NAME="pve-env-$DATE.tar.gz"

mkdir -p $BACKUP_DIR

# Clean up old backups (keep last 5)
ls -tp $BACKUP_DIR/pve-env-* | grep -v '/$' | tail -n +6 | xargs -I {} rm -- {}

echo "🔄 Creating backup archive..."
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" \
  /etc/pve \
  /etc/network/interfaces \
  /etc/fstab \
  /etc/hosts

echo "✅ Archive created: $ARCHIVE_NAME"