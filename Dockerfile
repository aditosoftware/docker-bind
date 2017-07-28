FROM alpine:3.6

RUN apk add --no-cache bind

EXPOSE 53 53/udp
VOLUME /etc/bind
WORKDIR /etc/bind


ADD ./start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh