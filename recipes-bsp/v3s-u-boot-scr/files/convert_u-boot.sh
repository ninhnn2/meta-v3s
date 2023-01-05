#!/bin/bash

mkimage -A arm -T script -C none -n "Boot script" -d ./boot1.cmd boot1.scr

mkimage -A arm -T script -C none -n "Boot script" -d ./boot2.cmd boot2.scr
