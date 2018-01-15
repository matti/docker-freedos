#!/usr/bin/env sh

exec qemu-system-i386 -fda floppy.img -boot a -curses
