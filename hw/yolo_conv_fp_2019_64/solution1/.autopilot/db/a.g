#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/xavier/Desktop/yolo_conv_fp_2019_64_rec/solution1/.autopilot/db/a.g.bc ${1+"$@"}
