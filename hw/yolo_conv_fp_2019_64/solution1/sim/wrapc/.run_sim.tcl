# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(LD_LIBRARY_PATH) /opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/fpo_v7_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/opencv:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/fft_v9_1:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/fir_v7_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /opt/Xilinx_2019_1/Vivado/2019.1/lnx64/tools/dds_v6_0:$::env(LD_LIBRARY_PATH)
set ::env(LD_LIBRARY_PATH) /usr/lib/x86_64-linux-gnu:$::env(LD_LIBRARY_PATH)

proc cpvcdfromsctortl {} {
	#copy *.vcd from sc to verilog/vhdl dir
	if {$::AESL_AUTOSIM::gTraceLevel == "all"} {
		set filefnd [catch {set vcdFiles [glob *.vcd]} err]
		if {!$filefnd} {
			if {$::AESL_AUTOSIM::gLang == "vlog"} {
				foreach vcdf $vcdFiles {
					if {[file exist $vcdf]} {
						safe_copy $vcdf [file join ../verilog $vcdf] 1
					}
				}
			} elseif {$::AESL_AUTOSIM::gLang == "vhdl"} {
				foreach vcdf $vcdFiles {
					if {[file exist $vcdf]} {
						safe_copy $vcdf [file join ../vhdl $vcdf] 1
					}
				}
			}
		}
	}
}

proc run_exec {fileExe} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}

	if {[file exists $fileExe] == 0} {
		cosim_message ERROR 314 $fileExe
		return -code error -errorcode 10
	}

	set ret [catch {eval exec "./$fileExe | tee tmp.log" >&@ stdout} err]

	cpfilecontent tmp.log ../../.temp11.log
	set errfile "err.log"

	if {$errfile != ""} {
		if {[file exists $errfile] && [file size $errfile] != 0} {
			set fl [open $errfile r]
			while {[gets $fl line] >= 0} {
				if {[string first "AESL_mErrNo = " $line] == 0} {
					set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
					if {$mismatch_num != 0} {
						set info_code 301
						cosim_message INFO $info_code ${mismatch_num}
						break
					}
				}
			}
		}
	}

	if {$ret || $err != ""} {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] ERROR: \"$err\""
		}

		if {[lindex $::errorCode 0] == "CHILDSTATUS"} {
			set status [lindex $::errorCode 2]
			if {$status != ""} {
				cosim_message ERROR 359 $status
			} else {
				cosim_message ERROR 360
			}
		} else {
		     cosim_message ERROR 360
		}
		return -code error -errorcode $err
	}

	if {[file exists tmp.log]} {
		set cmdret [catch {eval exec "grep \"Error:\" tmp.log"} err]
		file delete tmp.log
		if {$cmdret == 0} {
			cosim_message ERROR 360
			return -code error -errorcode $err
		}
	}

	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] finish..."
	}

	return 1
}

proc run_sc {{FileExe "cosim.tv.exe"}} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start..."
	}
	set errfile "err.log"
	if {$errfile != "" && [file exist $errfile]}  {
		file delete -force  $errfile
	}
	set ret [catch {run_exec $FileExe} results]
	if {$ret} {
		cpvcdfromsctortl
		return -code error -errorcode $::errorCode
	}
	if {$errfile != ""} {
		if {[file exist $errfile] && [file size $errfile] != 0} {
			cpvcdfromsctortl
			return -code error -errorcode 3
		}
	}
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] finish..."
	}
	return 1
}

proc sim {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start..."
	}

	###set default values
	set gTb ""

	upvar ::AESL_AUTOSIM::DirAutoSimRoot  DirAutoSimRoot

	set dirAutoSimRoot       "$DirAutoSimRoot"
	set dirAutoSimTv         "$dirAutoSimRoot/tv"
	set dirAutoSimBc         "$dirAutoSimRoot/bc"
	set dirAutoSimSc         "$dirAutoSimRoot/systemc"
	set dirAutoSimPostCheck  "$dirAutoSimRoot/wrapc_pc"
	set dirAutoSimCasSc      "$dirAutoSimRoot/casc"
	set dirAutoSimVhdl       "$dirAutoSimRoot/vhdl"
	set dirAutoSimVlog       "$dirAutoSimRoot/verilog"
	set dirAutoSimVlogGate   "$dirAutoSimRoot/verilog.gate"
	set dirAutoSimWrapc      "$dirAutoSimRoot/wrapc"
	set gWorkingDir          "../.."
	set constFileTvIn        "yolo_conv_top.autotvin.dat"
	set constFileTvOut       "yolo_conv_top.autotvout.dat"
	set constFileHdlTvIn     "yolo_conv_top.autohdltvin.dat"
	set constFileHdlTvOut    "yolo_conv_top.autohdltvout.dat"
	set gGateLevelSim        "0"
	set gAutowrap            "1"
	set gTool                "modelsim"

	set info_code 302
	cosim_message INFO $info_code

	cd $gWorkingDir
	cd $dirAutoSimWrapc

	if {[catch {eval run_sc "cosim.tv.exe"} err00]} {
		if {$err00 == "child killed: segmentation violation"} {
			cosim_message ERROR 379
		}
		cosim_message ERROR 320
		return -code error -errorcode $::errorCode
	}

	set my_retTvInFiles ""
	set my_retTvOutFiles ""

	if {[file isfile $constFileTvIn]} {
		set my_retTvInFiles [file normalize $constFileTvIn]
	}
	if {[file isfile $constFileTvOut]} {
		set my_retTvOutFiles [file normalize $constFileTvOut]
	}

	set ret [catch {eval exec "du -sh"} disk_space]

	cd ${gWorkingDir}

	set gTvIn {}
	set gTvOut {}

	foreach fl $my_retTvInFiles {
		if {[file isfile $fl]} {
			set file [file normalize $fl]
			set filename [file tail $file]
			set dstfile [file join $dirAutoSimTv $filename]
			file delete $file
			lappend gTvIn [file normalize $dstfile]
		}
	}

	foreach fl $my_retTvOutFiles {
		if {[file isfile $fl]} {
			set file [file normalize $fl]
			set filename [file tail $file]
			set dstfile [file join $dirAutoSimTv $filename]
			file delete $file
			lappend gTvOut [file normalize $dstfile]
		}
	}
	set gTb ""

	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] finish...";
	}

	return 1
}

proc sim_wrap {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}

	set ret [catch {eval sim} err01]

	if {$ret} {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] ERROR: \"$err01\"";
		}
		return -code error -errorcode $::errorCode
	} else {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] finish...";
		}
		return 0
	}
}

sim_wrap
