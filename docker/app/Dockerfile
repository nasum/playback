FROM python:3.7.2-slim

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN set -ex && \
    apt-get -y update && \
    apt-get install -y \
    curl \
    build-essential \
    mysql-client \
    default-libmysqlclient-dev

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y nodejs

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install yarn


WORKDIR /app

RUN pip install poetry==0.12.11
RUN yarn global add @vue/cli@3.4.0

ADD . /app

EXPOSE 8000
