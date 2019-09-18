FROM python:3.7
MAINTAINER jbranco@localhost
EXPOSE 8000

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt
COPY . .

VOLUME ["/usr/src/app"]

ENTRYPOINT "django_dev_server.sh"