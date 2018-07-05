FROM node:8.11.3
# create app directory
WORKDIR /app

# install app dependencies
# a wild card used to ensure both package.json and pakcage-lock.json are copied
COPY package*.json ./

RUN npm install
# in you are building your code for production
# RUN npm install --only=production

# bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]

