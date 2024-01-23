# Use an official Node.js runtime as a parent image
FROM node:19-alpine

# Set the working directory to /app
WORKDIR .

# Copy the current directory contents into the container at /app
COPY . .

# Set example environment file
RUN cp .env.sample .env

# Install ffmpeg
# RUN apt-get update && apt-get -qq install -y ffmpeg
RUN apk add --no-cache ffmpeg

# Install any needed packages specified in package.json
RUN yarn --verbose --network-timeout 100000

# Build Image
RUN yarn build-ts

# Expose port 3000 to the outside world
#EXPOSE 3000

# Test existence of dist folder
RUN ls dist/

# Run yarn start when the container launches
CMD ["yarn", "distribute"]
