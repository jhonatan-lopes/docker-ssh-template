# Get a ubuntu image
FROM ubuntu

# Update package databases
RUN apt-get update

# Install ssh client
RUN apt install -y openssh-client

# Download public key for github.com
RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Test the connection
RUN --mount=type=ssh ssh -T git@github.com