FROM node:6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --production

COPY ./src /usr/src/app

EXPOSE 8080
EXPOSE 22

CMD [ "npm", "start" ]