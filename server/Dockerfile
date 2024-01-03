FROM node:20.7.0

# RUN apt-get update && apt-get install -y sudo curl

# Create app directory
WORKDIR /usr/src
COPY . .
RUN npm i -g npm
RUN npm install 
RUN npm install pm2@3.5.0 -g
CMD pm2 start process.yml && tail -f /dev/null
# EXPOSE 3000

