FROM python:3.11.2-slim-bullseye

COPY requirements.txt requirements.txt 

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        apt-utils \
        gcc \
    	libpq-dev \
        default-libmysqlclient-dev; \
    pip install --upgrade pip --no-cache-dir --root-user-action=ignore; \ 
    pip install -r requirements.txt --no-cache-dir --root-user-action=ignore \
