FROM python:3.11.1-slim-bullseye

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    libpq-dev && \
    /bin/sh install-pyrequirements.sh
