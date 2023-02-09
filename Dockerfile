FROM python:3.11.2-slim-bullseye

COPY requirements.txt /app/python/requirements.txt

RUN set -eux; \
    python -m pip install --no-cache-dir -r /app/python/requirements.txt
