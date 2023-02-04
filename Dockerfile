FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

RUN apt-get update && \
    apt autoremove -y git && \
    apt autoremove -y curl && \
    apt autoremove -y libcurl4 && \
    apt autoremove -y libaom0 && \
    apt autoremove -y libbluetooth-dev && \
    apt autoremove -y imagemagick-6.q16 && \
    /bin/sh install-pyrequirements.sh
