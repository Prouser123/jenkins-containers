# Taken from https://github.com/carlossg/docker-maven/blob/26ba49149787c85b9c51222b47c00879b2a0afde/adoptopenjdk-11-openj9/Dockerfile

FROM adoptopenjdk:11-jdk-hotspot

# Use a HTTPS deb mirror.
RUN apt-get update && apt-get install -y ca-certificates && \
    sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/ubuntu-cf-cdn.jcx.ovh/' /etc/apt/sources.list && \
    sed -i 's/http:\/\/ports.ubuntu.com/https:\/\/ubuntu-ports-cf-cdn.jcx.ovh/' /etc/apt/sources.list

# Install Maven

ARG MAVEN_VERSION=3.6.3
ARG USER_HOME_DIR="/root"
ARG SHA=c35a1803a6e70a126e80b2b3ae33eed961f83ed74d18fcd16909b2d44d7dada3203f1ffe726c17ef8dcca2dcaa9fca676987befeadc9b9f759967a8cb77181c0
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN apt-get update && \
    apt-get install -y \
      curl procps \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn \
  && java --version && mvn --version

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

WORKDIR /workspace