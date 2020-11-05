import os
import shutil
import zipfile

device = "xc7z020-clg484-1"
clk_ns = "10"

root_path = os.path.abspath("../")

# launch Design Space Exploration
os.chdir(root_path + "/model")
os.system("g++ -o dse.out main.cpp system_model.cpp system_model.h")
os.system("./dse.out")

# get optimal config
with open("opt.conf", "r") as fp:
    opt_conf = fp.readline().rstrip().split(",")
    conf_cmd = {"N_max" : "#define MAX_KERNEL_NUM " + opt_conf[0] + "\n",
                "P_mem" : "#pragma HLS ARRAY_PARTITION variable=local_mem_group block factor=" + opt_conf[1] + " dim=1\n",
                "P_acc" : "#pragma HLS RESOURCE variable=kernel_bias_fp core=RAM_1P_BRAM" if opt_conf[2] == "1" else "#pragma HLS ARRAY_PARTITION variable=kernel_bias_fp cyclic factor=" + str(int(opt_conf[3])>>1) + " dim=1\n",
                "P_pool" : "#pragma HLS ALLOCATION instances=window_max_pool limit=" + opt_conf[3] + " function\n",
                "P_yolo" : "#pragma HLS ALLOCATION instances=logistic_activate limit=" + opt_conf[5] + " function\n"}

os.chdir(root_path + "/code/hls")

# update parameters in the code
hls_list = ["yolo_acc", "yolo_conv", "yolo_max_pool", "yolo_upsample", "yolo_yolo"]    

for hls_prj_name in os.listdir():
    for dir_name in os.listdir(hls_prj_name):
        if dir_name == "src":
            path = hls_prj_name + "/" + dir_name
            for cand_file in os.listdir(path):
                with open(path + "/" + cand_file + ".copy", "w") as fp_copy:

                    with open(path + "/" + cand_file, "r") as fp:
                        while 1:
                            line = fp.readline()
                            if not line:
                                break

                            fp_copy.write(line)

                            if line.startswith("// SCRIPT_START"):
                                field = line.split(" ")[2]
                                cmd = conf_cmd[field]
                                fp_copy.write(cmd)

                                while 1:
                                    line = fp.readline()
                                    if line.startswith("// SCRIPT_END"):
                                        fp_copy.write(line)
                                        break
                os.replace(path + "/" + cand_file + ".copy", path + "/" + cand_file)

# generate scripts to kick off HLS
for hls_prj_name in os.listdir():
    os.chdir(root_path + "/code/hls/" + hls_prj_name)
    with open("run_hls.tcl", "w") as tcl_fp:
        tcl_fp.write("open_project -reset " + hls_prj_name + "_prj\n")
        tcl_fp.write("set_top " + hls_prj_name + "_top\n")

        for src_file in os.listdir("src"):
            tcl_fp.write("add_files src/" + src_file + "\n")

        for tb_file in os.listdir("tb"):
            tcl_fp.write("add_files -tb tb/" + tb_file + "\n")

        tcl_fp.write("open_solution \"solution1\"\n")
        tcl_fp.write("set_part {" + device + "} -tool vivado\n")
        if hls_prj_name == "yolo_conv":
            tcl_fp.write("create_clock -period " + str(float(clk_ns)*0.75) + " -name default\n") # conv block needs stricter timing, is there a better way to achieve this
        else:    
            tcl_fp.write("create_clock -period " + clk_ns + " -name default\n")
        tcl_fp.write("config_export -format ip_catalog -rtl verilog\n")
        tcl_fp.write("csim_design\n")
        tcl_fp.write("csynth_design\n")
        tcl_fp.write("cosim_design\n")
        tcl_fp.write("export_design -rtl verilog -format ip_catalog\n")

    os.system("vivado_hls run_hls.tcl")
    shutil.copy(hls_prj_name + "_prj/solution1/impl/ip/xilinx_com_hls_" + hls_prj_name + "_top_1_0.zip", root_path + "/code/ip/xilinx_com_hls_" + hls_prj_name + "_top_1_0.zip")

# fetch IPs exported
os.chdir(root_path + "/code/ip")
for ip_zip in os.listdir():
    if (ip_zip.split(".")[-1] == "zip"):
        zip = zipfile.ZipFile(ip_zip)
        if not os.path.exists(ip_zip.split(".")[0]):
            os.mkdir(ip_zip.split(".")[0])
        zip.extractall(ip_zip.split(".")[0])

# run Vivado
os.chdir(root_path + "/code/sys")
os.system("vivado -mode tcl -source run_all.tcl -tclargs " + device)

