# Tiny YOLO v3 ZYNQ
## /data
pre-trained layer weights for YOLOv3-tiny on COCO dataset coming from https://pjreddie.com/darknet/yolo/

'fp' stands for fixed point data
'bn' represents merging batch normalise into convolution
## /hw
hardware IPs for each acceleration unit 'accumulation(acc)', 'convolution(conv)', 'max pooling(max)', 'upsample(upsamp)', 'yolo'
'64' is used for 64b DMA transfer which is finally used
'prj' is the relevant SDK project to validate each IP
## /model
models for Design Space Exploration (DSE)
## /rpt
report for the project
## /sw
purely software implementation of yolov3-tiny. It is a revised version of original https://github.com/pjreddie/darknet. File operations are removed for bare-mental running
## /tools
some interesting helpers for pre-processing data
 

