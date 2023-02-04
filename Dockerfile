FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt remove -y git && \
    apt remove -y git-man && \
    apt remove -y curl && \
    apt remove -y libcurl3 && \
    apt remove -y libcurl4 && \
    apt autoremove -y && \
    /bin/sh install-pyrequirements.sh
