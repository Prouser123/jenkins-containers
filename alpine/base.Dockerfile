FROM alpine:latest

RUN sed -i 's/http:\/\/dl-cdn.alpinelinux.org/https:\/\/alpine-cf-cdn.jcx.ovh/' /etc/apk/repositories && apk add git curl
