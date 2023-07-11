FROM bitnami/apache:latest
USER root
RUN echo "<h1>Hello world</h1>" > /app/index.html
RUN apt install openssh
USER 1001
