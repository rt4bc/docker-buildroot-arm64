FROM arm64v8/ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    make \
    binutils \
    build-essential \
    gcc \
    g++ \
    cpio \
    unzip \
    rsync \
    wget \
    file \
    bc \
    libncurses-dev \
    git \
    python3 \
    graphviz \
    python3-matplotlib \
    tree \
    locales

RUN locale-gen en_US.utf8

RUN git clone git://git.buildroot.net/buildroot --depth=1 --branch=2021.02.x /root/buildroot

WORKDIR /root/buildroot

ENV O=/buildroot_output

VOLUME /root/buildroot/dl
VOLUME /buildroot_output

RUN ["/bin/bash"]
