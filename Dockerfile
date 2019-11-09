# Instructions copied from - https://hub.docker.com/_/python/
# FROM python:3-onbuild

# tell the port number the container should expose
# EXPOSE 5000

# run the command
# CMD ["python", "./app.py"]

FROM python:3.6.8-alpine

LABEL image for a very simple flask application

WORKDIR /flask-app

COPY . .

RUN ["pip3", "install", "pipenv"]

RUN ["pipenv", "install"]

CMD pipenv run python app.py