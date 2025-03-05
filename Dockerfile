# Start with a FROM statement to specify the base image. The base image is the starting point for the new image you're creating.
# The FROM statement is followed by the name of the base image (in this case, node:22). The number 22 is the version number of the Node.js image.
# Node.js is a JavaScript runtime that's used to run JavaScript code on the server side. The Node.js image is a popular base image for building web applications.

FROM node:22 

# Next, create a WORKDIR statement to specify the working directory for the application. The WORKDIR statement is followed by the path to the working directory.
# It is /app because the working directory for the application is /app in the container.
WORKDIR /app

# Next, copy the package.json file from the local directory to the working directory in the container. The COPY statement is followed by the path to the package.json file in the local directory and the path to the working directory in the container.
COPY package.json /app

# Next, run the npm install command to install the dependencies specified in the package.json file. The RUN statement is followed by the command to run.
RUN npm install

# All in all the COPY and RUN statements are used to copy the package.json file from the local directory to the working directory in the container and install the dependencies specified in the package.json file first before copying the rest of the application files.

# Next, copy the rest of the application files from the local directory to the working directory in the container. The COPY statement is followed by the path to the application files in the local directory and the path to the working directory in the container.
COPY . .

# Set port environment variable because the application listens on port 9000. The ENV statement is followed by the name of the environment variable and its value.
ENV PORT=9000

# Expose the port that the application listens on. The EXPOSE statement is followed by the port number.
EXPOSE 9000

# Finally, run the npm start command to start the application. The CMD statement is followed by the command to run.
# Use the CMD to statement instead of the RUN statement to run the application because the CMD statement is used to run the application when the container starts.
CMD ["npm", "start"] 

# Note: if use the run command for the above state, the container will not start the application. The container will start and exit immediately.

# Now lets build the docker image using the below command
# docker build -t node-app .

# Now lets run the docker container using the below command. The -p flag is used to map the port 9000 in the container to port 9000 on the host machine.
# docker run -p 9000:9000 node-app

