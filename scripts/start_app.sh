#!/usr/bin/env bash
set -e

# Run collectstatic command
echo "Running collectstatic command..."
source venv/bin/activate
python manage.py collectstatic --noinput

# Restart Gunicorn and Nginx services
echo "Restarting Gunicorn and Nginx services..."
sudo service gunicorn restart
sudo service nginx restart

echo "Application started successfully."
