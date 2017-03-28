FROM ubuntu:xenial

MAINTAINER Federico Feroldi

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get dist-upgrade -y

RUN apt-get -y dist-upgrade
RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common
RUN apt-get install -y unzip

RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install oracle-java8-installer -y
RUN apt-get install oracle-java8-set-default -y
