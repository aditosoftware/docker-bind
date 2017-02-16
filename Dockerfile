FROM alpine:3.5

RUN apk add --no-cache bind

EXPOSE 53 53/udp
VOLUME /etc/bind
WORKDIR /etc/bind

CMD named -4 -g