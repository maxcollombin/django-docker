#!/bin/bash

# Step 1: Create the Django project using docker-compose

docker-compose run web django-admin startproject django_project .

# Step 2: Start the Docker containers

docker-compose up -d

# Step 3: Change the database engine configuration

## Step 3.1: Create a function to update the database configuration 

function update_db_config() {
    sed -i "s/'ENGINE': 'django.db.backends.sqlite3',/'ENGINE': 'django.db.backends.postgresql',/" $1
    sed -i "s/'NAME': BASE_DIR \/ 'db.sqlite3',/'NAME': 'postgres',/" $1
    sed -i "/'ENGINE': 'django.db.backends.postgresql',/a\        'USER': 'postgres',\n        'PASSWORD': 'postgres',\n        'HOST': 'db',\n        'PORT': '5432'," $1
}

## Step 3.2: Call the function to update the database configuration

update_db_config "django_project/settings.py"

## Step 3.3: Change the timezone parameter value

docker exec -i test-web-1 sed -i "s|TIME_ZONE = 'UTC'|TIME_ZONE = 'Europe/Zurich'|g" django_project/settings.py

# Step 4: Run migrations

docker-compose exec web python manage.py migrate
