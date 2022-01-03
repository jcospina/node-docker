# Select the base image. alpine version usually refers to the most basic lightweight version of the image
FROM node:alpine

#Every command from this point will be executed in the working directory specified
WORKDIR /usr/app

# Copy first the package.json to avoid downloading all dependencies with npm install when making changes to the code
# This will only execute npm install when package.json changes
COPY ./package.json ./
RUN npm install

# Copy the rest of the files meaning the code assets, etc
COPY ./ ./

# Default command
CMD [ "npm", "start" ]