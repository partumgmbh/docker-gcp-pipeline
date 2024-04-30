FROM google/cloud-sdk:latest AS base

# Install nodejs and required dependencies
FROM base AS nodejs
RUN apt-get update \
  && apt-get -y install gcc g++ make build-essential default-jdk \
  && curl -sL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get -y install nodejs
RUN echo "nodejs version $(node --version)"

# Install firebase tools
FROM nodejs AS firebase
RUN npm install -g firebase-tools@13.7.5 --unsafe
RUN echo "firebase version $(firebase --version)"
