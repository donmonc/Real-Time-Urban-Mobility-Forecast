# syntax=docker/dockerfile:1

# Use an official Python runtime as a parent image
FROM python:3.11.4-slim as base

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    POETRY_VERSION=1.8.2

# Set the working directory in the container
WORKDIR /app


# Install system dependencies
RUN apt-get update && apt-get install -y curl build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -


# Ensure Poetry is in PATH, not necessary if the environment variables are set
ENV PATH="${PATH}:/root/.local/bin"

# Copy only the necessary files to install dependencies
# This includes poetry.lock* in case it doesn't exist yet
COPY pyproject.toml poetry.lock /app/

# Disable virtualenv creation by poetry and install dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Copy the source code into the container
COPY . /app

# Expose the port that the application listens on
EXPOSE 8000

# Run the application using Poetry
CMD ["poetry", "run", "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
