FROM ubuntu

RUN apt update \
    && apt install -y openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean \
    && ln -s /ssh/key/id_rsa /root/.ssh/id_rsa \
    && ln -s /ssh/key/id_rsa.pub /root/.ssh/id_rsa.pub \
    && ln -s /ssh/host/known_hosts /root/.ssh/known_hosts

## && mkdir -p /root/.ssh \
## && mkdir -p /ssh/key \
## && mkdir -p /ssh/host \
