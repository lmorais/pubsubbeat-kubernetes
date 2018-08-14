FROM ubuntu

RUN apt-get update
RUN apt-get install curl -y

ADD ./pubsubbeat /opt/pubsubbeat
WORKDIR /opt/pubsubbeat

ENTRYPOINT ./pubsubbeat -c pubsubbeat.yml -e -d "*"
