# https://hub.docker.com/_/python
FROM python:3.10.13-slim-bookworm

LABEL maintainer="Philip May <philip@may.la>"

RUN apt-get update && \
    apt-get -y install libpq-dev gcc && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    mlflow==2.10.0 \
    psycopg2 \
    boto3 \
    && apt-get purge -y --auto-remove gcc && \
    apt-get clean && \
    # see https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
    groupadd -r mlflow && useradd --no-log-init -r -g mlflow mlflow && \
    mkdir -p /app/mlruns && \
    chown -R mlflow:mlflow /app && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
USER mlflow:mlflow
EXPOSE 5000
CMD ["mlflow","server","-h","0.0.0.0"]
