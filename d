#!/bin/sh
adb forward tcp:5039 tcp:5039
adb pull /system/bin/app_process ~/gdb/
~/gdb/arm-linux-androideabi-gdb  -x ~/gdb/command
