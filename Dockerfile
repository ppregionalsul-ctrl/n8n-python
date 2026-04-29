FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
    build-essential \
    curl \
    git \
    ca-certificates \
    && apt-get clean

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip3 install --no-cache-dir \
    pandas \
    requests \
    numpy \
    psycopg2-binary \
    openpyxl

USER node
