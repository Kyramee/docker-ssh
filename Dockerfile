FROM debian
RUN apt-get update \
    && apt-get install -y openssh-client

ENTRYPOINT ["/bin/sh"]
CMD ["/bin/sh"]
