FROM alpine

RUN apk add qemu-system-i386 qemu-ui-curses

WORKDIR /app
ADD app .

ENTRYPOINT [ "/app/entrypoint.sh" ]
