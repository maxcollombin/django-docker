# Steps to run the project

## 1. Build the docker image

`docker build .`

## 2. Run the docker image

`docker compose up`

## 3. Alternatively, you can build and run the docker image in one command

`docker compose up -d --build`

## 3. Access the application via a web browser

http://127.0.0.1:8000

## 4. Access the container in interactive mode

`docker exec -it django-docker-web-1 /bin/bash`

## 5. Access the python shell

`python manage.py shell`

## 6. Exit the python shell

exit()

## 7. Exit the container

exit
## 8. Create a superuser

- `docker compose exec web python manage.py migrate`
- `docker compose run web python manage.py createsuperuser`

## 9. Stop the docker container

`Ctrl + C` or `docker compose down`

## 10. Optional: Stop the docker container and remove the volume and images

`docker compose down --rmi all --volumes`

## References

[Django, Docker, and PostgreSQL Tutorial](https://learndjango.com/tutorials/django-docker-and-postgresql-tutorial)