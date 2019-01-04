FROM python:3.7.0-slim

WORKDIR /app

RUN pip install poetry

ADD ./ /app

RUN poetry install
RUN poetry run ./manage.py migrate

EXPOSE 8000

ENTRYPOINT ["poetry", "run", "./manage.py", "runserver", "127.0.0.1:8000"]