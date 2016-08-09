FROM ubuntu:trusty

MAINTAINER cmoon@kenzan.com

RUN apt-get update

RUN apt install -y curl

RUN apt install -y socat

RUN curl -sSL https://get.docker.com/ | sh

CMD ["socat -d TCP-LISTEN:2376,range=127.0.0.1/32,reuseaddr,fork UNIX:/var/run/docker.sock"]