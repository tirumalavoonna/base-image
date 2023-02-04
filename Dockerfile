FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install git && \
    apt autoremove -y curl && \
    apt autoremove -y libcurl4 && \
    /bin/sh install-pyrequirements.sh
