
#!/usr/bin/env bash
set -euo pipefail

echo "=== Linux Server Setup ==="

sudo apt update
sudo apt install -y nginx ufw

sudo systemctl enable --now nginx

echo "=== Nginx status ==="
systemctl is-active nginx

echo "=== Nginx version ==="
nginx -v

echo "=== Firewall status ==="
sudo ufw status

echo "Installation terminee."
echo "Configure les regles UFW apres avoir verifie"
echo "les ports necessaires a ton laboratoire."
