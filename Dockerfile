FROM python:3.11.1-slim-bullseye as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt remove -y curl && \ 
    apt remove -y glibc && \
    /bin/sh install-pyrequirements.sh
