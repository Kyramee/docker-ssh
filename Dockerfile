FROM debian
RUN apt-get update \
    && apt-get install -y openssh-client

ENTRYPOINT ["ssh"]
CMD ["ssh"]
