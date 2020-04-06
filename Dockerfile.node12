# Based on https://github.com/mhart/alpine-node/blob/12.16.1/slim.dockerfile

FROM node:12-alpine

FROM jcxldn/jenkins-containers:base

COPY --from=0 /usr/local/ /usr/
COPY --from=0 /opt/ /opt/

# Nodejs is built in /usr/local, but we are moving it to /usr for ease of use.
# Yarn is installed to /opt/yarn-{version}

RUN apk upgrade --no-cache -U && \
  apk add --no-cache binutils libstdc++ && \
  apk del binutils && \
  node -v && npm -v && npx -v && yarn -v && yarnpkg -v