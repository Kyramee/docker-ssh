FROM alpine

RUN apk add --no-cache \ 
        openssh \
    && ssh-keygen -A \
    && chmod 640 /etc/ssh/*

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]