# build environment
FROM node:current-alpine3.12 AS build
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm ci 
COPY . ./
RUN npm run build

# production environment
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
#COPY nginx.conf /etc/nginx/nginx.conf
#VOLUME ./nginx.conf:/etc/nginx/nginx.conf:ro
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]