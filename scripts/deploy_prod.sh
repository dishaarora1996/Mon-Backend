#!/bin/bash

# Pull latest changes
git pull origin main

# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Apply migrations and collect static files
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput

# Restart Gunicorn
sudo systemctl restart gunicorn

# Restart Nginx (optional if needed)
sudo systemctl restart nginx