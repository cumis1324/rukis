# Use an appropriate base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Update and install necessary packages
RUN apt-get update && apt-get install -y curl bash

# Download and install x-ui
RUN curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh -o install.sh && \
    bash install.sh && \
    rm install.sh

# Ensure x-ui starts without systemctl
CMD [ "/usr/local/x-ui/x-ui", "start" ]

# Expose the required port
EXPOSE 2053
