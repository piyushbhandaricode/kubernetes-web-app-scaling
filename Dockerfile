FROM node:19-alpine

RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app

WORKDIR /home/app

COPY app/package.json .

USER node

RUN npm install

COPY --chown=node:node app .

EXPOSE 8080

CMD ["node", "app.js"]
