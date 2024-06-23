#!/bin/bash

# Update repositories and upgrade packages
sudo apt update && sudo apt upgrade -y

# Update the cloudflared package
sudo apt-get upgrade cloudflared

# Restart the service
sudo systemctl restart cloudflared.service
