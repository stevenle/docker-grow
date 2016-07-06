FROM ubuntu:16.04

ENV GROW_VERSION 0.0.63
ENV GROW_SDK_URL https://github.com/grow/grow/releases/download/$GROW_VERSION/Grow-SDK-Linux-$GROW_VERSION.zip
ENV GROW_PATH /var/grow

RUN apt-get update \
  && apt-get install -y \
      ca-certificates \
      openssl \
      wget \
      unzip \
  && wget -O /tmp/grow.zip https://github.com/grow/grow/releases/download/$GROW_VERSION/Grow-SDK-Linux-$GROW_VERSION.zip \
  && unzip /tmp/grow.zip -d /usr/local/bin

WORKDIR /var/grow
ENTRYPOINT ["/usr/local/bin/grow"]
