# MLflow Image
The [MLflow](https://www.mlflow.org/docs/latest/index.html) Docker image.

The Docker image is built from the slim version of the [official Python Docker image](https://hub.docker.com/_/python),
which uses [Debian Bullseye](https://www.debian.org/releases/bullseye/).
It is built for multiple platforms:\
linux/amd64, linux/arm64/v8

## Tagging Policy
Tags have this format: `<MLflow_version>-r<image_revison_number_counting_from_1>-<base_image_name>`\
Example: `1.27.0-r1-slim-bullseye`
