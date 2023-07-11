FROM debian:stable-slim
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean
