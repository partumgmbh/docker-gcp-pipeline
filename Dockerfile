FROM google/cloud-sdk:latest

# Install nodej and required dependencies
RUN apt-get update \
  && apt-get -y install gcc g++ make build-essential default-jdk \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
  && apt-get -y install nodejs

# Install firebase tools
RUN npm install -g firebase-tools@10.5.0 --unsafe
