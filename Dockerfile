FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

# Add none root user
RUN  useradd admin && echo "admin:admin" | chpasswd && adduser admin sudo
USER admin

EXPOSE 8080

CMD [ "node", "server.js" ]