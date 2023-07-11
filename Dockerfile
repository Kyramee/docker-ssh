FROM ubuntu

RUN apt update \
    && apt install -y openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

USER 1001
