FROM node:lts-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm ci
COPY app.js index.js /app/
CMD node app.js
