FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/nose_modules/.bim:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . /use/src/app

EXPOSE 4000
CMD [ "npm", "start"]
