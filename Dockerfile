FROM python:3.11.1-slim-bullseye

COPY requirements.txt /app/python/requirements.txt

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    libpq-dev && \
    python -m pip install --upgrade pip && \
    python -m pip install --no-cache-dir -r /app/python/requirements.txt
