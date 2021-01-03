FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN ionic build

EXPOSE 8100

CMD ["ionic", "serve"]
