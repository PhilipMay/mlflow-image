FROM python:3.10.4-slim-bullseye

LABEL maintainer="Philip May <eniak.info@gmail.com>"

RUN apt-get update && \
    apt-get -y install libpq-dev gcc && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    mlflow==1.26.0 \
    psycopg2==2.9.3 \
    boto3==1.23.0 \
    && apt-get purge -y --auto-remove gcc && \
    apt-get clean && \
    useradd --shell /bin/bash mlflow \
    mkdir -p /app/mlruns && \
    chown -R mlflow:mlflow /app

EXPOSE 5000

WORKDIR /app
USER mlflow
CMD ["mlflow","server","-h","0.0.0.0"]
