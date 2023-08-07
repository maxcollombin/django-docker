# Steps to run the project

## 1. Build the image and start the container

`./start.sh`

## 2. Create the application

`docker compose exec web django-admin startapp <app_name>`
## 3. Access the application via a web browser

http://127.0.0.1:8000

## 4. Access the container in interactive mode

`docker exec -it django-docker-web-1 /bin/bash`

## 5. Access the python shell

`python manage.py shell`

Alternatively, you can access the python shell directly from the host machine:

`docker compose exec web python manage.py shell`

## 6. Create a superuser

- `docker compose exec web python manage.py migrate`
- `docker compose run web python manage.py createsuperuser`

## 7. Stop the containers and remove the volumes and images

`./stop.sh`