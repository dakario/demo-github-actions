FROM node:12.2.0

ENV NODE_ENV=prod

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# RUN npm ci --only=production

COPY . .

EXPOSE 3000

CMD node server/server.js
