FROM docker:latest

RUN apk add --no-cache curl openssh-client bash git python wget && \
    wget -qO- https://bootstrap.pypa.io/get-pip.py | python && \
    pip install docker-compose && \
    rm -rf /var/cache/apk/*
