FROM python:3.11.1-slim-bullseye as base
FROM base as builder

COPY requirements.txt /app/python/requirements.txt
COPY install-pyrequirements.sh .
RUN #apt-get update && \
    #apt-get upgrade -y && \
    #apt-get install -y libmariadb-dev && \
    #apt-get install -y libpq-dev && \
    #apt autoremove -y git-man && \
    #apt autoremove -y curl && \
    #apt autoremove -y libcurl4 && \
    #apt remove -y libtiff-dev && \
    /bin/sh install-pyrequirements.sh
