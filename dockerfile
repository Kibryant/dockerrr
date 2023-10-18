# specify the node base image with your desired version node:<version>
FROM node:16
# replace this with your application's default port
WORKDIR /home/arthurgustavo/Projects
COPY package.json ./
RUN npm install

COPY . .

EXPOSE 3333

CMD [ "npm", "start" ]