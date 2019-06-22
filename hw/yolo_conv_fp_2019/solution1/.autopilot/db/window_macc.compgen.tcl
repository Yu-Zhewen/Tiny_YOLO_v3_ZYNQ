# This script segment is generated automatically by AutoPilot

set id 10
set name yolo_conv_top_mul_mul_14s_16s_30_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 14
set in0_signed 1
set in1_width 16
set in1_signed 1
set out_width 30
set exp i0*i1
set arg_lists {i0 {14 1 +} i1 {16 1 +} p {30 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 20
set hasByteEnable 0
set MemName window_macc_kernel_weight_fp
set CoreName ap_simcore_mem
set PortList { 1 1 1 1 1 1 1 1 1 }
set DataWd 14
set AddrRange 432
set AddrWd 9
set TrueReset 0
set IsROM 1
set ROMData { "00000110000111" "00001101011101" "00000111010001" "00010000000111" "11111000101100" "11110001001110" "11111111100001" "11100101000000" "11111100000110" "00000110000111" "00001010001010" "00000000000010" "00001000111110" "11110100100010" "11101110011000" "00000001101101" "11101101010001" "00000000101101" "11110110100101" "11111111111111" "11111011111100" "00000000000000" "11111111111110" "11111100100101" "11111111010011" "11111001101110" "00000010000111" "11101100111010" "11110111110100" "00100010001100" "00001000101110" "00000011011100" "11110000111111" "00001100010111" "00001111110001" "11101111110011" "00000110000111" "11100110100011" "00100010000011" "11011100001100" "00010100010101" "11110100001000" "00100010111110" "11111100100100" "00001011100110" "00100010101000" "00010010010011" "11001101111001" "00001000111011" "00100111011011" "00010000100110" "11101011010101" "11100100001110" "00001001110000" "00000001011010" "00000011001100" "00000000101011" "00000011000010" "00000011100101" "00000001011101" "00000001000001" "00000010000101" "00000000001110" "00000001000000" "00000100010100" "00000010111111" "00000001111001" "00000011010010" "00000010100111" "00000001100011" "00000010101101" "00000001000010" "11111100100101" "11111101010010" "11111110100101" "11111000111010" "11110111000001" "11111001000001" "11111101111110" "11111101001111" "11111100000001" "00000011100110" "00000100000000" "11111111101010" "00001011000001" "00001100101110" "00000110101001" "00000110111100" "00001000101110" "00000101100000" "11111100110000" "11111100111100" "00000000011010" "11110110111010" "11110101111110" "11111011000110" "11111001010101" "11110111111100" "11111011010001" "11111111111010" "11111111010011" "00000000000011" "11111101111101" "11111101000101" "11111110100000" "11111111001011" "11111110011101" "11111110111100" "11100011101000" "11010011011101" "11100100001001" "00001000111011" "11111111110111" "00000010110010" "00011011001011" "00100100011011" "00010101111001" "11100001000010" "11010011111011" "11101001011101" "00000100000110" "00001010101001" "00000010111101" "00010110100011" "00100111011100" "00010001010011" "11101111010110" "11011111110101" "11110010100010" "00000110111000" "00000110101000" "00000010111110" "00001100101000" "00010101111010" "00001100011100" "01010101010011" "00001011100011" "11001101100111" "00111100001000" "11110001111011" "11000100001100" "00011100011000" "11110011111010" "10111001100111" "11010101110000" "11110100011011" "00011000100111" "11110101000010" "11111111001000" "00100011101001" "11111111011010" "00000111101011" "00010101011011" "11001010100011" "11111000101011" "00010101011011" "11001001101001" "00000110111111" "00101011100011" "11100110100100" "00001111111011" "00110010111111" "00011100111011" "00111100001010" "00001000011100" "11111100000100" "00010000111100" "11100101001011" "11101000000001" "11100100000110" "11011111100110" "00010000011110" "00110101001110" "00000011010010" "11111100111011" "00011000001110" "11101000010111" "11101011010001" "11101010010111" "11100000100101" "00001010111101" "00011001110000" "00001001101000" "11111001100101" "00001000010011" "11111000000101" "11110011110100" "11110001000011" "11110011100110" "11111001001111" "11101100111110" "00000101100010" "11111001010100" "11100010101101" "11111100001010" "00000011000111" "00000100000001" "11111110110010" "00000101100000" "11101111111111" "00000101010000" "11111111011001" "11100111111111" "11111111001100" "11111100010101" "00000100000010" "11111011000110" "00000011010111" "11111010100001" "00000110110101" "11111101010001" "11101011001011" "00000000110001" "11111110011010" "00000101010001" "11111000010001" "11100100101011" "00000110000100" "00101000011001" "11100111011110" "11001100000100" "01000000110001" "00001110000100" "11001011011010" "00011110011101" "11111011000010" "11111011000001" "00010110100000" "00001001110100" "11000010001111" "00100011100101" "00101110101011" "11010110000111" "11111111000111" "00001000000101" "11111110000001" "11111000101100" "00010101001001" "11100100111010" "11111010100011" "00100111001000" "11110111111010" "11101100011111" "11100110011101" "11111000111001" "00011000101011" "11011011001100" "11111110001111" "00100110101100" "11100101101000" "00001010101001" "00011001001100" "11101010000111" "11111011101100" "00010100101101" "11011101011010" "11111110100101" "00100010111101" "11101001111010" "00001010101100" "00010000011010" "11110010101011" "00000000110010" "00001011101100" "11101001001001" "00000010011001" "00010100001110" "11101101111000" "00001010111001" "00001001101110" "00010110111101" "00100101001011" "00010110001011" "11111101111101" "00000000000111" "11111111101000" "11101010011000" "11011111110101" "11100110101110" "00010011010010" "00100100001010" "00010000101100" "11111100101011" "00000000011101" "00000000011101" "11101101001101" "11100001101000" "11101011010001" "00001011101001" "00010101001110" "00001000001011" "11111111000010" "00000010111011" "00000010100000" "11110011000010" "11101011101000" "11110010111000" "00010101100011" "00000000000010" "11101001011100" "00100100100000" "11110110011101" "11100000101000" "00011001001000" "11111110011011" "11101111000101" "00010111100110" "00000001000100" "11100111101100" "00100101100011" "11110111001010" "11011110100011" "00010011011111" "00000000000000" "11110000110000" "00001110010011" "00000100000100" "11101110110010" "00011001011100" "11111101000100" "11100110110110" "00001111100000" "00000010101111" "11110000000111" "11110111100110" "11110110111110" "11110101101010" "11110100100010" "11110000101111" "11110100011010" "11111011110011" "11110001010101" "11111100000111" "00000110110011" "00000111110010" "00000000111111" "00000100111011" "00000010111111" "00000010100111" "00000100100010" "11111110111001" "00000011110100" "00000101000100" "00001000110000" "00000011111110" "00000100100110" "00000101011010" "00001000000001" "00000100100010" "00000011110000" "00001000011110" "00000111101101" "00001101101101" "00001001100110" "11110011001110" "11010110100001" "11011010001101" "00000101010001" "00010100101101" "00100011010010" "00001010011011" "00010100010101" "00001111010000" "11110011001110" "11010100100110" "11010101110101" "00000010111001" "00010010010110" "00011111101010" "00001001101111" "00001110011000" "00001011100100" "11111001101110" "11100100110011" "11100011101011" "00000000000000" "00000110100101" "00010011010010" "11100100000011" "11011000001011" "11101011001101" "00000110000100" "11111111010110" "11111111000001" "00011000100111" "00100111011000" "00010100101110" "11101010010010" "11011011100101" "11101110110100" "00001001001001" "00000000111010" "00000000100110" "00010000100101" "00100001111011" "00001101101000" "11101111100111" "11100110001100" "11110010011100" "00001000100011" "00000010001001" "00000000011011" "00001011110001" "00010111110100" "00001001101110" "00000000100101" "00000011001100" "00000001100111" "11111011111011" "11111010101111" "00000000011101" "11111111011010" "11111001101101" "11111100111000" "11111011001111" "11111010011111" "11110110010000" "11111000101011" "11110111100110" "11111100100101" "11111011011010" "11110111010001" "11111011111111" "00000111010100" "00001000010111" "00000000010100" "00001000101001" "00001100001100" "00001001110100" "00000110000010" "00001000111110" "00001000000101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 9 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 9 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name window_0_0_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_0_0_val_V_r \
    op interface \
    ports { window_0_0_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name window_0_1_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_0_1_val_V_r \
    op interface \
    ports { window_0_1_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name window_0_2_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_0_2_val_V_r \
    op interface \
    ports { window_0_2_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name window_1_0_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_1_0_val_V_r \
    op interface \
    ports { window_1_0_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name window_1_1_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_1_1_val_V_r \
    op interface \
    ports { window_1_1_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name window_1_2_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_1_2_val_V_r \
    op interface \
    ports { window_1_2_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name window_2_0_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_2_0_val_V_r \
    op interface \
    ports { window_2_0_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name window_2_1_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_2_1_val_V_r \
    op interface \
    ports { window_2_1_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name window_2_2_val_V_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_window_2_2_val_V_r \
    op interface \
    ports { window_2_2_val_V_r { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name weight_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_V_offset \
    op interface \
    ports { weight_V_offset { I 9 vector } } \
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
    ports { ap_return { O 16 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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
    id -5 \
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


