# syntax=docker/dockerfile:1

FROM node:18-alpine

# Copy the package.json to install dependencies
COPY package.json package-lock.json ./

# Install the dependencies and make the folder
RUN npm install && mkdir /app && mv ./node_modules ./app

WORKDIR /app

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "start"]