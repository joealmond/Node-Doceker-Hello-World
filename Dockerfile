FROM node:20-alpine3.19

RUN addgroup app && adduser -S -G app app

USER app

WORKDIR /home/app

COPY package*.json ./

USER root

RUN chown -R app:app .

USER app

RUN npm install

COPY src/ ./

ENV HOST=0.0.0.0 

EXPOSE 3000

CMD [ "npm", "start" ]