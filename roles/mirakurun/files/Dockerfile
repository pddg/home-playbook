FROM node:14-buster-slim
LABEL maintainer "pddg"
EXPOSE 40772
ENV DOCKER="YES"

RUN apt-get update && \
    apt-get -y install \
        pcscd libpcsclite1 libccid pcsc-tools && \
    apt-get -y install \
        libpcsclite-dev \
        build-essential \
        curl \
        libssl-dev \
        yasm \
        libtool \
        autoconf \
        pkg-config \
        gcc \
        git \
        g++ \
        make \
        automake && \
    git clone https://github.com/stz2012/recpt1 /tmp/recpt1 && \
    cd /tmp/recpt1/recpt1 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    npm install pm2 -g && \
    npm install arib-b25-stream-test -g --unsafe && \
    npm install mirakurun -g --unsafe --production && \
    apt-get -y remove \
        libpcsclite-dev \
        build-essential \
        curl \
        libssl-dev \
        yasm \
        libtool \
        autoconf \
        pkg-config \
        gcc \
        git \
        g++ \
        make \
        automake && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/recpt1

WORKDIR /usr/local/lib/node_modules/mirakurun

ENTRYPOINT /etc/init.d/pcscd start && \
    npm start
