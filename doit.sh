#!/bin/bash


#https://forums.raspberrypi.com/viewtopic.php?t=343387

cat << _EOF
Usage: build-kernel [options] [output directory]
-b,--branch          Branch to use (commitid/current/default/rpi-M.N.y)
-c,--config          Configuration to build:
   1 = Raspberry Pi 1, Zero and Zero W, and Raspberry Pi Compute Module 1 (32-bit)
   2 = Raspberry Pi 2, 3, 3+ and Zero 2 W, and Raspberry Pi Compute Modules 3 and 3+ (32-bit)
   3 = Raspberry Pi 4 and 400, and Raspberry Pi Compute Module 4 (32-bit)
   4 = Raspberry Pi 3, 3+, 4, 400 and Zero 2 W, and Raspberry Pi Compute Modules 3, 3+ and 4 (64-bit)
   5 = Raspberry Pi 5 (64-bit)
-d,--delete          Delete existing source files
-f,--freshen         Freshen existing source files
-h,--help            This usage description
-i,--interactive     Interactive shell before compile
-j,--jobs            Number of jobs to run
-k,--keep            Keep old kernel as .bak
-m,--menuconfig      Run menuconfig
-n,--noinitramfs     Disable running update-initramfs
-o,--oldbootmnt      Use old boot mount (/boot)
-p,--purge           Purge source files upon completion
-r,--reboot          Reboot upon completion
-s,--suffix          Append modules suffix (suffix)
-u,--unattended      Unattended operation, defaults:
   Branch = current
   Config = Raspberry Pi 3, 3+, 4, 400 and Zero 2 W, and Raspberry Pi Compute Modules 3, 3+ and 4 (64-bit)
   Delete = auto
   Freshen = no
   Interactive = no
   Jobs = 4
   Keep = no
   Menuconfig = no
   Noinitramfs = no
   Oldbootmnt = no
   Purge = no
   Reboot = no
   Suffix = none
   Xcompile = no
-x,--cross-compile   Cross-compile mode

_EOF

./build-kernel --branch rpi-6.6.y --noinitramfs yes --config 5  --jobs 3 --menuconfig  --unattended   --suffix CNN  --keep --cross-compile


