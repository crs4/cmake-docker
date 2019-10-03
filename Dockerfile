FROM ubuntu:18.04

ADD https://cmake.org/files/v3.14/cmake-3.14.5-Linux-x86_64.tar.gz /

RUN apt-get -y update && apt-get -y install --no-install-recommends \
      build-essential

RUN tar xf cmake-3.14.5-Linux-x86_64.tar.gz && \
    cp -rf cmake-3.14.5-Linux-x86_64/bin /usr/ && \
    cp -rf cmake-3.14.5-Linux-x86_64/share /usr/ && \
    rm -rf cmake-3.14.5-Linux-x86_64.tar.gz cmake-3.14.5-Linux-x86_64
