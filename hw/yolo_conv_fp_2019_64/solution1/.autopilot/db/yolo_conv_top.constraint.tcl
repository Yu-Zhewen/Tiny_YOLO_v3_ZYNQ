set clock_constraint { \
    name clk \
    module yolo_conv_top \
    port ap_clk \
    period 8 \
    uncertainty 1.6 \
}

set all_path {}

set false_path {}

