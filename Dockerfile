FROM deeplabcut/deeplabcut:latest-core

RUN apt-get update
RUN apt-get install -y build-essential wget vim

ENV APP_ROOT /app
WORKDIR $APP_ROOT

ADD . $APP_ROOT
