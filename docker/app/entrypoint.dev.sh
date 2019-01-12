#!/bin/bash

poetry config settings.virtualenvs.path ./local/app
poetry install
poetry run ./manage.py migrate

exec "$@"