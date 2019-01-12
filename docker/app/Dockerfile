FROM python:3.7.0

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN set -ex && \
    apt-get -y update && \
    apt-get install -y \
    mysql-client \
    default-libmysqlclient-dev

WORKDIR /app

RUN pip install poetry==0.12.10

ADD . /app

EXPOSE 8000
