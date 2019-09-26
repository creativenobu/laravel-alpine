# Laravel Dockerfile built with alpine
A simple Laravel development server built on top of alpine as a docker container. Use with
`docker-compose` only.

## Example
docker-compose.yml
```yaml
version: '2'
service:
    app:
        container_name: web-app
        image: creativenobu/laravel-alpine
        restart: on-failure
        volumes:
            - /path/to/laravel/project:/var/www
        ports:
            - "8080:80"
```
