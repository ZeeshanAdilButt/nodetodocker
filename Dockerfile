FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/node-app

COPY ./node-app /home/node-app

# set default dir so that next commands executes in /home/node-app dir
WORKDIR /home/node-app

# will execute npm install in /home/node-app because of WORKDIR
RUN npm install

# no need for /home/node-app/server.js because of WORKDIR
CMD ["node", "/home/node-app/server.js"]

