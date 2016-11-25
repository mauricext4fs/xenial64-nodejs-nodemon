FROM ubuntu:xenial
MAINTAINER Maurice Courtois <courtoisninja@gmail.com>

# Install required dependency
RUN apt-get update -y
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
#RUN apt-get update -y && apt-get upgrade -y
RUN apt-get update -y
RUN apt-get install -y g++
RUN apt-get install -y ruby ruby-dev
RUN apt-get install -y npm
RUN apt-get install -y nodejs
#RUN apt-get install -y tcl
RUN ln -s `which nodejs` /usr/bin/node

# Nodejs module and speciality
RUN npm install -g nodemon

# Adding nodejs stuff
#RUN mkdir /opt/micn
#COPY app /opt/micn/app
#COPY package.json /opt/micn/
CMD cd /opt/micn && npm install && cd /opt/micn/app && DEBUG=* nodemon -L index.js
#CMD cd /opt/micn/app && DEBUG=* nodemon index.js
