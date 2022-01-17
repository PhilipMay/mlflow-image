FROM python:3.10.1-slim-bullseye

RUN apt-get update && \
    apt-get -y install libpq-dev gcc && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mlflow==1.23.0 psycopg2 boto3 && \
    apt-get purge -y --auto-remove gcc && \
    apt-get clean && \
    mkdir -p /app/mlruns && \
    chown -R 1001:1001 /app

EXPOSE 5000

WORKDIR /app
USER 1001:1001
CMD ["mlflow","server","-h","0.0.0.0"]
