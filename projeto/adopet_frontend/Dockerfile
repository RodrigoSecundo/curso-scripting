FROM node:20
WORKDIR /trabalhando
COPY package* ./
RUN npm install
COPY . .
ENTRYPOINT npm start