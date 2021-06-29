FROM google/cloud-sdk:latest

# Install nodej and required dependencies
RUN apt-get update \
  && apt-get -y install gcc g++ make build-essential default-jdk \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get -y install nodejs

# Install firebase tools
RUN npm install -g firebase-tools@9.14.0 --unsafe
