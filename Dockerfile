FROM node:10.16-alpine AS builder

COPY package*.json ./
RUN npm install --silent
COPY . .
RUN npm run build

FROM php:8.0-apache

COPY --from=builder build /var/www/html

EXPOSE 80
