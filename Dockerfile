FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN apt-get update && \
    apt-get upgrade -y && \
    apt autoremove -y git-man && \
    apt autoremove -y curl && \
    apt autoremove -y libcurl4 && \
    apt-get remove --auto-remove libtiff-tools && \
    /bin/sh install-pyrequirements.sh
