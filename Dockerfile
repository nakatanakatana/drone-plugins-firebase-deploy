FROM node:8-alpine

RUN npm install -g firebase-tools@7.0.2
COPY ./deploy.sh /deploy.sh

ENTRYPOINT ["/deploy.sh"]
