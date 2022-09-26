#!/usr/bin/env sh

## Establish default command flags or override with Environment variables
OPTS=${OPTS:-"-boot a -display curses -drive format=raw,if=floppy,readonly=off,file=floppy.img,index=0"}

## If Command has value expand defaults
[[ $# -gt 0 ]] && OPTS += "$*"

## Exectue qemu with command flags
exec qemu-system-i386 ${OPTS}
