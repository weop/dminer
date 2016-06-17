FROM ubuntu:16.04
MAINTAINER weop@noreply.github.com

ENV DEBIAN_FRONTEND noninteractive

## Install dependencies
RUN apt update && apt install -y build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev git htop

RUN apt-get autoremove -y \
    && apt-get autoclean \
    && apt-get clean

WORKDIR /root

RUN git clone https://github.com/wolf9466/cpuminer-multi

RUN cd /root/cpuminer-multi/ && \
	./autogen.sh && \
	CFLAGS="-march=native" ./configure && \
	make && \
	make install

COPY entry.sh /
RUN chmod +x /entry.sh

WORKDIR /root

ENTRYPOINT ["/entry.sh"]
