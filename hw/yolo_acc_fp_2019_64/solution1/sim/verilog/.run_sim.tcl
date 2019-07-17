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

source check_sim.tcl

proc cpvcdfromsctortl {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}
	
	# copy *.vcd from sc to verilog/vhdl dir
	if {$::AESL_AUTOSIM::gTraceLevel == "all"} {
		set filefnd [catch {set vcdFiles [glob *.vcd]} err]
		if {$filefnd == 0} {
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
	
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] finish...";
	}
}

proc run_exec {fileExe} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}
	
	if {![file exists $fileExe]} {
		error_message ERROR 314 $fileExe
		return -code error -errorcode 10
	}
	set err {}
	set ret [catch {eval exec "./$fileExe | tee tmp.log" >&@ stdout} err]
	
	cpfilecontent tmp.log ../../.temp11.log
	
	set errfile "err.log"
  
	if {[file exists $errfile] && [file size $errfile] != 0} {
		set fl [open $errfile r]
		while {[gets $fl line] >= 0} {
			if {[string first "AESL_mErrNo = " $line] == 0} {
				set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
				if {$mismatch_num != 0} {
					cosim_message INFO 301 ${mismatch_num}
					break
				}
			}
		}
	}
	
	if {$ret || $err != ""} {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] ERROR: \"$err\"";
		}
		
		if {$err == "child killed: segmentation violation"} {
			cosim_message ERROR 379
		}
		
		if {[lindex $::errorCode 0] == "CHILDSTATUS"} {
			set status [lindex $::errorCode 2]
			if {$status != ""} {
              if {$fileExe == "cosim.pc.exe"} {
                  cosim_message ERROR 361 $status
              } else {
                  cosim_message ERROR 357 $status
              }
			} else {
				cosim_message ERROR 362
			}
		} else {
			cosim_message ERROR 362
		}
		
		return -code error -errorcode $err
	}
	
	if {[file exists tmp.log]} {
		set cmdret [catch {eval exec "grep \"Error:\" tmp.log"} err]
		file delete tmp.log
		if {$cmdret == 0} {
			cosim_message ERROR 304
			return -code error -errorcode $err
		}
	}
	
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] finish...";
	}
	
	return 1
}

proc run_sc {{FileExe "cosim.sc.exe"}} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}
	
	set errfile "err.log"
	
	if {$errfile != "" && [file exist $errfile]} {
		file delete -force  $errfile
	}
	
	set ret [catch {run_exec $FileExe} results]
	
	if {$ret} {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] ERROR: \"$results\"";
		}
		
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
		puts stdout "[debug_prompt arg .run_sim.tcl] finish...";
	}
	
	return 1
}

