FROM node:alpine

ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN npm install .

CMD ["node", "run", "start"]
