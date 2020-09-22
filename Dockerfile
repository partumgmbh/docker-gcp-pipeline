FROM google/cloud-sdk:latest

# Install nodejs
RUN apt-get update \
  && apt-get -y install gcc g++ make \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get -y install nodejs

# Install firebase tools
RUN npm install -g firebase-tools@8.10.0
