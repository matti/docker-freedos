#!/usr/bin/env sh

## Establish default command flags or override with Environment variables
OPTS=${OPTS:-"-fda floppy.img -boot a -curses"}

## If Command has value expand defaults
[[ $# -gt 0 ]] && OPTS += "$*"

## Exectue qemu with command flags
exec qemu-system-i386 ${OPTS}