proc sim {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] start...";
	}
	
	set gTvIn ""
	set gTvOut ""
	set gTb ""
	set gHdlTvIn ""
	set gHdlTvOut ""
	set gAutowrap 1
	
	# check if autosim correctly exit
	set simStatusTcl .sim.status.tcl
	if {![file exist $simStatusTcl]} {
		cosim_message ERROR 305
		return -code error -errorcode 4
	}
	
	# get parameters from autosim generated tcl script
	source $simStatusTcl
	
	set sim_st(wrapc_needed)    ${sim_status(wrapc_needed)}
	set sim_st(bc_needed)       ${sim_status(bc_needed)}
	set sim_st(sc_needed)       ${sim_status(sc_needed)}
	set sim_st(pc_needed)       ${sim_status(pc_needed)}
	set sim_st(no_tb_pc_needed) ${sim_status(no_tb_pc_needed)}
	set sim_st(vhdl_needed)     ${sim_status(vhdl_needed)}
	set sim_st(vlog_needed)     ${sim_status(vlog_needed)}
	set sim_st(bc_tb_needed)    ${sim_status(bc_tb_needed)}
	set sim_st(bc_tb_new_needed)    ${sim_status(bc_tb_new_needed)}
	set sim_st(cas_needed)      ${sim_status(cas_needed)}
	set dirAutoSimRoot          ${sim_DirAutoSimRoot}
	set dirAutoSimTv            ${sim_DirAutoSimTv}
	set dirAutoSimBc            ${sim_DirAutoSimBc}
	set dirAutoSimSc            ${sim_DirAutoSimSc}
	set dirAutoSimPostCheck     ${sim_DirAutoSimPostCheck}
	set dirAutoSimNoTbPc        ${sim_DirAutoSimNoTbPc}
	set dirAutoSimCasSc         ${sim_DirAutoSimCasSc}
	set dirAutoSimVhdl          ${sim_DirAutoSimVhdl}
	set dirAutoSimVlog          ${sim_DirAutoSimVlog}
	set dirAutoSimVlogGate      ${sim_DirAutoSimVlogGate}
	set dirAutoSimWrapc         ${sim_DirAutoSimWrapc}
	set gWorkingDir             [file normalize ${sim_WorkingDir}]
	set constFileTvIn           ${sim_ConstFileTvIn}
	set constFileTvOut          ${sim_ConstFileTvOut}
	set constFileHdlTvIn        ${sim_ConstFileHdlTvIn}
	set constFileHdlTvOut       ${sim_ConstFileHdlTvOut}
	set gGateLevelSim           ${sim_GateLevelSim}
	set gAutowrap               ${sim_GAutowrap}
	set gTool                   ${sim_GTool}
	set gTvIn                   [file normalize ${sim_GTvIn}]
	set gTvOut                  [file normalize ${sim_GTvOut}]
	set gHdlTvIn                [file normalize ${sim_GHdlTvIn}]
	set gHdlTvOut               [file normalize ${sim_GHdlTvOut}]
	
	cd ${gWorkingDir}
	cd ${dirAutoSimTv}/cdatafile
	
	set ret [check_tvin_file]
	
	if {$ret == 1} {
		cosim_message ERROR 344
		return -code error -errorcode $::errorCode
	}
	
	#====================== Verilog/VHDL ======================
	cd ${gWorkingDir}
	
	if {$sim_st(vhdl_needed)} {
		cd $dirAutoSimVhdl
		set info_code 322
		cosim_message INFO $info_code
	} else {
		if {$gGateLevelSim == 1} {
			cd $dirAutoSimVlogGate
		} else {
			cd $dirAutoSimVlog
			set info_code 323
			cosim_message INFO $info_code
		}
	}
	
	set fileErr ".exit.err"
	set user_err_file "err.log"
	
	if {[file exist $fileErr]} {
		file delete -force $fileErr
	}
	
	if {[file exist ".aesl_error"]} {
		file delete -force ".aesl_error"
	}
	
	if {$user_err_file != "" && [file exist $user_err_file]} {
		file delete -force  $user_err_file
	}
	
	set info_code 15
	set tool_name "XSIM"
	cosim_message INFO $info_code $tool_name
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg .run_sim.tcl] \"sh ./run_xsim.sh\"";
	}
	
	set cmdret [catch {eval exec "sh ./run_xsim.sh | tee temp.log" >&@ stdout} err]
	
	cpfilecontent temp.log ../../.temp11.log
	
	if {[file exist temp.log]} {
		set cmdret [catch {eval exec "grep \"Error: License unavailable\" temp.log"} err]
		set cmdret2 [catch {eval exec "grep \"You do not have a valid license\" temp.log"} err]
		set cmdret3 [catch {eval exec "grep \"KERNEL: Fatal error\" temp.log"} err]
		set cmdret4 [catch {eval exec "grep \"ERROR:\" temp.log"} err]
		
		file delete temp.log
		
		if {$cmdret == 0 || $cmdret2 == 0} {
			cosim_message ERROR 307 $tool_name
			return -code error -errorcode 29
		}
		
		if {$cmdret3 == 0 || $cmdret4 == 0} {
			return -code error -errorcode 29
		}
	}
	
	set errfile "err.log"
	
	if {$errfile != ""} {
		if {[file exists $errfile] && [file size $errfile] != 0} {
			set unmatch_num 0
			
			set fl [open $errfile r]
			while {[gets $fl line] >= 0} {
				if {[string first "unmatched" $line] != -1} {
					set unmatch_num [expr $unmatch_num + 1]
				}
			}
			
			if {$unmatch_num != 0} {
				set info_code 301
				cosim_message INFO $info_code ${unmatch_num}
			}
		}
	}
	
	if {[file exist ".aesl_error"]} {
		set errfl [open ".aesl_error" r]
		
		gets $errfl line
		
		if {$line != 0} {
			cosim_message ERROR 303 $line
			return -code error -errorcode 37
		}
	}
	
	if {[file exist $fileErr]} {
		return -code error -errorcode 38
	}
	
	if {$user_err_file != ""} {
		if {[file exist $user_err_file] && [file size $user_err_file] != 0} {
			return -code error -errorcode 39
		}
	}
	#==========================================================
	
	cd ${gWorkingDir}
	cd ${dirAutoSimTv}/rtldatafile
	
	set ret [check_tvout_file]
	
	if {$ret == 1} {
		cosim_message ERROR 344
		return -code error -errorcode $::errorCode
	}
	
	set ret [catch {eval exec "date +%s"} start_time]
	
	set info_code 316
	cosim_message INFO $info_code
	
	cd ${gWorkingDir}
	cd ${dirAutoSimPostCheck}
	
	if {[catch {eval run_sc "cosim.pc.exe"} err00]} {
		if {$::AESL_AUTOSIM::gDebug == 1} {
			puts stdout "[debug_prompt arg .run_sim.tcl] ERROR: \"$err00\"";
		}
		
		return -code error -errorcode $::errorCode
	}
	
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
