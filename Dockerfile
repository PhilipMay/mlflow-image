FROM python:3.9.9-slim-bullseye

# we might want to use the non binary psycopg2 package later
# see https://www.psycopg.org/docs/install.html#psycopg-vs-psycopg-binary
RUN apt-get update && \
    apt-get -y install libpq-dev gcc && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mlflow==1.22.0 psycopg2 boto3

EXPOSE 5000

WORKDIR /app
USER 1001
CMD ["mlflow","server","-h","0.0.0.0"]
