# Pull base image
FROM python:3.7-slim

# Set enviroment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code_project

# Install dependencies
COPY Pipfile Pipfile.lock /code_project/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /code_project/
