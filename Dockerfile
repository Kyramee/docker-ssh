FROM ubuntu

RUN apt update \
    && apt install -y openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

RUN useradd -ms /bin/bash notanadmin

USER notanadmin
WORKDIR /home/notanadmin
