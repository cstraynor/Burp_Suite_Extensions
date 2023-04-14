#!/bin/bash

# Install docker if not already installed
if ! command -v docker >/dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install docker.io -y
fi

# Check if docker service is running
if ! sudo systemctl is-active --quiet docker; then
  sudo systemctl start docker
fi

# Pull the OWASP Juice Shop image
sudo docker pull bkimminich/juice-shop

# Run the OWASP Juice Shop container
sudo docker run --name juice-shop -d -p 3000:3000 bkimminich/juice-shop
