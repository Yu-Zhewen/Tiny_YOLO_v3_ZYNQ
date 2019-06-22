# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name window_group_0_val_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_s \
    op interface \
    ports { window_group_0_val_s { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name window_group_0_val_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_9 \
    op interface \
    ports { window_group_0_val_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name window_group_0_val_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_10 \
    op interface \
    ports { window_group_0_val_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name window_group_0_val_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_11 \
    op interface \
    ports { window_group_0_val_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name window_group_0_val_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_12 \
    op interface \
    ports { window_group_0_val_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name window_group_0_val_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_13 \
    op interface \
    ports { window_group_0_val_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name window_group_0_val_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_14 \
    op interface \
    ports { window_group_0_val_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name window_group_0_val_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_15 \
    op interface \
    ports { window_group_0_val_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name window_group_0_val_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_group_0_val_16 \
    op interface \
    ports { window_group_0_val_16 { I 16 vector } } \
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
    ports { ap_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


