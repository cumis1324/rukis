# Use an appropriate base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Update and install necessary packages
RUN apt-get update && apt-get install -y curl bash

RUN curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh

# Install x-ui
RUN bash install.sh

# Set the command to start x-ui
CMD [ "/bin/bash", "-c", "x-ui start" ]

# Expose the required port
EXPOSE 2053
