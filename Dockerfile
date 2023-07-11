FROM bitnami/apache:latest
RUN echo "<h1>hello world</h1>" > /app/index.html
