# Python Sandbox

## Start Docker container

```sh
$ docker-compose build
$ docker-compose run -w /app/src app ipython
```

`app` is container name, declared in `docker-compose.yml`.

## Stop Docker container

```sh
$ docker-compose stop

# if you wanna remove container
$ docker-compose down
```
