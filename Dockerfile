FROM python:3.7.0-slim

WORKDIR /app

RUN pip install poetry

ADD ./ /app

RUN poetry install
RUN poetry run ./manage.py migrate

EXPOSE 8000
