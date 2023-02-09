FROM python:3.11.2-slim-bullseye

COPY requirements.txt requirements.txt 

RUN set -eux; \
    apt-get update; \
    apt-get upgrade -y; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        gcc \
    	libpq-dev \
        default-libmysqlclient-dev; \
    pip install --upgrade pip --no-cache-dir --root-user-action=ignore; \ 
    pip install -r requirements.txt --no-cache-dir --root-user-action=ignore \
