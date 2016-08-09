FROM ubuntu:trusty

MAINTAINER cmoon@kenzan.com

RUN apt-get update

RUN apt install -y curl

RUN apt install -y socat

RUN curl -sSL https://get.docker.com/ | sh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]