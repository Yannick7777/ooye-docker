FROM node:alpine

ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN apk add --no-cache python3
RUN npm install .

CMD ["node", "run", "start"]
