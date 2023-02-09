FROM python:3.11.2-slim-bullseye

COPY requirements.txt /app/python/requirements.txt

RUN set -eux; \
    \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        gcc \
    	libpq-dev \
        default-libmysqlclient-dev \
    ; \
    \
    python --no-cache-dir \
            --no-compile \
            pip install --upgrade pip \
            pip install  -r /app/python/requirements.txt \
    ; \
