FROM python:3.8.5

RUN mkdir /code
WORKDIR /code
COPY ./ .
RUN pip install -r requirements.txt
ENTRYPOINT ["sh", "./entrypoint.sh"]



