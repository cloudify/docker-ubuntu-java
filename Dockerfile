FROM ubuntu:trusty

MAINTAINER Federico Feroldi

RUN apt-get install -y unzip

RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN apt-get install oracle-java7-installer -y
RUN apt-get install oracle-java7-set-default -y
