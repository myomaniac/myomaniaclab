# 📚 Myomaniac Lab Documentation Index

Welcome to the full documentation of the Myomaniac Proxmox Lab.  
Everything here is designed to be modular, secure, and beginner-friendly.

---

## 🛠️ Post-Install Setup

- [System Package Installation](./post-install/system-setup.md)

---

## 🔐 Security Hardening

- [SSH Key-Based Login & Root Lockdown](./security/secure-ssh.md)
- [Fail2Ban SSH Protection](./security/fail2ban.md)

---

## ☁️ Backups

- [Backup Proxmox Config to Google Drive (rclone)](./backups/config-backup-gdrive.md)

---

## 🤖 Automation Scripts

See [`scripts/`](../../scripts/) for automation logic:
- backup rotation
- system setup
- SSH access provisioning

---

## 🌐 Networking (coming soon)

---

## 🧠 Philosophy

- Minimal, modular, readable
- Everything can be rebuilt
- Prioritize key-based auth and off-site backups

---

_This repo powers [github.com/myomaniac/myomaniaclab](https://github.com/myomaniac/myomaniaclab)_