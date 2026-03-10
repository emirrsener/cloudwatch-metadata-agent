#!/bin/bash

# Check for root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

echo "Installing cloudwatch-agent..."

# Copy agent script
cp agent/cloudwatch-agent /usr/sbin/cloudwatch-agent
chmod +x /usr/sbin/cloudwatch-agent

# Copy systemd files
cp agent/systemd/cloudwatch-agent.service /etc/systemd/system/
cp agent/systemd/cloudwatch-agent.timer /etc/systemd/system/

# Reload systemd and start timer
systemctl daemon-reload
systemctl enable cloudwatch-agent.timer
systemctl start cloudwatch-agent.timer

echo "Installation complete! The agent will send RAM metrics every minute."
