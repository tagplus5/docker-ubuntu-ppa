FROM ubuntu:latest

WORKDIR /app

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends locales git wget ca-certificates \
    apt-utils dpkg-dev openssh-client && \
    locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
