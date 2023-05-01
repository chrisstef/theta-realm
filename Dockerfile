FROM node:18-alpine

WORKDIR /app

COPY . /app

COPY package.json ./

RUN yarn

COPY next.config.js ./next.config.js

EXPOSE 3000

CMD ["yarn", "run", "dev"]