FROM ubuntu:17.04

RUN apt-get update && \
    apt-get install -y qemu && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
ADD app .

ENTRYPOINT [ "/app/entrypoint.sh" ]
