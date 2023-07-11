FROM ubuntu

RUN apt update \
    && apt install -y openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

RUN useradd -ms /bin/bash 1001

USER 1001
WORKDIR /home/1001
