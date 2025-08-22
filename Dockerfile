FROM node:alpine as builder

ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN apk add --no-cache python3 make build-base \
    && npm install .

FROM node:alpine as runner
WORKDIR /usr/src/app
COPY --chown node:node --from=builder /usr/src/app .
COPY --from=builder /usr/src/app/node_modules ./node_modules

USER node
CMD ["node", "run", "start"]
