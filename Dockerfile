FROM python:3.8.5

RUN mkdir /code
WORKDIR /code
COPY ./ .
RUN pip install -r requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
ENTRYPOINT ["sh", "/code/entrypoint.sh"]

#========entrypoint.sh=================
##!/bin/sh
#
#python manage.py migrate --no-input
#python manage.py collectstatic --no-input
#python manage.py loaddata fixtures.json
#=======================================
