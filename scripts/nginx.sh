#!/usr/bin/bash

# Replace {YOUR_PROJECT_MAIN_DIR_NAME} with your actual project directory name
PROJECT_MAIN_DIR_PATH="/opt/jenkins/workspace/django-app_dev/Mon-Backend/"


# Reload systemd daemon
sudo systemctl daemon-reload

# Remove default Nginx site if exists
sudo rm -f /etc/nginx/sites-enabled/default

# Copy Nginx configuration file
sudo cp "$PROJECT_MAIN_DIR_PATH/nginx/nginx.conf" "/etc/nginx/sites-available/bba"

# Create symbolic link to enable Nginx site
sudo ln -s "/etc/nginx/sites-available/bba" "/etc/nginx/sites-enabled/"

# Add www-data user to ubuntu group
sudo gpasswd -a www-data ubuntu

# Restart Nginx service
sudo systemctl restart nginx