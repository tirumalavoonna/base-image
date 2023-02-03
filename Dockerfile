FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt

RUN python3 -m venv venv && \
    venv\bin\activate.bat && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir cython && \
    python3 -m pip install --no-cache-dir -r /app/python/requirements.txt
