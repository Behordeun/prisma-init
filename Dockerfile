FROM node:20.11.0-alpine3.18 AS install
WORKDIR /app
COPY . ./
RUN npm i

FROM node:20.11.0-alpine3.18
WORKDIR /app
# RUN apk add openssl curl
COPY --from=install /app/package*.json ./
COPY --from=install /app/prisma ./prisma
COPY --from=install /app/node_modules ./node_modules
CMD [ "npm", "run", "migrate:prod" ]
