FROM alpine:3.16

RUN apk add --no-cache \
      sysbench \
      ncurses

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
