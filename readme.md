## Application to initialise the prisma migrations in case of existing database

### Steps of the use
1. Open the file `docker-compose.yaml` and modify the `DATABASE_URL` according to your database
2. If the database is a docker service running on the existing machine, **uncomment** the `networks` and put the *correct network name
3. do `docker-compose up` in this directory to start `prisma-init` service which would migrate the table.

*To find the network name, inspect the db container and search for `NetworkMode`*

#### Dependencies
*Docker*

### Build and Image
Image `ghcr.io/holashchand/prisma-init:1.0.0` can be used or use cmd `make build` to build your own image.

#### Dependencies
*Docker, Make*

### Run locally or from the VM
1. Clone the project from git
2. Create a `.env` file with `DATABASE_URL` ie. for **postgresql** it looks like
```
DATABASE_URL="postgresql://johndoe:randompassword@localhost:5432/mydb?schema=public"
```
3. Run `npm run migrate:prod`

#### Dependencies
*Node, npm*
