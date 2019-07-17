# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.yolo_yolo_top.autotvin_inStream_V_data.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_keep_V.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_strb_V.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_user_V.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_last_V.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_id_V.dat"
         "c.yolo_yolo_top.autotvin_inStream_V_dest_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_data.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_keep_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_strb_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_user_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_last_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_id_V.dat"
         "c.yolo_yolo_top.autotvin_outStream_V_dest_V.dat"
         "c.yolo_yolo_top.autotvin_activate_en_V.dat"
         "c.yolo_yolo_top.autotvin_input_h_V.dat"
         "c.yolo_yolo_top.autotvin_input_w_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_data.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_keep_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_strb_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_user_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_last_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_id_V.dat"
         "c.yolo_yolo_top.autotvout_outStream_V_dest_V.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 320 COSIM_320_995
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.yolo_yolo_top.autotvout_outStream_V_data.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_keep_V.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_strb_V.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_user_V.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_last_V.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_id_V.dat"
         "rtl.yolo_yolo_top.autotvout_outStream_V_dest_V.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 303 COSIM_303_997
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
