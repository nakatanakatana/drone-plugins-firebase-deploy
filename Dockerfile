FROM node:8-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git && \
    npm install -g firebase-tools@7.0.2
COPY ./deploy.sh /deploy.sh

ENTRYPOINT ["/deploy.sh"]
