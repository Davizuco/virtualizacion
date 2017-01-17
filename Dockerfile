FROM ubuntu:latest
MAINTAINER David<dmg895@alumnos.unican.es>
RUN apt-get update && apt-get install -y ruby ruby-dev
RUN gem install sinatra
