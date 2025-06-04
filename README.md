# GCP Pipeleine Docker

Docker image that can be used for build/release pipelines of Google Cloud Platform. The image is built on top of the base [`google/cloud-sdk:latest`](https://hub.docker.com/r/google/cloud-sdk/) image and contains the following:

- Everything from [`google/cloud-sdk:latest`](https://hub.docker.com/r/google/cloud-sdk/)
- [Node.js](https://nodejs.org/en) v20 installed and configured
- [Firebase CLI](https://firebase.google.com/docs/cli) v14.5.1

# Usage

```dockerfile
FROM partumgmbh/gcp-pipeline

# Setup `gcloud` using the preset service account file contents from `GCLOUD_SERVICE_KEY_FILE`
# Make sure to give the right access to the service account file based on the deployment needs
RUN gcloud auth activate-service-account --key-file $GCLOUD_SERVICE_KEY_FILE

# Setup token for enabling firebase deployments
RUN export GOOGLE_APPLICATION_CREDENTIALS="$GCLOUD_SERVICE_KEY_FILE"

# Run any `gcloud` or `firebase` related commands
# Additionally you can run any `node` or `npm` commands
```
