#!/bin/bash

# Update package repositories and install Nginx
sudo yum update -y
sudo yum install -y nginx

# Start Nginx service
sudo systemctl start nginx

# Ensure Nginx starts on boot
sudo systemctl enable nginx
