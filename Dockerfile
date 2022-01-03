# Select the base image. alpine version usually refers to the most basic lightweight version of the image
FROM node:alpine

#Every command from this point will be executed in the working directory specified
WORKDIR /usr/app

#Copy the project files to the container
COPY ./ ./
# Install some dependencies
RUN npm install

# Default command
CMD [ "npm", "start" ]