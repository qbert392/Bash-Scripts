#!/bin/bash

# Update repositories and upgrade packages
sudo apt update && sudo apt upgrade

# Update cloudflared
brew upgrade cloudflared

sudo launchctl stop com.cloudflare.cloudflared
sudo launchctl unload /Library/LaunchDaemons/com.cloudflare.cloudflared.plist
sudo launchctl load /Library/LaunchDaemons/com.cloudflare.cloudflared.plist
sudo launchctl start com.cloudflare.cloudflared