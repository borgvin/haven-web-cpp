FROM ubuntu:20.04

WORKDIR /tmp

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt-get install -y \
        build-essential \
        cmake pkg-config \
        libssl-dev \
        libzmq3-dev \
        libsodium-dev \
        libunwind8-dev \
        liblzma-dev \
        libreadline6-dev \
        libpgm-dev \
        qttools5-dev-tools \
        libhidapi-dev \
        libusb-1.0-0-dev \
        libprotobuf-dev \
        protobuf-compiler \
        libudev-dev \
        libboost-chrono-dev \
        libboost-date-time-dev \
        libboost-filesystem-dev \
        libboost-locale-dev \
        libboost-program-options-dev \
        libboost-regex-dev \
        libboost-serialization-dev \
        libboost-system-dev \
        libboost-thread-dev \
        python3 \
        ccache \
        libexpat1-dev \
        bison \
        flex \
        wget \
        git

RUN wget https://github.com/libexpat/libexpat/releases/download/R_2_4_8/expat-2.4.8.tar.bz2 \
    && tar -xf expat-2.4.8.tar.bz2 \
    && rm expat-2.4.8.tar.bz2 \
    && cd expat-2.4.8 \
    && ./configure --enable-static --disable-shared \
    && make \
    && make install

RUN wget https://www.nlnetlabs.nl/downloads/unbound/unbound-1.17.0.tar.gz \
    && tar xzf unbound-1.17.0.tar.gz \
    && cd unbound-1.17.0 \
    && ./configure --with-libexpat=/usr --with-ssl=/usr \
    && make \
    && make install


COPY . .

#RUN ./bin/build_libmonero_cpp.sh