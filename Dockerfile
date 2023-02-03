FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt remove -y curl && \
    /bin/sh install-pyrequirements.sh
