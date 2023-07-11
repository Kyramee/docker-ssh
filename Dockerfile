#FROM ubuntu:18.04

#RUN apt-get update \
#    && apt-get install -y openssh

#USER 1001

#ENTRYPOINT ["ssh", "--help"]
#CMD ["ssh", "--help"]

FROM bitnami/apache:latest
USER root
RUN echo "<h1>Hello world</h1>" > /app/index.html
RUN apt install openssh-client
USER 1001
