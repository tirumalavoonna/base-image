FROM python:3.12.0-slim-bookworm

COPY requirements.txt requirements.txt 

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        gcc \
        libpq-dev \
        default-libmysqlclient-dev; \
    pip install --upgrade pip --no-cache-dir; \ 
    pip install -r requirements.txt --no-cache-dir \
