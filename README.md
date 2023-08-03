# Steps to run the project

## 1. Build the docker image

`docker build .`

## 2. Run the docker image

`docker compose up`

## 3. Alternatively, you can build and run the docker image in one command

`docker compose up -d --build`

## 3. Access the application via a web browser

http://127.0.0.1:8000

## 4. Create a superuser

`docker compose exec web python manage.py migrate`
`docker compose run web python manage.py createsuperuser`

## 5. Stop the docker container

`Ctrl + C` or `docker compose down`

## 6. Optional: Stop the docker container and remove the volume and images

`docker compose down --rmi all --volumes`

## References

[Django, Docker, and PostgreSQL Tutorial](https://djangoforprofessionals.com)