FROM node:10-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache curl git && \
    npm install -g firebase-tools@8.1.1
COPY ./deploy.sh /deploy.sh

ENTRYPOINT ["/deploy.sh"]
