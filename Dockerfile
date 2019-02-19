FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements/dev.txt /code/requirements/dev.txt
RUN pip install -r requirements/dev.txt
ADD . /code/
