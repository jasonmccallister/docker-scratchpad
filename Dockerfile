FROM ubuntu:18.04
RUN apt update && \
    apt install -y \
    git curl wget vim htop build-essential software-properties-common
RUN mkdir /scratch
WORKDIR /scratch
VOLUME [ "/scratch" ]
