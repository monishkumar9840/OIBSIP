#!/bin/bash

echo "Configuring UFW Firewall..."

sudo ufw --force reset

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow ssh
sudo ufw deny 80/tcp

sudo ufw --force enable

echo ""
echo "Current Firewall Rules:"
sudo ufw status verbose
