FROM python:3.11.2-slim-bullseye

COPY requirements.txt .

RUN set -eux; \
    \
    apt-get update; \
    apt-get upgrade -y; apt-get install -y --no-install-recommends \
        gcc \
    	libpq-dev \
        default-libmysqlclient-dev; \
    pip install --root-user-action=ignore --no-cache-dir --upgrade pip; \ 
    pip install --root-user-action=ignore --no-cache-dir -r requirements.txt \
    ; \
