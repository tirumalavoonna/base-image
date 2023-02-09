FROM 3.12.0a5-bullseye

COPY requirements.txt .

RUN set -eux; \
    \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        gcc \
    	libpq-dev \
        default-libmysqlclient-dev; \
    apt-get upgrade -y; \
    pip install --root-user-action=ignore --no-cache-dir --upgrade pip; \ 
    pip install --root-user-action=ignore --no-cache-dir -r requirements.txt \
    ; \
