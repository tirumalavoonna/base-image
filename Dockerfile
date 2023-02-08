FROM python:3.11.1-slim-bullseye

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .

RUN apt-get update && \
    apt-get install -y libmariadb-dev && \
    apt-get install libmysqlclient-dev && \
    /bin/sh install-pyrequirements.sh
#     apt-get update && \
#     apt remove -y openssh-client && \
#     apt autoremove -y git && \
#     apt autoremove -y curl && \
#     apt autoremove -y libcurl4 && \
#     apt autoremove -y libbluetooth-dev && \
#     apt autoremove -y perl && \
#     apt autoremove -y e2fsprogs --allow-remove-essential && \
#     apt autoremove -y libaom0 && \
#     apt autoremove -y libxml2 && \
#     apt autoremove -y ncurses-bin --allow-remove-essential && \
#     apt remove -y libncurses6 && \
