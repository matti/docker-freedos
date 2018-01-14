FROM ubuntu:17.04

RUN apt-get update && apt-get install -y \
  qemu

WORKDIR /app
ADD app .

ENTRYPOINT [ "/app/entrypoint.sh" ]
