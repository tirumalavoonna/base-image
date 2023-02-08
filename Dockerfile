FROM python:3.11.1 as base-image
FROM base-image as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

# RUN apt-get update && \
RUN apt remove -y openssh-client && \
    apt autoremove -y git && \
    apt autoremove -y curl && \
    apt autoremove -y libcurl4 && \
    apt autoremove -y libbluetooth-dev && \
    apt autoremove -y perl && \
    apt autoremove -y e2fsprogs --allow-remove-essential && \
    apt autoremove -y libaom0 && \
    apt autoremove -y libxml2 && \
    apt autoremove -y ncurses-bin --allow-remove-essential && \
    apt autoremove -y libncursesw6 && \
    apt autoremove -y libtinfo6 --allow-remove-essential && \
    apt autoremove -y libdb5.3 --allow-remove-essential && \
    /bin/sh install-pyrequirements.sh
