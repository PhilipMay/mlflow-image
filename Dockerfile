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
    useradd --shell /bin/bash --uid 1001 --gid 1001 mlflow \
    mkdir -p /app/mlruns && \
    chown -R 1001:1001 /app

EXPOSE 5000

WORKDIR /app
USER 1001:1001
CMD ["mlflow","server","-h","0.0.0.0"]
