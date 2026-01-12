#!/usr/bin/env bash
# Build script for Render deployment

set -o errexit  # Exit on error

echo "Current directory: $(pwd)"
echo "Directory contents:"
ls -la

echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Collecting static files..."
python manage.py collectstatic --no-input

echo "Running database migrations..."
python manage.py migrate --no-input

echo "Creating superuser if it doesn't exist..."
python manage.py shell << END
from django.contrib.auth import get_user_model
import os

User = get_user_model()
user_name = os.environ.get('DJANGO_SUPERUSER_USERNAME', 'admin')
email = os.environ.get('DJANGO_SUPERUSER_EMAIL', 'admin@example.com')
password = os.environ.get('DJANGO_SUPERUSER_PASSWORD', 'admin123')

if not User.objects.filter(user_name=user_name).exists():
    User.objects.create_superuser(user_name=user_name, password=password)
    print(f'Superuser "{user_name}" created successfully!')
else:
    print(f'Superuser "{user_name}" already exists.')
END

echo "Build completed successfully!"
