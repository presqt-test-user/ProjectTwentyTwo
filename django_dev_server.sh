#!/bin/bash
# Start the Django Development Server once the database is
# available after bootstraping process

set -e

until python django_wrapper.py; do
  >&2 echo "The virtual ballet moves on..."
  sleep 1
done

python manage.py migrate
python manage.py runserver 127.0.0.1:8000