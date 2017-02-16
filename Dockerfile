FROM node:6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install nodemon yarn -g

COPY package.json /usr/src/app/
RUN yarn

COPY ./src /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]