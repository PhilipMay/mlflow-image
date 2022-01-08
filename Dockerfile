FROM python:3.9.9-slim-bullseye

# we might want to use the non binary psycopg2 package later
# see https://www.psycopg.org/docs/install.html#psycopg-vs-psycopg-binary
RUN apt-get update && \
    apt-get -y install libpq-dev gcc && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mlflow psycopg2 boto3

ARG unprivileged_user=mlflow

RUN useradd ${unprivileged_user} --shell /bin/bash --create-home

USER ${unprivileged_user}

WORKDIR /home/${unprivileged_user}

EXPOSE 5000

CMD ["mlflow","server","-h","0.0.0.0"]
