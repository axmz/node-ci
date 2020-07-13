FROM node:current-alpine3.12
WORKDIR /usr/src/app
COPY package*.json ./
#add volume?
#RUN apt-get update && apt-get install redis-server -y
RUN npm install
COPY . .
EXPOSE 5000
#CMD systemctl enable redis-server.service
#CMD service redis-server start
#CMD sleep 10
CMD [ "node", "index.js" ]