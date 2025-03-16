# 🛡️ SSH Protection with Fail2Ban

Fail2Ban helps protect your Proxmox VE server from brute-force SSH attacks by banning IPs after multiple failed login attempts.

---

## ✅ What This Covers

- Installing fail2ban using `nala`
- Configuring secure defaults for SSH protection
- Enabling and verifying the jail
- Optional: Customizing ban time, alerts, or actions

---

## 🧰 Installation

```bash
sudo nala install fail2ban -y
```

---

## 🛠 Configuration

Edit the jail config:

```bash
sudo nano /etc/fail2ban/jail.local
```

Paste the following:

```ini
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
```

Then restart:

```bash
sudo systemctl restart fail2ban
sudo systemctl enable fail2ban
```

---

## 🔍 Verify SSH Jail is Active

```bash
sudo fail2ban-client status sshd
```

You should see:

- Currently failed: `0`
- Total banned: `0` (or more after attempts)

---

## 📦 Notes

- `action_` is a safe default without email alerting
- You can increase `bantime` to `24h` or even `forever`
- Future: configure email alerts or integrate firewall