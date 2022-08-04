# MLflow Image
The [MLflow](https://www.mlflow.org/docs/latest/index.html) Docker image.

The Docker image is built from the slim version of the [official Python Docker image](https://hub.docker.com/_/python),
which uses [Debian Bullseye](https://www.debian.org/releases/bullseye/).\
It is built for multiple platforms: linux/amd64, linux/arm64/v8

The Docker image, can be accessed using:\
`ghcr.io/philipmay/mlflow-image:<MLflow_version>-r<image_revison_number_counting_from_1>-slim-bullseye` or\
`ghcr.io/philipmay/mlflow-image:latest`

The latest versions are visible in
[mlflow-image GitHub packages](https://github.com/PhilipMay/mlflow-image/pkgs/container/mlflow-image).

## Tagging Policy
Tags have this format: `<MLflow_version>-r<image_revison_number_counting_from_1>-<base_image_name>`\
Example: `1.27.0-r1-slim-bullseye`
