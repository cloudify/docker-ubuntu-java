FROM ubuntu:trusty

MAINTAINER Federico Feroldi

RUN apt-get install -y unzip

RUN apt-get install -q -y software-properties-common
RUN apt-get install -q -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install oracle-java7-installer -y
ADD ./UnlimitedJCEPolicyJDK7.zip /tmp/UnlimitedJCEPolicyJDK7.zip
RUN cd /tmp && unzip UnlimitedJCEPolicyJDK7.zip
RUN mv /tmp/UnlimitedJCEPolicy/*.jar /usr/lib/jvm/java-7-oracle/jre/lib/security/
RUN rm -rf /tmp/UnlimitedJCEPolicy*
