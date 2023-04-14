#!/bin/bash

# Stop the OWASP Juice Shop Docker container
sudo docker stop juice-shop

# Remove the OWASP Juice Shop Docker container
sudo docker rm juice-shop

# Remove the OWASP Juice Shop Docker image
sudo docker rmi bkimminich/juice-shop
