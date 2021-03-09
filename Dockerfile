FROM ubuntu:18.04 as build

RUN dpkg --add-architecture i386

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        pkg-config \
        libc6:i386 \
        libncurses5:i386 \
        libstdc++6:i386 \
        python3 \
        python3-pip \
        wget \
        git \
        unzip \
        clang-tidy \
        clang-format \
        nano \
        vbindiff
RUN python3 -m pip install --user colorama ansiwrap attrs watchdog python-Levenshtein
RUN python3 -m pip install --upgrade attrs pycparser
ENV PATH="/sotc/sce/ee/gcc/bin:${PATH}"

RUN mkdir /sotc
WORKDIR /sotc
