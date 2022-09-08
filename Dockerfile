# Get a ubuntu image
FROM ubuntu

# Update package databases
RUN apt-get update

# Install ssh client
RUN apt install -y openssh-client

# Test the connection
RUN ssh -T git@github.com