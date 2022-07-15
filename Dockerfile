FROM node:latest

COPY package*.json ./
RUN npm install --silent
COPY . .
RUN npm run build
