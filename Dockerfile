FROM alpine:latest
LABEL email="jason.granzow@gmail.com"

RUN apk --update --no-cache upgrade \
	&& apk --no-cache add squid

EXPOSE 3128/tcp
CMD rm -f /var/run/squid.pid; squid -f /etc/squid/squid.conf -NYCd 1
