FROM node:18-alpine

WORKDIR /app

# Install MongoDB shell for healthchecks
RUN apk add --no-cache mongodb-tools

COPY package*.json ./

RUN npm install

# Install test dependencies globally
RUN npm install -g mocha nyc cross-env

COPY . .

EXPOSE 3000

CMD ["npm", "start"]