FROM python:3.9-alpine3.16
LABEL org.opencontainers.image.authors="joeho7576@gmail.com"

ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /project
WORKDIR /project
COPY ./project /project

RUN adduser -D user
USER user