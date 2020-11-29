FROM node:current-alpine3.12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 5000
CMD [ "node", "index.js" ]