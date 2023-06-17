FROM node:20-slim

RUN apt-get update -y && apt-get install -y openssl

WORKDIR  /home/node/app

CMD [ "/home/node/app/.docker/command.sh" ]
