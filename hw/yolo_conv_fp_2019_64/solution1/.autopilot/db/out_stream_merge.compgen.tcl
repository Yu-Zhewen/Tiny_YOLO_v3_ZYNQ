# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 73 \
    name outStream_V_data \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TREADY { I 1 bit } outStream_TDATA { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_data'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 74 \
    name outStream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TKEEP { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 75 \
    name outStream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TSTRB { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 76 \
    name outStream_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TUSER { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 77 \
    name outStream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 78 \
    name outStream_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TID { O 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 79 \
    name outStream_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {outStream} \
    metadata {  } \
    op interface \
    ports { outStream_TVALID { O 1 bit } outStream_TDEST { O 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outStream_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name out_stream_group_0_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_0_V_V \
    op interface \
    ports { out_stream_group_0_V_V_dout { I 16 vector } out_stream_group_0_V_V_empty_n { I 1 bit } out_stream_group_0_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name out_stream_group_1_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_1_V_V \
    op interface \
    ports { out_stream_group_1_V_V_dout { I 16 vector } out_stream_group_1_V_V_empty_n { I 1 bit } out_stream_group_1_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name out_stream_group_2_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_2_V_V \
    op interface \
    ports { out_stream_group_2_V_V_dout { I 16 vector } out_stream_group_2_V_V_empty_n { I 1 bit } out_stream_group_2_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name out_stream_group_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_3_V_V \
    op interface \
    ports { out_stream_group_3_V_V_dout { I 16 vector } out_stream_group_3_V_V_empty_n { I 1 bit } out_stream_group_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name out_stream_group_4_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_4_V_V \
    op interface \
    ports { out_stream_group_4_V_V_dout { I 16 vector } out_stream_group_4_V_V_empty_n { I 1 bit } out_stream_group_4_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name out_stream_group_5_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_5_V_V \
    op interface \
    ports { out_stream_group_5_V_V_dout { I 16 vector } out_stream_group_5_V_V_empty_n { I 1 bit } out_stream_group_5_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name out_stream_group_6_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_6_V_V \
    op interface \
    ports { out_stream_group_6_V_V_dout { I 16 vector } out_stream_group_6_V_V_empty_n { I 1 bit } out_stream_group_6_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name out_stream_group_7_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_7_V_V \
    op interface \
    ports { out_stream_group_7_V_V_dout { I 16 vector } out_stream_group_7_V_V_empty_n { I 1 bit } out_stream_group_7_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name out_stream_group_8_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_8_V_V \
    op interface \
    ports { out_stream_group_8_V_V_dout { I 16 vector } out_stream_group_8_V_V_empty_n { I 1 bit } out_stream_group_8_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name out_stream_group_9_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_9_V_V \
    op interface \
    ports { out_stream_group_9_V_V_dout { I 16 vector } out_stream_group_9_V_V_empty_n { I 1 bit } out_stream_group_9_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name out_stream_group_10_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_10_V_V \
    op interface \
    ports { out_stream_group_10_V_V_dout { I 16 vector } out_stream_group_10_V_V_empty_n { I 1 bit } out_stream_group_10_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name out_stream_group_11_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_11_V_V \
    op interface \
    ports { out_stream_group_11_V_V_dout { I 16 vector } out_stream_group_11_V_V_empty_n { I 1 bit } out_stream_group_11_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name out_stream_group_12_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_12_V_V \
    op interface \
    ports { out_stream_group_12_V_V_dout { I 16 vector } out_stream_group_12_V_V_empty_n { I 1 bit } out_stream_group_12_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name out_stream_group_13_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_13_V_V \
    op interface \
    ports { out_stream_group_13_V_V_dout { I 16 vector } out_stream_group_13_V_V_empty_n { I 1 bit } out_stream_group_13_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name out_stream_group_14_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_14_V_V \
    op interface \
    ports { out_stream_group_14_V_V_dout { I 16 vector } out_stream_group_14_V_V_empty_n { I 1 bit } out_stream_group_14_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name out_stream_group_15_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_15_V_V \
    op interface \
    ports { out_stream_group_15_V_V_dout { I 16 vector } out_stream_group_15_V_V_empty_n { I 1 bit } out_stream_group_15_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name out_stream_group_16_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_16_V_V \
    op interface \
    ports { out_stream_group_16_V_V_dout { I 16 vector } out_stream_group_16_V_V_empty_n { I 1 bit } out_stream_group_16_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name out_stream_group_17_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_17_V_V \
    op interface \
    ports { out_stream_group_17_V_V_dout { I 16 vector } out_stream_group_17_V_V_empty_n { I 1 bit } out_stream_group_17_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name out_stream_group_18_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_18_V_V \
    op interface \
    ports { out_stream_group_18_V_V_dout { I 16 vector } out_stream_group_18_V_V_empty_n { I 1 bit } out_stream_group_18_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name out_stream_group_19_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_19_V_V \
    op interface \
    ports { out_stream_group_19_V_V_dout { I 16 vector } out_stream_group_19_V_V_empty_n { I 1 bit } out_stream_group_19_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name out_stream_group_20_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_20_V_V \
    op interface \
    ports { out_stream_group_20_V_V_dout { I 16 vector } out_stream_group_20_V_V_empty_n { I 1 bit } out_stream_group_20_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name out_stream_group_21_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_21_V_V \
    op interface \
    ports { out_stream_group_21_V_V_dout { I 16 vector } out_stream_group_21_V_V_empty_n { I 1 bit } out_stream_group_21_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name out_stream_group_22_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_22_V_V \
    op interface \
    ports { out_stream_group_22_V_V_dout { I 16 vector } out_stream_group_22_V_V_empty_n { I 1 bit } out_stream_group_22_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name out_stream_group_23_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_23_V_V \
    op interface \
    ports { out_stream_group_23_V_V_dout { I 16 vector } out_stream_group_23_V_V_empty_n { I 1 bit } out_stream_group_23_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name out_stream_group_24_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_24_V_V \
    op interface \
    ports { out_stream_group_24_V_V_dout { I 16 vector } out_stream_group_24_V_V_empty_n { I 1 bit } out_stream_group_24_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name out_stream_group_25_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_25_V_V \
    op interface \
    ports { out_stream_group_25_V_V_dout { I 16 vector } out_stream_group_25_V_V_empty_n { I 1 bit } out_stream_group_25_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name out_stream_group_26_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_26_V_V \
    op interface \
    ports { out_stream_group_26_V_V_dout { I 16 vector } out_stream_group_26_V_V_empty_n { I 1 bit } out_stream_group_26_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name out_stream_group_27_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_27_V_V \
    op interface \
    ports { out_stream_group_27_V_V_dout { I 16 vector } out_stream_group_27_V_V_empty_n { I 1 bit } out_stream_group_27_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name out_stream_group_28_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_28_V_V \
    op interface \
    ports { out_stream_group_28_V_V_dout { I 16 vector } out_stream_group_28_V_V_empty_n { I 1 bit } out_stream_group_28_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name out_stream_group_29_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_29_V_V \
    op interface \
    ports { out_stream_group_29_V_V_dout { I 16 vector } out_stream_group_29_V_V_empty_n { I 1 bit } out_stream_group_29_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name out_stream_group_30_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_30_V_V \
    op interface \
    ports { out_stream_group_30_V_V_dout { I 16 vector } out_stream_group_30_V_V_empty_n { I 1 bit } out_stream_group_30_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name out_stream_group_31_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_group_31_V_V \
    op interface \
    ports { out_stream_group_31_V_V_dout { I 16 vector } out_stream_group_31_V_V_empty_n { I 1 bit } out_stream_group_31_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name input_ch_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_ch_idx \
    op interface \
    ports { input_ch_idx { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name curr_input_keep_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_input_keep_V \
    op interface \
    ports { curr_input_keep_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name curr_input_strb_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_input_strb_V \
    op interface \
    ports { curr_input_strb_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name curr_input_user_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_input_user_V \
    op interface \
    ports { curr_input_user_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name curr_input_id_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_input_id_V \
    op interface \
    ports { curr_input_id_V { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name curr_input_dest_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_input_dest_V \
    op interface \
    ports { curr_input_dest_V { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name last_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_last_V \
    op interface \
    ports { last_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name fold_output_ch \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fold_output_ch \
    op interface \
    ports { fold_output_ch { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


