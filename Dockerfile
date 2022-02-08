FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache git
ENTRYPOINT ["/entrypoint.sh"]
