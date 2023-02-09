FROM python:3.11.2-slim-bullseye

COPY requirements.txt /app/python/requirements.txt

RUN set -eux; \
    \
    savedAptMark="$(apt-mark showmanual)"; \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
    	libpq-dev \
        default-libmysqlclient-dev \
    ; \    
    python -m pip install --no-cache-dir -r /app/python/requirements.txt
