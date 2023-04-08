FROM node:16.15.0-alpine AS builder
WORKDIR /opt/app

COPY package.json package-lock.json* /opt/app/

RUN npm ci

COPY src /opt/app/src

EXPOSE 8000
CMD ["npm", "run", "start"]