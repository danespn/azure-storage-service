FROM node:20.11.0-alpine

WORKDIR /usr/src/app
COPY package*.jscon ./
RUN npm ci --omit=dev
COPY ./src ./src

CMD npm start

