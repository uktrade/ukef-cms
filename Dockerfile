FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
ADD requirements/dev.txt /code/requirements/dev.txt
WORKDIR /code/
RUN pip install -r requirements/dev.txt
WORKDIR /code/ukef_finance/
ADD . /code/
