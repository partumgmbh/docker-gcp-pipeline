FROM google/cloud-sdk:latest

# Install nodej and required dependencies
RUN apt-get update \
  && apt-get -y install gcc g++ make build-essential \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get -y --allow-downgrades install nodejs=12.21.0-1nodesource1

# Install firebase tools
RUN npm install -g firebase-tools@9.5.0 --unsafe
