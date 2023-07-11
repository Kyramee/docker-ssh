FROM ubuntu:18.04
RUN apt-get update \
    && apt-get install -y openssh-client

USER 1001

ENTRYPOINT ["ssh", "--help"]
CMD ["ssh", "--help"]
