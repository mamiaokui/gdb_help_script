#!/bin/bash
adb shell ps | grep "UCM" | awk '{print $2}' | xargs -i adb shell su -c "kill -9 {}"
