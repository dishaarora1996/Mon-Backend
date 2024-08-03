#!/usr/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart gunicorn.service

# Copy gunicorn socket and service files
sudo cp "gunicorn/gunicorn.socket" "/etc/systemd/system/gunicorn.socket"
sudo cp "gunicorn/gunicorn.service" "/etc/systemd/system/gunicorn.service"

# Start and enable Gunicorn service
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service

sudo systemctl daemon-reload
sudo systemctl restart gunicorn.service