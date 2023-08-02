#alpine does not have much, so we are gwtting node image with 18-alpine tag
#so that it already has node and npm
FROM node:alpine

#to copy from CWD of our local to docker
WORKDIR /usr/app
COPY ./ /usr/app

#if we have just this we need package.json
#but docker will not know where the package.json is
#because it is not present in the above image, which is also the environment where put
#app will be running, so we use the above
RUN npm install

CMD ["npm", "start"]