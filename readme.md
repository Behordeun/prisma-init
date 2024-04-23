## Application to initialise the prisma migrations in case of existing database

### Steps of the use
1. Open the file `docker-compose.yaml` and modify the `DATABASE_URL` according to your database
2. If the database is a docker service running on the existing machine, **uncomment** the `networks` and put the *correct network name
3. do `docker-compose up` in this directory to start `prisma-init` and migrate.

*To find the network name inspect the db container and search for `NetworkMode`*