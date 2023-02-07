FROM python:3.11.1 as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

RUN apt-get update && \
    apt-get autoremove -y imagemagick && \
    apt-get autoremove -y libmagickcore-dev && \
    apt-get autoremove -y libmagickwand-dev && \
    apt remove -y openssh-client && \
    apt autoremove -y git && \
    apt autoremove -y curl && \
    apt autoremove -y libcurl4 && \
    apt autoremove -y libaom0 && \
    apt autoremove -y libbluetooth-dev && \
    apt autoremove -y perl && \
    apt autoremove -y e2fsprogs --allow-remove-essential && \
    apt autoremove -y libmagic1 && \
    /bin/sh install-pyrequirements.sh
