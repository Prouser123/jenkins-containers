FROM alpine:latest

# Use Cloudflare's Caching CDN instead of the default insecure servers.
RUN echo -e "https://alpine-cf-cdn.jcx.ovh/alpine/v3.11/main\nhttps://alpine-cf-cdn.jcx.ovh/alpine/v3.11/community" > /etc/apk/repositories

RUN apk add git curl
