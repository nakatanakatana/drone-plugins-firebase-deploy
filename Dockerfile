FROM node:8-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache curl git && \
    npm install -g firebase-tools@7.6.0
COPY ./deploy.sh /deploy.sh

ENTRYPOINT ["/deploy.sh"]
