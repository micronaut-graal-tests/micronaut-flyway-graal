# Micronaut Flyway #

Test application for Micronaut Flyway and GraalVM that uses Postgres.

To run Postgres in Docker:
```
docker run -it --rm -p 5432:5432 -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=users postgres:11.5-alpine
```

To test the application:

```
curl localhost:8080/users
```
