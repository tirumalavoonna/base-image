FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt autoremove -y git-man && \
    /bin/sh install-pyrequirements.sh
