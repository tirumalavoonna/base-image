FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN /bin/sh install-pyrequirements.sh && \
    apt-get update && \
    apt remove -y curl
