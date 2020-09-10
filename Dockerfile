FROM python:3.8-slim-buster

LABEL  maintainer "nukopy <pytwbf201830@gmail.com>"

WORKDIR /app

RUN set -ex && apt-get update \
    && pip install -U --no-cache-dir poetry \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# install Python packages
COPY poetry.lock pyproject.toml ./
RUN poetry config virtualenvs.create false \
    # && poetry install --no-dev
    && poetry install

COPY src src
ENV PYTHONPATH "/app/src"