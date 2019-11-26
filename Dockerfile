FROM node:alpine

WORKDIR /action-slack
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

ENTRYPOINT ["node", "/action-slack/lib/main.js"]
