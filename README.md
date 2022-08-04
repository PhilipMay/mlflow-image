# MLflow Image

[![MIT License](https://img.shields.io/github/license/PhilipMay/mlflow-image)](https://github.com/PhilipMay/mlflow-image/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues-raw/PhilipMay/mlflow-image)](https://github.com/PhilipMay/mlflow-image/issues)
[![Docker build Debian image](https://github.com/PhilipMay/mlflow-image/actions/workflows/docker-build-debian.yml/badge.svg)](https://github.com/PhilipMay/mlflow-image/actions/workflows/docker-build-debian.yml)
[![trivy](https://github.com/PhilipMay/mlflow-image/actions/workflows/trivy.yml/badge.svg)](https://github.com/PhilipMay/mlflow-image/actions/workflows/trivy.yml)

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

## Licensing

Copyright (c) 2022 Philip May

Licensed under the **MIT License** (the "License"); you may not use this file except in compliance with the License.
You may obtain a copy of the License by reviewing the file
[LICENSE](https://github.com/PhilipMay/mlflow-image/blob/main/LICENSE) in the repository.
