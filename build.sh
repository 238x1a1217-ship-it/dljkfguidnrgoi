#!/usr/bin/env bash
# Exit immediately if a command exits with a non-zero status
set -o errexit

# Install all project requirements
pip install -r requirements.txt

# Collect all static files into the STATIC_ROOT folder for WhiteNoise
python manage.py collectstatic --no-input

# Run database migrations against the Render PostgreSQL database
python manage.py migrate
