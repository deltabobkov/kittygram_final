#!/bin/bash -x
cd backend
python manage.py migrate --noinput
python manage.py collectstatic 
cp -rf /app/collected_static/. /backend_static/static/ 
gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi