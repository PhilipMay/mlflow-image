# MLflow Docker Image

[![Docker images](https://img.shields.io/badge/Docker-image-blue)](https://github.com/PhilipMay/mlflow-image/pkgs/container/mlflow-image)
[![MIT License](https://img.shields.io/github/license/PhilipMay/mlflow-image)](https://github.com/PhilipMay/mlflow-image/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/PhilipMay/mlflow-image/blob/main/CODE_OF_CONDUCT.md)
[![GitHub issues](https://img.shields.io/github/issues-raw/PhilipMay/mlflow-image)](https://github.com/PhilipMay/mlflow-image/issues)\
[![Docker build Debian image](https://github.com/PhilipMay/mlflow-image/actions/workflows/docker-build-debian.yml/badge.svg)](https://github.com/PhilipMay/mlflow-image/actions/workflows/docker-build-debian.yml)
[![trivy](https://github.com/PhilipMay/mlflow-image/actions/workflows/trivy.yml/badge.svg)](https://github.com/PhilipMay/mlflow-image/actions/workflows/trivy.yml)

The [MLflow](https://www.mlflow.org/docs/latest/index.html) Docker image.

The Docker image is built from the slim version of the [official Python Docker image](https://hub.docker.com/_/python),
which uses [Debian Bullseye](https://www.debian.org/releases/bullseye/).\
It is built for multiple platforms: linux/amd64, linux/arm64/v8

The Docker image, can be accessed using:\
`ghcr.io/philipmay/mlflow-image:<MLflow_version>-r<image_revison_number>` or\
`ghcr.io/philipmay/mlflow-image:latest`

The latest versions are visible in
[mlflow-image GitHub packages](https://github.com/PhilipMay/mlflow-image/pkgs/container/mlflow-image).

## Versioning and Tagging Policy
Versions and Docker Image tags have this format: `<MLflow_version>-r<image_revison_number>`\
Example: `1.27.0-r1`

## Changelog
All notable changes to this project will be documented in this section.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/).

### Unreleased Version
no unpublished changes

### Version `2.1.1-r1` at 2022-12-27

#### Changes
- update base docker image to `python:3.10.9-slim-bullseye`
- update to MLflow version 2.1.1

#### Links
- [GitHub release](https://github.com/PhilipMay/mlflow-image/releases/tag/2.1.1-r1)
- [Docker Image](https://github.com/PhilipMay/mlflow-image/pkgs/container/mlflow-image/60688586?tag=2.1.1-r1)
- Docker Image name: `ghcr.io/philipmay/mlflow-image:2.1.1-r1`

## Licensing

Copyright (c) 2022 Philip May

Licensed under the **MIT License** (the "License"); you may not use this file except in compliance with the License.
You may obtain a copy of the License by reviewing the file
[LICENSE](https://github.com/PhilipMay/mlflow-image/blob/main/LICENSE) in the repository.
