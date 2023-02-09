FROM python:3.11.2-slim-bullseye

COPY requirements.txt /app/python/requirements.txt

RUN set -eux; \
    \
	savedAptMark="$(apt-mark showmanual)"; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        default-libmysqlclient-dev \
    ; \    
    python -m pip install --no-cache-dir -r /app/python/requirements.txt
