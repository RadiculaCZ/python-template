ARG VARIANT="3.11-bullseye"

FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}

ENV POETRY_HOME="/opt/poetry" \
    POETRY_VERSION=1.3.0

ENV PATH="$POETRY_HOME/bin:$PATH"

WORKDIR /workspaces/pdf-page-counter

RUN curl -sSL https://install.python-poetry.org | python3 -
RUN poetry config virtualenvs.create false

COPY ./Dockerfile ../pyproject.toml* ../poetry.lock* ./
