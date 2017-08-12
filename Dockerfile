FROM alpine:latest

RUN apk update && apk add docker

RUN rm -fr /var/cache/apk/*

RUN mkdir /tmp/source

ADD mapper.sh /usr/local/bin/mapper.sh

VOLUME /var/run/docker.sock

VOLUME /tmp/source 
 
ENTRYPOINT ["/usr/local/bin/mapper.sh"]
