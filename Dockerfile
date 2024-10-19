FROM node:18.20.4-alpine

WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 8000

ENTRYPOINT [ "npm", "run", "start-auth" ]
