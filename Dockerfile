FROM node:8.10-alpine

RUN mkdir -p /src/app

WORKDIR /src/app

COPY . /src/app

RUN npm install

RUN npm install nodemon --save-dev

EXPOSE 13666

CMD [ "npm", "start" ]