FROM python:3.12.0a4-slim-buster as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt remove -y curl && \ 
    /bin/sh install-pyrequirements.sh
