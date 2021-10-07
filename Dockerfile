FROM ubuntu:20.04

ARG v=3.21.2

RUN apt-get -y update && apt-get -y install --no-install-recommends \
      build-essential ca-certificates wget && \
    wget -q https://cmake.org/files/v${v%.*}/cmake-${v}-Linux-x86_64.tar.gz && \
    tar xf cmake-${v}-Linux-x86_64.tar.gz && \
    cp -rf cmake-${v}-Linux-x86_64/bin /usr/ && \
    cp -rf cmake-${v}-Linux-x86_64/share /usr/ && \
    rm -rf cmake-${v}-Linux-x86_64.tar.gz cmake-${v}-Linux-x86_64
