# You should always specify a full version here to ensure all of your developers
# are running the same version of Node.
FROM node:latest

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

# Copy all local files into the image.
#COPY . .

# Build for production.
RUN npm install -g dat
#run build --production

# Install `serve` to run the application.
RUN npm install -g dat-store
# -g serve

# Set the command to start the node server.
CMD dat-store --storage-location /dat --config-location /dat-config run-service

# Tell Docker about the port we'll run on.
EXPOSE 3472
