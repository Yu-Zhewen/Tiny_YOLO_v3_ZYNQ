-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Jul 21 21:24:57 2019
-- Host        : Lenovo-XiaoXin-CHAO7000 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/xavier/MSc_Project/hls/yolo_conv_hls_2019/yolo_sys_fp_prj_2019_64/yolo_sys_fp_prj_2019_64.srcs/sources_1/bd/design_1/ip/design_1_yolo_upsamp_top_0_0/design_1_yolo_upsamp_top_0_0_sim_netlist.vhdl
-- Design      : design_1_yolo_upsamp_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_CTRL_BUS_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \phi_ln9_reg_299_reg[2]\ : in STD_LOGIC;
    \phi_ln9_reg_299_reg[2]_0\ : in STD_LOGIC;
    \phi_ln9_reg_299_reg[2]_1\ : in STD_LOGIC;
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TREADY : in STD_LOGIC;
    outStream_V_last_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_reg_0 : in STD_LOGIC;
    outStream_V_dest_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_reg_1 : in STD_LOGIC;
    outStream_V_user_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_reg_2 : in STD_LOGIC;
    outStream_V_id_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_i_3_0 : in STD_LOGIC;
    outStream_V_keep_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_reg_3 : in STD_LOGIC;
    int_ap_ready_i_2_0 : in STD_LOGIC;
    outStream_V_strb_V_1_ack_in : in STD_LOGIC;
    int_ap_ready_i_2_1 : in STD_LOGIC;
    outStream_V_data_1_ack_in : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_CTRL_BUS_s_axi : entity is "yolo_upsamp_top_CTRL_BUS_s_axi";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_CTRL_BUS_s_axi;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_CTRL_BUS_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_ap_idle : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_2_n_0 : STD_LOGIC;
  signal int_ap_ready_i_3_n_0 : STD_LOGIC;
  signal int_ap_ready_i_4_n_0 : STD_LOGIC;
  signal int_ap_ready_i_5_n_0 : STD_LOGIC;
  signal int_ap_ready_i_6_n_0 : STD_LOGIC;
  signal int_ap_ready_i_7_n_0 : STD_LOGIC;
  signal int_ap_ready_i_8_n_0 : STD_LOGIC;
  signal int_ap_ready_i_9_n_0 : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_done_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of int_ap_ready_i_7 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_ready_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_gie_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_ier[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair2";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_done <= \^ap_done\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  s_axi_CTRL_BUS_BVALID <= \^s_axi_ctrl_bus_bvalid\;
  s_axi_CTRL_BUS_RVALID <= \^s_axi_ctrl_bus_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FDD"
    )
        port map (
      I0 => \^s_axi_ctrl_bus_rvalid\,
      I1 => s_axi_CTRL_BUS_RREADY,
      I2 => s_axi_CTRL_BUS_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_CTRL_BUS_RREADY,
      I1 => \^s_axi_ctrl_bus_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_CTRL_BUS_ARVALID,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF353035"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_CTRL_BUS_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_ctrl_bus_bvalid\,
      I4 => s_axi_CTRL_BUS_BREADY,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_CTRL_BUS_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_CTRL_BUS_WVALID,
      I2 => s_axi_CTRL_BUS_BREADY,
      I3 => \^s_axi_ctrl_bus_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bus_bvalid\,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => \^ap_done\,
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF88888888"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => \phi_ln9_reg_299_reg[2]_1\,
      I3 => \phi_ln9_reg_299_reg[2]_0\,
      I4 => \phi_ln9_reg_299_reg[2]\,
      I5 => Q(1),
      O => D(1)
    );
\inStream_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => int_ap_done_i_2_n_0,
      I1 => s_axi_CTRL_BUS_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => \^ap_done\,
      I4 => int_ap_done,
      O => int_ap_done_i_1_n_0
    );
int_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARADDR(2),
      I1 => s_axi_CTRL_BUS_ARADDR(3),
      I2 => s_axi_CTRL_BUS_ARADDR(1),
      I3 => s_axi_CTRL_BUS_ARADDR(0),
      O => int_ap_done_i_2_n_0
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => int_ap_done,
      R => \^ap_rst_n_inv\
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => int_ap_idle,
      R => \^ap_rst_n_inv\
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => int_ap_ready_i_2_n_0,
      I1 => int_ap_ready_i_3_n_0,
      I2 => outStream_TREADY,
      I3 => int_ap_ready_i_4_n_0,
      O => \^ap_done\
    );
int_ap_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DD0D"
    )
        port map (
      I0 => int_ap_ready_reg_2,
      I1 => outStream_V_user_V_1_ack_in,
      I2 => int_ap_ready_reg_3,
      I3 => outStream_V_keep_V_1_ack_in,
      I4 => int_ap_ready_i_5_n_0,
      I5 => int_ap_ready_i_6_n_0,
      O => int_ap_ready_i_2_n_0
    );
int_ap_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000D0000000D0"
    )
        port map (
      I0 => int_ap_ready_reg_0,
      I1 => outStream_V_last_V_1_ack_in,
      I2 => Q(2),
      I3 => int_ap_ready_i_7_n_0,
      I4 => int_ap_ready_reg_1,
      I5 => outStream_V_dest_V_1_ack_in,
      O => int_ap_ready_i_3_n_0
    );
int_ap_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022202220222"
    )
        port map (
      I0 => int_ap_ready_i_8_n_0,
      I1 => int_ap_ready_i_9_n_0,
      I2 => outStream_V_last_V_1_ack_in,
      I3 => int_ap_ready_reg_0,
      I4 => outStream_V_dest_V_1_ack_in,
      I5 => int_ap_ready_reg_1,
      O => int_ap_ready_i_4_n_0
    );
int_ap_ready_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_ap_ready_i_2_1,
      I1 => outStream_V_data_1_ack_in,
      O => int_ap_ready_i_5_n_0
    );
int_ap_ready_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_ap_ready_i_2_0,
      I1 => outStream_V_strb_V_1_ack_in,
      O => int_ap_ready_i_6_n_0
    );
int_ap_ready_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => int_ap_ready_i_3_0,
      I1 => outStream_V_id_V_1_ack_in,
      O => int_ap_ready_i_7_n_0
    );
int_ap_ready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => outStream_V_keep_V_1_ack_in,
      I1 => int_ap_ready_reg_3,
      I2 => int_ap_ready_i_2_0,
      I3 => outStream_V_strb_V_1_ack_in,
      I4 => int_ap_ready_i_2_1,
      I5 => outStream_V_data_1_ack_in,
      O => int_ap_ready_i_8_n_0
    );
int_ap_ready_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => outStream_V_user_V_1_ack_in,
      I1 => int_ap_ready_reg_2,
      I2 => outStream_V_id_V_1_ack_in,
      I3 => int_ap_ready_i_3_0,
      O => int_ap_ready_i_9_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_done\,
      Q => int_ap_ready,
      R => \^ap_rst_n_inv\
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => int_auto_restart,
      I1 => \^ap_done\,
      I2 => int_ap_start3_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^ap_rst_n_inv\
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(2),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_auto_restart,
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => int_auto_restart,
      R => \^ap_rst_n_inv\
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^ap_rst_n_inv\
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(1),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \p_0_in__0\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WSTRB(0),
      I1 => s_axi_CTRL_BUS_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \waddr_reg_n_0_[1]\,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \p_0_in__0\,
      R => \^ap_rst_n_inv\
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(0),
      I1 => int_isr6_out,
      I2 => \^ap_done\,
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_ier[1]_i_2_n_0\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_BUS_WDATA(1),
      I1 => int_isr6_out,
      I2 => \^ap_done\,
      I3 => \p_0_in__0\,
      I4 => p_1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^ap_rst_n_inv\
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in,
      R => \^ap_rst_n_inv\
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => p_1_in,
      I2 => int_gie_reg_n_0,
      O => interrupt
    );
\phi_ln9_reg_299[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222E666E666E666"
    )
        port map (
      I0 => Q(1),
      I1 => \phi_ln9_reg_299_reg[2]\,
      I2 => \phi_ln9_reg_299_reg[2]_0\,
      I3 => \phi_ln9_reg_299_reg[2]_1\,
      I4 => ap_start,
      I5 => Q(0),
      O => \ap_CS_fsm_reg[1]_1\
    );
\phi_ln9_reg_299[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828F878F878F878"
    )
        port map (
      I0 => Q(1),
      I1 => \phi_ln9_reg_299_reg[2]\,
      I2 => \phi_ln9_reg_299_reg[2]_0\,
      I3 => \phi_ln9_reg_299_reg[2]_1\,
      I4 => ap_start,
      I5 => Q(0),
      O => \ap_CS_fsm_reg[1]_0\
    );
\phi_ln9_reg_299[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A80FF80FF80FF80"
    )
        port map (
      I0 => Q(1),
      I1 => \phi_ln9_reg_299_reg[2]\,
      I2 => \phi_ln9_reg_299_reg[2]_0\,
      I3 => \phi_ln9_reg_299_reg[2]_1\,
      I4 => ap_start,
      I5 => Q(0),
      O => \ap_CS_fsm_reg[1]\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => s_axi_CTRL_BUS_ARADDR(1),
      I2 => s_axi_CTRL_BUS_ARADDR(0),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => s_axi_CTRL_BUS_ARADDR(2),
      I4 => s_axi_CTRL_BUS_ARADDR(3),
      I5 => int_gie_reg_n_0,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F838C80"
    )
        port map (
      I0 => p_1_in,
      I1 => s_axi_CTRL_BUS_ARADDR(3),
      I2 => s_axi_CTRL_BUS_ARADDR(2),
      I3 => \p_0_in__0\,
      I4 => int_ap_done,
      I5 => \rdata[1]_i_2_n_0\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARADDR(0),
      I1 => s_axi_CTRL_BUS_ARADDR(1),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_idle,
      I1 => s_axi_CTRL_BUS_ARADDR(0),
      I2 => s_axi_CTRL_BUS_ARADDR(1),
      I3 => s_axi_CTRL_BUS_ARADDR(3),
      I4 => s_axi_CTRL_BUS_ARADDR(2),
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_ready,
      I1 => s_axi_CTRL_BUS_ARADDR(0),
      I2 => s_axi_CTRL_BUS_ARADDR(1),
      I3 => s_axi_CTRL_BUS_ARADDR(3),
      I4 => s_axi_CTRL_BUS_ARADDR(2),
      O => rdata(3)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_CTRL_BUS_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_auto_restart,
      I1 => s_axi_CTRL_BUS_ARADDR(0),
      I2 => s_axi_CTRL_BUS_ARADDR(1),
      I3 => s_axi_CTRL_BUS_ARADDR(3),
      I4 => s_axi_CTRL_BUS_ARADDR(2),
      O => rdata(7)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_CTRL_BUS_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_CTRL_BUS_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_CTRL_BUS_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_CTRL_BUS_RDATA(3),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_CTRL_BUS_RDATA(4),
      R => '0'
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_CTRL_BUS_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_BUS_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram is
  port (
    line_buff_group_0_va_ce0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_block_pp0_stage0_subdone1_in : out STD_LOGIC;
    \select_ln21_1_reg_1389_reg[0]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[63]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\ : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\ : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\ : in STD_LOGIC;
    icmp_ln15_reg_1308_pp0_iter3_reg : in STD_LOGIC;
    outStream_V_data_1_ack_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram : entity is "yolo_upsamp_top_line_buff_group_0_va_ram";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram is
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_block_pp0_stage0_subdone1_in\ : STD_LOGIC;
  signal \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \^line_buff_group_0_va_ce0\ : STD_LOGIC;
  signal line_buff_group_3_va_d0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal line_buff_group_3_va_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^select_ln21_1_reg_1389_reg[0]\ : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 1664;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 896;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 15;
begin
  WEA(0) <= \^wea\(0);
  ap_block_pp0_stage0_subdone1_in <= \^ap_block_pp0_stage0_subdone1_in\;
  line_buff_group_0_va_ce0 <= \^line_buff_group_0_va_ce0\;
  \select_ln21_1_reg_1389_reg[0]\ <= \^select_ln21_1_reg_1389_reg[0]\;
\icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFB"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\,
      I3 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\,
      I4 => \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0\,
      O => \^ap_block_pp0_stage0_subdone1_in\
    );
\icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F22"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\,
      I1 => icmp_ln15_reg_1308_pp0_iter3_reg,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => ap_enable_reg_pp0_iter3,
      I4 => outStream_V_data_1_ack_in,
      O => \icmp_ln15_reg_1308_pp0_iter2_reg[0]_i_2_n_0\
    );
\inStream_V_dest_V_0_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\,
      I1 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\,
      I2 => \^ap_block_pp0_stage0_subdone1_in\,
      I3 => ap_enable_reg_pp0_iter2,
      O => \^select_ln21_1_reg_1389_reg[0]\
    );
\outStream_V_data_1_payload_A[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(0),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(0),
      O => D(0)
    );
\outStream_V_data_1_payload_A[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(1),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(1),
      O => D(1)
    );
\outStream_V_data_1_payload_A[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(2),
      O => D(2)
    );
\outStream_V_data_1_payload_A[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(3),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(3),
      O => D(3)
    );
\outStream_V_data_1_payload_A[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(4),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(4),
      O => D(4)
    );
\outStream_V_data_1_payload_A[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(5),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(5),
      O => D(5)
    );
\outStream_V_data_1_payload_A[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(6),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(6),
      O => D(6)
    );
\outStream_V_data_1_payload_A[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(7),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(7),
      O => D(7)
    );
\outStream_V_data_1_payload_A[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(8),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(8),
      O => D(8)
    );
\outStream_V_data_1_payload_A[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(9),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(9),
      O => D(9)
    );
\outStream_V_data_1_payload_A[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(10),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(10),
      O => D(10)
    );
\outStream_V_data_1_payload_A[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(11),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(11),
      O => D(11)
    );
\outStream_V_data_1_payload_A[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(12),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(12),
      O => D(12)
    );
\outStream_V_data_1_payload_A[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(13),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(13),
      O => D(13)
    );
\outStream_V_data_1_payload_A[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(14),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(14),
      O => D(14)
    );
\outStream_V_data_1_payload_A[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[63]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_3_va_q0(15),
      O => D(15)
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 4) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => line_buff_group_3_va_d0(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => line_buff_group_3_va_q0(15 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^line_buff_group_0_va_ce0\,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0000"
    );
ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\,
      I1 => \^ap_block_pp0_stage0_subdone1_in\,
      I2 => ap_enable_reg_pp0_iter2,
      O => \^line_buff_group_0_va_ce0\
    );
ram_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(6),
      O => line_buff_group_3_va_d0(6)
    );
ram_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(5),
      O => line_buff_group_3_va_d0(5)
    );
ram_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(4),
      O => line_buff_group_3_va_d0(4)
    );
ram_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(3),
      O => line_buff_group_3_va_d0(3)
    );
ram_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(2),
      O => line_buff_group_3_va_d0(2)
    );
ram_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(1),
      O => line_buff_group_3_va_d0(1)
    );
ram_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(0),
      O => line_buff_group_3_va_d0(0)
    );
\ram_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(15),
      O => line_buff_group_3_va_d0(15)
    );
ram_reg_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^select_ln21_1_reg_1389_reg[0]\,
      O => \^wea\(0)
    );
\ram_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(14),
      O => line_buff_group_3_va_d0(14)
    );
\ram_reg_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(13),
      O => line_buff_group_3_va_d0(13)
    );
\ram_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(12),
      O => line_buff_group_3_va_d0(12)
    );
\ram_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(11),
      O => line_buff_group_3_va_d0(11)
    );
\ram_reg_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(10),
      O => line_buff_group_3_va_d0(10)
    );
\ram_reg_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(9),
      O => line_buff_group_3_va_d0(9)
    );
\ram_reg_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(8),
      O => line_buff_group_3_va_d0(8)
    );
ram_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(7),
      O => line_buff_group_3_va_d0(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[47]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_3 : entity is "yolo_upsamp_top_line_buff_group_0_va_ram";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_3;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_3 is
  signal line_buff_group_2_va_d0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal line_buff_group_2_va_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 1664;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 896;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 15;
begin
\outStream_V_data_1_payload_A[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(0),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(0),
      O => D(0)
    );
\outStream_V_data_1_payload_A[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(1),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(1),
      O => D(1)
    );
\outStream_V_data_1_payload_A[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(2),
      O => D(2)
    );
\outStream_V_data_1_payload_A[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(3),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(3),
      O => D(3)
    );
\outStream_V_data_1_payload_A[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(4),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(4),
      O => D(4)
    );
\outStream_V_data_1_payload_A[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(5),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(5),
      O => D(5)
    );
\outStream_V_data_1_payload_A[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(6),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(6),
      O => D(6)
    );
\outStream_V_data_1_payload_A[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(7),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(7),
      O => D(7)
    );
\outStream_V_data_1_payload_A[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(8),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(8),
      O => D(8)
    );
\outStream_V_data_1_payload_A[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(9),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(9),
      O => D(9)
    );
\outStream_V_data_1_payload_A[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(10),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(10),
      O => D(10)
    );
\outStream_V_data_1_payload_A[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(11),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(11),
      O => D(11)
    );
\outStream_V_data_1_payload_A[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(12),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(12),
      O => D(12)
    );
\outStream_V_data_1_payload_A[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(13),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(13),
      O => D(13)
    );
\outStream_V_data_1_payload_A[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(14),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(14),
      O => D(14)
    );
\outStream_V_data_1_payload_A[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[47]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_2_va_q0(15),
      O => D(15)
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 4) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => line_buff_group_2_va_d0(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => line_buff_group_2_va_q0(15 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => line_buff_group_0_va_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\ram_reg_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(6),
      O => line_buff_group_2_va_d0(6)
    );
\ram_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(5),
      O => line_buff_group_2_va_d0(5)
    );
\ram_reg_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(4),
      O => line_buff_group_2_va_d0(4)
    );
\ram_reg_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(3),
      O => line_buff_group_2_va_d0(3)
    );
\ram_reg_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(2),
      O => line_buff_group_2_va_d0(2)
    );
\ram_reg_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(1),
      O => line_buff_group_2_va_d0(1)
    );
\ram_reg_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(0),
      O => line_buff_group_2_va_d0(0)
    );
\ram_reg_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(15),
      O => line_buff_group_2_va_d0(15)
    );
\ram_reg_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(14),
      O => line_buff_group_2_va_d0(14)
    );
\ram_reg_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(13),
      O => line_buff_group_2_va_d0(13)
    );
\ram_reg_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(12),
      O => line_buff_group_2_va_d0(12)
    );
\ram_reg_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(11),
      O => line_buff_group_2_va_d0(11)
    );
\ram_reg_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(10),
      O => line_buff_group_2_va_d0(10)
    );
\ram_reg_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(9),
      O => line_buff_group_2_va_d0(9)
    );
\ram_reg_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(8),
      O => line_buff_group_2_va_d0(8)
    );
\ram_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(7),
      O => line_buff_group_2_va_d0(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[31]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_4 : entity is "yolo_upsamp_top_line_buff_group_0_va_ram";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_4;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_4 is
  signal line_buff_group_1_va_d0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal line_buff_group_1_va_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 1664;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 896;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 15;
begin
\outStream_V_data_1_payload_A[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(0),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(0),
      O => D(0)
    );
\outStream_V_data_1_payload_A[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(1),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(1),
      O => D(1)
    );
\outStream_V_data_1_payload_A[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(2),
      O => D(2)
    );
\outStream_V_data_1_payload_A[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(3),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(3),
      O => D(3)
    );
\outStream_V_data_1_payload_A[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(4),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(4),
      O => D(4)
    );
\outStream_V_data_1_payload_A[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(5),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(5),
      O => D(5)
    );
\outStream_V_data_1_payload_A[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(6),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(6),
      O => D(6)
    );
\outStream_V_data_1_payload_A[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(7),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(7),
      O => D(7)
    );
\outStream_V_data_1_payload_A[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(8),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(8),
      O => D(8)
    );
\outStream_V_data_1_payload_A[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(9),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(9),
      O => D(9)
    );
\outStream_V_data_1_payload_A[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(10),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(10),
      O => D(10)
    );
\outStream_V_data_1_payload_A[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(11),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(11),
      O => D(11)
    );
\outStream_V_data_1_payload_A[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(12),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(12),
      O => D(12)
    );
\outStream_V_data_1_payload_A[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(13),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(13),
      O => D(13)
    );
\outStream_V_data_1_payload_A[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(14),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(14),
      O => D(14)
    );
\outStream_V_data_1_payload_A[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[31]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_1_va_q0(15),
      O => D(15)
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 4) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => line_buff_group_1_va_d0(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => line_buff_group_1_va_q0(15 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => line_buff_group_0_va_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\ram_reg_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(6),
      O => line_buff_group_1_va_d0(6)
    );
\ram_reg_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(5),
      O => line_buff_group_1_va_d0(5)
    );
\ram_reg_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(4),
      O => line_buff_group_1_va_d0(4)
    );
\ram_reg_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(3),
      O => line_buff_group_1_va_d0(3)
    );
\ram_reg_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(2),
      O => line_buff_group_1_va_d0(2)
    );
\ram_reg_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(1),
      O => line_buff_group_1_va_d0(1)
    );
\ram_reg_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(0),
      O => line_buff_group_1_va_d0(0)
    );
\ram_reg_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(15),
      O => line_buff_group_1_va_d0(15)
    );
\ram_reg_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(14),
      O => line_buff_group_1_va_d0(14)
    );
\ram_reg_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(13),
      O => line_buff_group_1_va_d0(13)
    );
\ram_reg_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(12),
      O => line_buff_group_1_va_d0(12)
    );
\ram_reg_i_5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(11),
      O => line_buff_group_1_va_d0(11)
    );
\ram_reg_i_6__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(10),
      O => line_buff_group_1_va_d0(10)
    );
\ram_reg_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(9),
      O => line_buff_group_1_va_d0(9)
    );
\ram_reg_i_8__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(8),
      O => line_buff_group_1_va_d0(8)
    );
\ram_reg_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(7),
      O => line_buff_group_1_va_d0(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[15]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_5 : entity is "yolo_upsamp_top_line_buff_group_0_va_ram";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_5;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_5 is
  signal line_buff_group_0_va_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ram_reg_i_10__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_11__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_12__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_13__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_14__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_15__2_n_0\ : STD_LOGIC;
  signal \ram_reg_i_16__2_n_0\ : STD_LOGIC;
  signal ram_reg_i_17_n_0 : STD_LOGIC;
  signal ram_reg_i_18_n_0 : STD_LOGIC;
  signal ram_reg_i_19_n_0 : STD_LOGIC;
  signal ram_reg_i_20_n_0 : STD_LOGIC;
  signal ram_reg_i_21_n_0 : STD_LOGIC;
  signal ram_reg_i_22_n_0 : STD_LOGIC;
  signal ram_reg_i_23_n_0 : STD_LOGIC;
  signal ram_reg_i_24_n_0 : STD_LOGIC;
  signal \ram_reg_i_9__2_n_0\ : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 1664;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 896;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 15;
begin
\outStream_V_data_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(0),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(0),
      O => D(0)
    );
\outStream_V_data_1_payload_A[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(10),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(10),
      O => D(10)
    );
\outStream_V_data_1_payload_A[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(11),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(11),
      O => D(11)
    );
\outStream_V_data_1_payload_A[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(12),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(12),
      O => D(12)
    );
\outStream_V_data_1_payload_A[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(13),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(13),
      O => D(13)
    );
\outStream_V_data_1_payload_A[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(14),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(14),
      O => D(14)
    );
\outStream_V_data_1_payload_A[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(15),
      O => D(15)
    );
\outStream_V_data_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(1),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(1),
      O => D(1)
    );
\outStream_V_data_1_payload_A[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(2),
      O => D(2)
    );
\outStream_V_data_1_payload_A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(3),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(3),
      O => D(3)
    );
\outStream_V_data_1_payload_A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(4),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(4),
      O => D(4)
    );
\outStream_V_data_1_payload_A[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(5),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(5),
      O => D(5)
    );
\outStream_V_data_1_payload_A[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(6),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(6),
      O => D(6)
    );
\outStream_V_data_1_payload_A[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(7),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(7),
      O => D(7)
    );
\outStream_V_data_1_payload_A[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(8),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(8),
      O => D(8)
    );
\outStream_V_data_1_payload_A[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAA2AA"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(9),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \outStream_V_data_1_payload_B_reg[15]\,
      I3 => select_ln21_1_reg_1389_pp0_iter2_reg,
      I4 => line_buff_group_0_va_q0(9),
      O => D(9)
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 4) => ADDRARDADDR(6 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15) => \ram_reg_i_9__2_n_0\,
      DIADI(14) => \ram_reg_i_10__2_n_0\,
      DIADI(13) => \ram_reg_i_11__2_n_0\,
      DIADI(12) => \ram_reg_i_12__2_n_0\,
      DIADI(11) => \ram_reg_i_13__2_n_0\,
      DIADI(10) => \ram_reg_i_14__2_n_0\,
      DIADI(9) => \ram_reg_i_15__2_n_0\,
      DIADI(8) => \ram_reg_i_16__2_n_0\,
      DIADI(7) => ram_reg_i_17_n_0,
      DIADI(6) => ram_reg_i_18_n_0,
      DIADI(5) => ram_reg_i_19_n_0,
      DIADI(4) => ram_reg_i_20_n_0,
      DIADI(3) => ram_reg_i_21_n_0,
      DIADI(2) => ram_reg_i_22_n_0,
      DIADI(1) => ram_reg_i_23_n_0,
      DIADI(0) => ram_reg_i_24_n_0,
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => line_buff_group_0_va_q0(15 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => line_buff_group_0_va_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\ram_reg_i_10__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(14),
      O => \ram_reg_i_10__2_n_0\
    );
\ram_reg_i_11__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(13),
      O => \ram_reg_i_11__2_n_0\
    );
\ram_reg_i_12__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(12),
      O => \ram_reg_i_12__2_n_0\
    );
\ram_reg_i_13__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(11),
      O => \ram_reg_i_13__2_n_0\
    );
\ram_reg_i_14__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(10),
      O => \ram_reg_i_14__2_n_0\
    );
\ram_reg_i_15__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(9),
      O => \ram_reg_i_15__2_n_0\
    );
\ram_reg_i_16__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(8),
      O => \ram_reg_i_16__2_n_0\
    );
ram_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(7),
      O => ram_reg_i_17_n_0
    );
ram_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(6),
      O => ram_reg_i_18_n_0
    );
ram_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(5),
      O => ram_reg_i_19_n_0
    );
ram_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(4),
      O => ram_reg_i_20_n_0
    );
ram_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(3),
      O => ram_reg_i_21_n_0
    );
ram_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(2),
      O => ram_reg_i_22_n_0
    );
ram_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(1),
      O => ram_reg_i_23_n_0
    );
ram_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(0),
      O => ram_reg_i_24_n_0
    );
\ram_reg_i_9__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => inStream_V_data_0_sel,
      I2 => ram_reg_0(15),
      O => \ram_reg_i_9__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1 is
  port (
    p_5_in : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \col_assign_reg_442_reg[1]\ : out STD_LOGIC;
    \xor_ln52_reg_1326_reg[0]\ : out STD_LOGIC;
    \or_ln17_reg_1351_reg[0]\ : out STD_LOGIC;
    \indvar_flatten_reg_453_reg[2]\ : out STD_LOGIC;
    \input_ch_idx_0_reg_475_reg[1]\ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    p_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_block_pp0_stage0_subdone1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1 : in STD_LOGIC;
    or_ln17_reg_1351 : in STD_LOGIC;
    p_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    p_3 : in STD_LOGIC;
    p_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xor_ln52_reg_1326 : in STD_LOGIC;
    icmp_ln19_reg_1337 : in STD_LOGIC;
    icmp_ln17_reg_1317 : in STD_LOGIC;
    \col_stride_0_reg_464_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \col_stride_0_reg_464_reg[0]_0\ : in STD_LOGIC;
    ram_reg : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1 : entity is "yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1 is
  signal \^a\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^col_assign_reg_442_reg[1]\ : STD_LOGIC;
  signal grp_fu_1216_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^indvar_flatten_reg_453_reg[2]\ : STD_LOGIC;
  signal \^input_ch_idx_0_reg_475_reg[1]\ : STD_LOGIC;
  signal \^or_ln17_reg_1351_reg[0]\ : STD_LOGIC;
  signal \^p_5_in\ : STD_LOGIC;
  signal p_i_12_n_0 : STD_LOGIC;
  signal p_i_13_n_0 : STD_LOGIC;
  signal p_i_15_n_0 : STD_LOGIC;
  signal p_i_16_n_0 : STD_LOGIC;
  signal \^xor_ln52_reg_1326_reg[0]\ : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 7 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of p_i_14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of p_i_16 : label is "soft_lutpair7";
begin
  A(3 downto 0) <= \^a\(3 downto 0);
  D(3 downto 0) <= \^d\(3 downto 0);
  \col_assign_reg_442_reg[1]\ <= \^col_assign_reg_442_reg[1]\;
  \indvar_flatten_reg_453_reg[2]\ <= \^indvar_flatten_reg_453_reg[2]\;
  \input_ch_idx_0_reg_475_reg[1]\ <= \^input_ch_idx_0_reg_475_reg[1]\;
  \or_ln17_reg_1351_reg[0]\ <= \^or_ln17_reg_1351_reg[0]\;
  p_5_in <= \^p_5_in\;
  \xor_ln52_reg_1326_reg[0]\ <= \^xor_ln52_reg_1326_reg[0]\;
\col_stride_0_reg_464[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \col_stride_0_reg_464_reg[0]\(1),
      I1 => \col_stride_0_reg_464_reg[0]\(2),
      I2 => \col_stride_0_reg_464_reg[0]_0\,
      I3 => \col_stride_0_reg_464_reg[0]\(0),
      I4 => \col_stride_0_reg_464_reg[0]\(4),
      I5 => \col_stride_0_reg_464_reg[0]\(3),
      O => \^indvar_flatten_reg_453_reg[2]\
    );
\col_stride_0_reg_464[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => p_5(1),
      I1 => p_5(2),
      I2 => p_5(3),
      I3 => p_5(0),
      O => \^input_ch_idx_0_reg_475_reg[1]\
    );
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 4) => B"00000000000000000000000000",
      A(3 downto 0) => \^a\(3 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000001101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 4) => B"00000000000000000000000000000000000000000000",
      C(3 downto 0) => \^d\(3 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^p_5_in\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => p_0,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 7) => NLW_p_RnM_P_UNCONNECTED(47 downto 7),
      P(6 downto 0) => grp_fu_1216_p3(6 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => Q(0),
      I2 => p_1,
      O => \^p_5_in\
    );
p_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA5655A6AA"
    )
        port map (
      I0 => \^xor_ln52_reg_1326_reg[0]\,
      I1 => p_2(0),
      I2 => p_3,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => p_4(0),
      I5 => or_ln17_reg_1351,
      O => \^d\(0)
    );
p_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAAAEAFAFAAAFA"
    )
        port map (
      I0 => or_ln17_reg_1351,
      I1 => \^indvar_flatten_reg_453_reg[2]\,
      I2 => xor_ln52_reg_1326,
      I3 => icmp_ln19_reg_1337,
      I4 => icmp_ln17_reg_1317,
      I5 => \^input_ch_idx_0_reg_475_reg[1]\,
      O => \^or_ln17_reg_1351_reg[0]\
    );
p_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10DF"
    )
        port map (
      I0 => p_2(3),
      I1 => p_3,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => p_4(3),
      O => p_i_12_n_0
    );
p_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10DF"
    )
        port map (
      I0 => p_2(2),
      I1 => p_3,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => p_4(2),
      O => p_i_13_n_0
    );
p_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => p_4(1),
      I1 => p_3,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => p_2(1),
      O => \^col_assign_reg_442_reg[1]\
    );
p_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF10DFFFFFFFFF"
    )
        port map (
      I0 => p_2(0),
      I1 => p_3,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => p_4(0),
      I4 => or_ln17_reg_1351,
      I5 => \^xor_ln52_reg_1326_reg[0]\,
      O => p_i_15_n_0
    );
p_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_3,
      I1 => ap_enable_reg_pp0_iter2,
      O => p_i_16_n_0
    );
p_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \^indvar_flatten_reg_453_reg[2]\,
      I1 => xor_ln52_reg_1326,
      I2 => icmp_ln19_reg_1337,
      I3 => icmp_ln17_reg_1317,
      O => \^xor_ln52_reg_1326_reg[0]\
    );
p_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5(3),
      I1 => \^or_ln17_reg_1351_reg[0]\,
      O => \^a\(3)
    );
p_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5(2),
      I1 => \^or_ln17_reg_1351_reg[0]\,
      O => \^a\(2)
    );
p_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_5(1),
      I1 => \^or_ln17_reg_1351_reg[0]\,
      O => \^a\(1)
    );
p_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^or_ln17_reg_1351_reg[0]\,
      I1 => p_5(0),
      O => \^a\(0)
    );
p_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111E11"
    )
        port map (
      I0 => or_ln17_reg_1351,
      I1 => p_i_12_n_0,
      I2 => p_i_13_n_0,
      I3 => \^col_assign_reg_442_reg[1]\,
      I4 => p_i_15_n_0,
      O => \^d\(3)
    );
p_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2000000E2FF1D"
    )
        port map (
      I0 => p_2(1),
      I1 => p_i_16_n_0,
      I2 => p_4(1),
      I3 => p_i_15_n_0,
      I4 => p_i_13_n_0,
      I5 => or_ln17_reg_1351,
      O => \^d\(2)
    );
p_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444434433334333"
    )
        port map (
      I0 => or_ln17_reg_1351,
      I1 => p_i_15_n_0,
      I2 => p_2(1),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => p_3,
      I5 => p_4(1),
      O => \^d\(1)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(6),
      I1 => ram_reg,
      I2 => P(6),
      O => ADDRARDADDR(6)
    );
ram_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(5),
      I1 => ram_reg,
      I2 => P(5),
      O => ADDRARDADDR(5)
    );
ram_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(4),
      I1 => ram_reg,
      I2 => P(4),
      O => ADDRARDADDR(4)
    );
ram_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(3),
      I1 => ram_reg,
      I2 => P(3),
      O => ADDRARDADDR(3)
    );
ram_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(2),
      I1 => ram_reg,
      I2 => P(2),
      O => ADDRARDADDR(2)
    );
ram_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(1),
      I1 => ram_reg,
      I2 => P(1),
      O => ADDRARDADDR(1)
    );
ram_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_fu_1216_p3(0),
      I1 => ram_reg,
      I2 => P(0),
      O => ADDRARDADDR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \icmp_ln15_reg_1308_reg[0]\ : out STD_LOGIC;
    p_5_in : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_block_pp0_stage0_subdone1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0 : entity is "yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0 is
  signal \^icmp_ln15_reg_1308_reg[0]\ : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 7 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-11 {cell *THIS*}}";
begin
  \icmp_ln15_reg_1308_reg[0]\ <= \^icmp_ln15_reg_1308_reg[0]\;
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 4) => B"00000000000000000000000000",
      A(3 downto 0) => A(3 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000001101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 4) => B"00000000000000000000000000000000000000000000",
      C(3 downto 0) => D(3 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => p_5_in,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => \^icmp_ln15_reg_1308_reg[0]\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 7) => NLW_p_RnM_P_UNCONNECTED(47 downto 7),
      P(6 downto 0) => P(6 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
p_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_block_pp0_stage0_subdone1_in,
      I3 => Q(0),
      O => \^icmp_ln15_reg_1308_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[15]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va : entity is "yolo_upsamp_top_line_buff_group_0_va";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va is
begin
yolo_upsamp_top_line_buff_group_0_va_ram_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_5
     port map (
      ADDRARDADDR(6 downto 0) => ADDRARDADDR(6 downto 0),
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      WEA(0) => WEA(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[15]\ => \outStream_V_data_1_payload_B_reg[15]\,
      ram_reg_0(15 downto 0) => ram_reg(15 downto 0),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[31]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_0 : entity is "yolo_upsamp_top_line_buff_group_0_va";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_0;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_0 is
begin
yolo_upsamp_top_line_buff_group_0_va_ram_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_4
     port map (
      ADDRARDADDR(6 downto 0) => ADDRARDADDR(6 downto 0),
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      WEA(0) => WEA(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[31]\ => \outStream_V_data_1_payload_B_reg[31]\,
      ram_reg_0(15 downto 0) => ram_reg(15 downto 0),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    line_buff_group_0_va_ce0 : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[47]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_1 : entity is "yolo_upsamp_top_line_buff_group_0_va";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_1;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_1 is
begin
yolo_upsamp_top_line_buff_group_0_va_ram_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram_3
     port map (
      ADDRARDADDR(6 downto 0) => ADDRARDADDR(6 downto 0),
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      WEA(0) => WEA(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[47]\ => \outStream_V_data_1_payload_B_reg[47]\,
      ram_reg_0(15 downto 0) => ram_reg(15 downto 0),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_2 is
  port (
    line_buff_group_0_va_ce0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_block_pp0_stage0_subdone1_in : out STD_LOGIC;
    \select_ln21_1_reg_1389_reg[0]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \outStream_V_data_1_payload_B_reg[63]\ : in STD_LOGIC;
    select_ln21_1_reg_1389_pp0_iter2_reg : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\ : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\ : in STD_LOGIC;
    \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\ : in STD_LOGIC;
    icmp_ln15_reg_1308_pp0_iter3_reg : in STD_LOGIC;
    outStream_V_data_1_ack_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inStream_V_data_0_sel : in STD_LOGIC;
    ram_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_2 : entity is "yolo_upsamp_top_line_buff_group_0_va";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_2;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_2 is
begin
yolo_upsamp_top_line_buff_group_0_va_ram_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_ram
     port map (
      ADDRARDADDR(6 downto 0) => ADDRARDADDR(6 downto 0),
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      WEA(0) => WEA(0),
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15 downto 0) => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15 downto 0),
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\ => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\ => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\ => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\ => \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\,
      icmp_ln15_reg_1308_pp0_iter3_reg => icmp_ln15_reg_1308_pp0_iter3_reg,
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      outStream_V_data_1_ack_in => outStream_V_data_1_ack_in,
      \outStream_V_data_1_payload_B_reg[63]\ => \outStream_V_data_1_payload_B_reg[63]\,
      ram_reg_0(15 downto 0) => ram_reg(15 downto 0),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg,
      \select_ln21_1_reg_1389_reg[0]\ => \select_ln21_1_reg_1389_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1 is
  port (
    p_5_in : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \col_assign_reg_442_reg[1]\ : out STD_LOGIC;
    \xor_ln52_reg_1326_reg[0]\ : out STD_LOGIC;
    \or_ln17_reg_1351_reg[0]\ : out STD_LOGIC;
    \indvar_flatten_reg_453_reg[2]\ : out STD_LOGIC;
    \input_ch_idx_0_reg_475_reg[1]\ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \^p\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_block_pp0_stage0_subdone1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0 : in STD_LOGIC;
    or_ln17_reg_1351 : in STD_LOGIC;
    p_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    p_2 : in STD_LOGIC;
    p_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xor_ln52_reg_1326 : in STD_LOGIC;
    icmp_ln19_reg_1337 : in STD_LOGIC;
    icmp_ln17_reg_1317 : in STD_LOGIC;
    \col_stride_0_reg_464_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \col_stride_0_reg_464_reg[0]_0\ : in STD_LOGIC;
    ram_reg : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1 : entity is "yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1 is
begin
yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_DSP48_1
     port map (
      A(3 downto 0) => A(3 downto 0),
      ADDRARDADDR(6 downto 0) => ADDRARDADDR(6 downto 0),
      D(3 downto 0) => D(3 downto 0),
      P(6 downto 0) => P(6 downto 0),
      Q(0) => Q(0),
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      \col_assign_reg_442_reg[1]\ => \col_assign_reg_442_reg[1]\,
      \col_stride_0_reg_464_reg[0]\(4 downto 0) => \col_stride_0_reg_464_reg[0]\(4 downto 0),
      \col_stride_0_reg_464_reg[0]_0\ => \col_stride_0_reg_464_reg[0]_0\,
      icmp_ln17_reg_1317 => icmp_ln17_reg_1317,
      icmp_ln19_reg_1337 => icmp_ln19_reg_1337,
      \indvar_flatten_reg_453_reg[2]\ => \indvar_flatten_reg_453_reg[2]\,
      \input_ch_idx_0_reg_475_reg[1]\ => \input_ch_idx_0_reg_475_reg[1]\,
      or_ln17_reg_1351 => or_ln17_reg_1351,
      \or_ln17_reg_1351_reg[0]\ => \or_ln17_reg_1351_reg[0]\,
      p_0 => \^p\,
      p_1 => p_0,
      p_2(3 downto 0) => p_1(3 downto 0),
      p_3 => p_2,
      p_4(3 downto 0) => p_3(3 downto 0),
      p_5(3 downto 0) => p_4(3 downto 0),
      p_5_in => p_5_in,
      ram_reg => ram_reg,
      xor_ln52_reg_1326 => xor_ln52_reg_1326,
      \xor_ln52_reg_1326_reg[0]\ => \xor_ln52_reg_1326_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \icmp_ln15_reg_1308_reg[0]\ : out STD_LOGIC;
    p_5_in : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \^p\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_block_pp0_stage0_subdone1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1 : entity is "yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1 is
begin
yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_DSP48_0
     port map (
      A(3 downto 0) => A(3 downto 0),
      D(3 downto 0) => D(3 downto 0),
      P(6 downto 0) => P(6 downto 0),
      Q(0) => Q(0),
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      \icmp_ln15_reg_1308_reg[0]\ => \icmp_ln15_reg_1308_reg[0]\,
      p_0 => \^p\,
      p_5_in => p_5_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0_yolo_upsamp_top is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "yolo_upsamp_top";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0100000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0000001";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b1000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "7'b0010000";
  attribute hls_module : string;
  attribute hls_module of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top : entity is "yes";
end design_1_yolo_upsamp_top_0_0_yolo_upsamp_top;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0_yolo_upsamp_top is
  signal \<const0>\ : STD_LOGIC;
  signal add_ln19_1_fu_640_p2 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal add_ln21_1_fu_1050_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal and_ln52_10_fu_628_p2 : STD_LOGIC;
  signal and_ln52_10_reg_1342 : STD_LOGIC;
  signal \and_ln52_10_reg_1342[0]_i_1_n_0\ : STD_LOGIC;
  signal \and_ln52_10_reg_1342[0]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[6]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[6]_i_3_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm193_out : STD_LOGIC;
  signal ap_NS_fsm194_out : STD_LOGIC;
  signal ap_NS_fsm195_out : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone1_in : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_reg_n_0 : STD_LOGIC;
  signal ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160 : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0\ : STD_LOGIC;
  signal ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0\ : STD_LOGIC;
  signal ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0\ : STD_LOGIC;
  signal ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal col_assign_reg_442 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \col_stride_0_reg_464[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_stride_0_reg_464[1]_i_5_n_0\ : STD_LOGIC;
  signal \col_stride_0_reg_464_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_stride_0_reg_464_reg_n_0_[1]\ : STD_LOGIC;
  signal curr_output_last_V_reg_1398 : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_1_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_2_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_3_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_4_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_5_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_6_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_7_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_8_n_0\ : STD_LOGIC;
  signal \curr_output_last_V_reg_1398[0]_i_9_n_0\ : STD_LOGIC;
  signal curr_output_last_V_reg_1398_pp0_iter2_reg : STD_LOGIC;
  signal grp_fu_1207_p3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal icmp_ln15_fu_598_p2 : STD_LOGIC;
  signal \icmp_ln15_reg_1308[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal icmp_ln15_reg_1308_pp0_iter3_reg : STD_LOGIC;
  signal \icmp_ln15_reg_1308_reg_n_0_[0]\ : STD_LOGIC;
  signal icmp_ln17_fu_610_p2 : STD_LOGIC;
  signal icmp_ln17_reg_1317 : STD_LOGIC;
  signal \icmp_ln17_reg_1317[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln17_reg_1317[0]_i_3_n_0\ : STD_LOGIC;
  signal icmp_ln19_fu_622_p2 : STD_LOGIC;
  signal icmp_ln19_reg_1337 : STD_LOGIC;
  signal \^instream_tready\ : STD_LOGIC;
  signal inStream_V_data_0_ack_in : STD_LOGIC;
  signal inStream_V_data_0_load_A : STD_LOGIC;
  signal inStream_V_data_0_load_B : STD_LOGIC;
  signal inStream_V_data_0_payload_A : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal inStream_V_data_0_payload_B : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal inStream_V_data_0_sel : STD_LOGIC;
  signal inStream_V_data_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_0_sel_wr : STD_LOGIC;
  signal inStream_V_data_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_data_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_data_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_dest_V_0_data_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal inStream_V_dest_V_0_load_A : STD_LOGIC;
  signal inStream_V_dest_V_0_load_B : STD_LOGIC;
  signal inStream_V_dest_V_0_payload_A : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal inStream_V_dest_V_0_payload_B : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal inStream_V_dest_V_0_sel : STD_LOGIC;
  signal inStream_V_dest_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_dest_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_dest_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_dest_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_dest_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_dest_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_id_V_0_ack_in : STD_LOGIC;
  signal inStream_V_id_V_0_data_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal inStream_V_id_V_0_load_A : STD_LOGIC;
  signal inStream_V_id_V_0_load_B : STD_LOGIC;
  signal inStream_V_id_V_0_payload_A : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal inStream_V_id_V_0_payload_B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal inStream_V_id_V_0_sel : STD_LOGIC;
  signal inStream_V_id_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_id_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_id_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_id_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_id_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_id_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_keep_V_0_ack_in : STD_LOGIC;
  signal inStream_V_keep_V_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_keep_V_0_load_A : STD_LOGIC;
  signal inStream_V_keep_V_0_load_B : STD_LOGIC;
  signal inStream_V_keep_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_keep_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_keep_V_0_sel : STD_LOGIC;
  signal inStream_V_keep_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_keep_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_keep_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_keep_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_keep_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_keep_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_strb_V_0_ack_in : STD_LOGIC;
  signal inStream_V_strb_V_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_strb_V_0_load_A : STD_LOGIC;
  signal inStream_V_strb_V_0_load_B : STD_LOGIC;
  signal inStream_V_strb_V_0_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_strb_V_0_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal inStream_V_strb_V_0_sel : STD_LOGIC;
  signal inStream_V_strb_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_strb_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_strb_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_strb_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_strb_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_strb_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_user_V_0_ack_in : STD_LOGIC;
  signal inStream_V_user_V_0_data_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal inStream_V_user_V_0_payload_A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inStream_V_user_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_user_V_0_payload_A[1]_i_1_n_0\ : STD_LOGIC;
  signal inStream_V_user_V_0_payload_B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inStream_V_user_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_user_V_0_payload_B[1]_i_1_n_0\ : STD_LOGIC;
  signal inStream_V_user_V_0_sel : STD_LOGIC;
  signal inStream_V_user_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_user_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_user_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_user_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_user_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_user_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387[0]_i_2_n_0\ : STD_LOGIC;
  signal indvar_flatten136_reg_387_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten136_reg_387_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal indvar_flatten27_reg_409 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \indvar_flatten27_reg_409[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409[8]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409[8]_i_4_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409[8]_i_7_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409[8]_i_8_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409[8]_i_9_n_0\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[3]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[4]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[5]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[6]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[7]\ : STD_LOGIC;
  signal \indvar_flatten27_reg_409_reg_n_0_[8]\ : STD_LOGIC;
  signal \indvar_flatten72_reg_398[8]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten72_reg_398[9]_i_2_n_0\ : STD_LOGIC;
  signal indvar_flatten72_reg_398_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal indvar_flatten_reg_453 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \indvar_flatten_reg_453[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[3]\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[4]\ : STD_LOGIC;
  signal \indvar_flatten_reg_453_reg_n_0_[5]\ : STD_LOGIC;
  signal input_ch_idx_0_reg_475 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal input_ch_idx_fu_1044_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal line_buff_group_0_va_ce0 : STD_LOGIC;
  signal line_buff_group_0_va_we0 : STD_LOGIC;
  signal line_buff_group_3_va_U_n_19 : STD_LOGIC;
  signal line_buff_group_3_va_address0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal or_ln17_reg_1351 : STD_LOGIC;
  signal \^outstream_tvalid\ : STD_LOGIC;
  signal outStream_V_data_1_ack_in : STD_LOGIC;
  signal outStream_V_data_1_load_A : STD_LOGIC;
  signal outStream_V_data_1_load_B : STD_LOGIC;
  signal outStream_V_data_1_payload_A : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal outStream_V_data_1_payload_B : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal outStream_V_data_1_sel : STD_LOGIC;
  signal outStream_V_data_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_data_1_sel_wr : STD_LOGIC;
  signal outStream_V_data_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal outStream_V_data_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \outStream_V_data_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_data_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_dest_V_1_ack_in : STD_LOGIC;
  signal outStream_V_dest_V_1_load_A : STD_LOGIC;
  signal outStream_V_dest_V_1_load_B : STD_LOGIC;
  signal outStream_V_dest_V_1_payload_A : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal outStream_V_dest_V_1_payload_B : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal outStream_V_dest_V_1_sel : STD_LOGIC;
  signal outStream_V_dest_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_dest_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_dest_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_dest_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_dest_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_id_V_1_ack_in : STD_LOGIC;
  signal outStream_V_id_V_1_load_A : STD_LOGIC;
  signal outStream_V_id_V_1_load_B : STD_LOGIC;
  signal outStream_V_id_V_1_payload_A : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal outStream_V_id_V_1_payload_B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal outStream_V_id_V_1_sel : STD_LOGIC;
  signal outStream_V_id_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_id_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_id_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_id_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_id_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_id_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_keep_V_1_ack_in : STD_LOGIC;
  signal outStream_V_keep_V_1_load_A : STD_LOGIC;
  signal outStream_V_keep_V_1_load_B : STD_LOGIC;
  signal outStream_V_keep_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal outStream_V_keep_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal outStream_V_keep_V_1_sel : STD_LOGIC;
  signal outStream_V_keep_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_keep_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_keep_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_keep_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_keep_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_keep_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_last_V_1_ack_in : STD_LOGIC;
  signal outStream_V_last_V_1_payload_A : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_last_V_1_payload_B : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_last_V_1_sel : STD_LOGIC;
  signal outStream_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_last_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_strb_V_1_ack_in : STD_LOGIC;
  signal outStream_V_strb_V_1_load_A : STD_LOGIC;
  signal outStream_V_strb_V_1_load_B : STD_LOGIC;
  signal outStream_V_strb_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal outStream_V_strb_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal outStream_V_strb_V_1_sel : STD_LOGIC;
  signal outStream_V_strb_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_strb_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_strb_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_strb_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_strb_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_strb_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_user_V_1_ack_in : STD_LOGIC;
  signal outStream_V_user_V_1_payload_A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \outStream_V_user_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_payload_A[1]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_user_V_1_payload_B : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \outStream_V_user_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_payload_B[1]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_user_V_1_sel : STD_LOGIC;
  signal outStream_V_user_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_user_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_user_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_user_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in2_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal phi_ln10_reg_321 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal phi_ln10_reg_3210 : STD_LOGIC;
  signal \phi_ln10_reg_321[0]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln10_reg_321[1]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln10_reg_321[2]_i_1_n_0\ : STD_LOGIC;
  signal phi_ln11_reg_343 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal phi_ln11_reg_3430 : STD_LOGIC;
  signal \phi_ln11_reg_343[0]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln11_reg_343[1]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln11_reg_343[2]_i_1_n_0\ : STD_LOGIC;
  signal phi_ln12_reg_365 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal phi_ln12_reg_3650 : STD_LOGIC;
  signal \phi_ln12_reg_365[0]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln12_reg_365[1]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln12_reg_365[2]_i_1_n_0\ : STD_LOGIC;
  signal \phi_ln9_reg_299_reg_n_0_[0]\ : STD_LOGIC;
  signal \phi_ln9_reg_299_reg_n_0_[1]\ : STD_LOGIC;
  signal \phi_ln9_reg_299_reg_n_0_[2]\ : STD_LOGIC;
  signal row_idx_0_reg_420 : STD_LOGIC;
  signal \row_idx_0_reg_420[0]_i_1_n_0\ : STD_LOGIC;
  signal row_idx_0_reg_420_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal row_idx_fu_706_p2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \row_stride_0_reg_431_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_stride_0_reg_431_reg_n_0_[1]\ : STD_LOGIC;
  signal \^s_axi_ctrl_bus_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal select_ln17_4_fu_876_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln17_5_fu_660_p3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \select_ln21_1_reg_1389[0]_i_1_n_0\ : STD_LOGIC;
  signal \select_ln21_1_reg_1389[0]_i_2_n_0\ : STD_LOGIC;
  signal \select_ln21_1_reg_1389[0]_i_3_n_0\ : STD_LOGIC;
  signal \select_ln21_1_reg_1389[0]_i_4_n_0\ : STD_LOGIC;
  signal \select_ln21_1_reg_1389[0]_i_5_n_0\ : STD_LOGIC;
  signal \select_ln21_1_reg_1389[0]_i_6_n_0\ : STD_LOGIC;
  signal select_ln21_1_reg_1389_pp0_iter2_reg : STD_LOGIC;
  signal \select_ln21_1_reg_1389_reg_n_0_[0]\ : STD_LOGIC;
  signal select_ln21_3_fu_1012_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln21_fu_972_p3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal select_ln52_4_fu_921_p3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal select_ln52_4_reg_1377 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tmp_data_1_fu_1194_p5 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tmp_dest_V_fu_160 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tmp_id_V_fu_176 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tmp_keep_V_fu_164 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_strb_V_fu_168 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_user_V_fu_172 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xor_ln52_fu_616_p2 : STD_LOGIC;
  signal xor_ln52_reg_1326 : STD_LOGIC;
  signal yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2 : STD_LOGIC;
  signal yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3 : STD_LOGIC;
  signal yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9 : STD_LOGIC;
  signal yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7 : STD_LOGIC;
  signal \NLW_indvar_flatten136_reg_387_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_indvar_flatten136_reg_387_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \and_ln52_10_reg_1342[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter3_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \col_stride_0_reg_464[1]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \col_stride_0_reg_464[1]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \curr_output_last_V_reg_1398[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \curr_output_last_V_reg_1398[0]_i_8\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \curr_output_last_V_reg_1398[0]_i_9\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \icmp_ln15_reg_1308[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \icmp_ln17_reg_1317[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \icmp_ln17_reg_1317[0]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of inStream_V_data_0_sel_wr_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \inStream_V_data_0_state[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of inStream_V_dest_V_0_sel_rd_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \inStream_V_dest_V_0_state[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of inStream_V_id_V_0_sel_rd_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of inStream_V_id_V_0_sel_wr_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \inStream_V_id_V_0_state[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of inStream_V_keep_V_0_sel_rd_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of inStream_V_keep_V_0_sel_wr_i_1 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \inStream_V_keep_V_0_state[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of inStream_V_strb_V_0_sel_rd_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of inStream_V_strb_V_0_sel_wr_i_1 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \inStream_V_strb_V_0_state[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of inStream_V_user_V_0_sel_rd_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of inStream_V_user_V_0_sel_wr_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \inStream_V_user_V_0_state[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[8]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[8]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \indvar_flatten27_reg_409[8]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[8]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \indvar_flatten72_reg_398[9]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_453[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_453[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_453[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_453[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \input_ch_idx_0_reg_475[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \input_ch_idx_0_reg_475[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \input_ch_idx_0_reg_475[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \outStream_TDATA[0]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \outStream_TDATA[10]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \outStream_TDATA[11]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \outStream_TDATA[12]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \outStream_TDATA[13]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \outStream_TDATA[14]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \outStream_TDATA[15]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \outStream_TDATA[16]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \outStream_TDATA[17]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \outStream_TDATA[18]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \outStream_TDATA[19]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \outStream_TDATA[1]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \outStream_TDATA[20]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \outStream_TDATA[21]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \outStream_TDATA[22]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \outStream_TDATA[23]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \outStream_TDATA[24]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \outStream_TDATA[25]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \outStream_TDATA[26]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \outStream_TDATA[27]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \outStream_TDATA[28]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \outStream_TDATA[29]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \outStream_TDATA[2]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \outStream_TDATA[30]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \outStream_TDATA[31]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \outStream_TDATA[32]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \outStream_TDATA[33]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \outStream_TDATA[34]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \outStream_TDATA[35]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \outStream_TDATA[36]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \outStream_TDATA[37]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \outStream_TDATA[38]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \outStream_TDATA[39]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \outStream_TDATA[3]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \outStream_TDATA[40]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \outStream_TDATA[41]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \outStream_TDATA[42]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \outStream_TDATA[43]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \outStream_TDATA[44]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \outStream_TDATA[45]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \outStream_TDATA[46]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \outStream_TDATA[47]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \outStream_TDATA[48]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \outStream_TDATA[49]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \outStream_TDATA[4]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \outStream_TDATA[50]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \outStream_TDATA[51]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \outStream_TDATA[52]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \outStream_TDATA[53]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \outStream_TDATA[54]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \outStream_TDATA[55]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \outStream_TDATA[56]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \outStream_TDATA[57]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \outStream_TDATA[58]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \outStream_TDATA[59]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \outStream_TDATA[5]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \outStream_TDATA[60]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \outStream_TDATA[61]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \outStream_TDATA[63]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \outStream_TDATA[6]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \outStream_TDATA[7]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \outStream_TDATA[8]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \outStream_TDATA[9]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \outStream_TDEST[0]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \outStream_TDEST[1]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \outStream_TDEST[2]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \outStream_TDEST[3]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \outStream_TDEST[4]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \outStream_TDEST[5]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \outStream_TID[0]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \outStream_TID[1]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \outStream_TID[2]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \outStream_TID[3]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \outStream_TKEEP[0]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \outStream_TKEEP[1]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \outStream_TKEEP[2]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \outStream_TKEEP[3]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \outStream_TKEEP[4]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \outStream_TKEEP[5]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \outStream_TKEEP[6]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \outStream_TKEEP[7]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \outStream_TLAST[0]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \outStream_TSTRB[0]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \outStream_TSTRB[1]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \outStream_TSTRB[2]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \outStream_TSTRB[3]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \outStream_TSTRB[4]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \outStream_TSTRB[6]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \outStream_TSTRB[7]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \outStream_TUSER[0]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \outStream_TUSER[1]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of outStream_V_data_1_sel_rd_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of outStream_V_data_1_sel_wr_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of outStream_V_dest_V_1_sel_rd_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of outStream_V_id_V_1_sel_rd_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of outStream_V_keep_V_1_sel_rd_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of outStream_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of outStream_V_strb_V_1_sel_rd_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of outStream_V_user_V_1_sel_rd_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \phi_ln10_reg_321[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phi_ln10_reg_321[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phi_ln10_reg_321[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phi_ln10_reg_321[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phi_ln11_reg_343[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \phi_ln11_reg_343[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phi_ln11_reg_343[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phi_ln11_reg_343[2]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phi_ln12_reg_365[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phi_ln12_reg_365[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phi_ln12_reg_365[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phi_ln12_reg_365[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \row_idx_0_reg_420[0]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \row_idx_0_reg_420[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \row_idx_0_reg_420[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \row_idx_0_reg_420[3]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \row_stride_0_reg_431[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \row_stride_0_reg_431[1]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \select_ln21_1_reg_1389[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \select_ln21_1_reg_1389[0]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \select_ln21_1_reg_1389[0]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \select_ln21_1_reg_1389[0]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \tmp_dest_V_fu_160[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \tmp_id_V_fu_176[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tmp_id_V_fu_176[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tmp_id_V_fu_176[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \tmp_id_V_fu_176[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \tmp_keep_V_fu_164[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \tmp_strb_V_fu_168[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \tmp_user_V_fu_172[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \tmp_user_V_fu_172[1]_i_1\ : label is "soft_lutpair55";
begin
  inStream_TREADY <= \^instream_tready\;
  outStream_TVALID <= \^outstream_tvalid\;
  s_axi_CTRL_BUS_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BUS_BRESP(0) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(31) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(30) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(29) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(28) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(27) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(26) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(25) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(24) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(23) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(22) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(21) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(20) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(19) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(18) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(17) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(16) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(15) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(14) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(13) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(12) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(11) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(10) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(9) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(8) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(7) <= \^s_axi_ctrl_bus_rdata\(7);
  s_axi_CTRL_BUS_RDATA(6) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(5) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(4) <= \<const0>\;
  s_axi_CTRL_BUS_RDATA(3 downto 0) <= \^s_axi_ctrl_bus_rdata\(3 downto 0);
  s_axi_CTRL_BUS_RRESP(1) <= \<const0>\;
  s_axi_CTRL_BUS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\and_ln52_10_reg_1342[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in,
      I1 => icmp_ln15_fu_598_p2,
      O => \and_ln52_10_reg_1342[0]_i_1_n_0\
    );
\and_ln52_10_reg_1342[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \and_ln52_10_reg_1342[0]_i_3_n_0\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I4 => icmp_ln17_fu_610_p2,
      O => and_ln52_10_fu_628_p2
    );
\and_ln52_10_reg_1342[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[4]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[6]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[5]\,
      I4 => \indvar_flatten27_reg_409_reg_n_0_[8]\,
      I5 => \indvar_flatten27_reg_409_reg_n_0_[7]\,
      O => \and_ln52_10_reg_1342[0]_i_3_n_0\
    );
\and_ln52_10_reg_1342_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \and_ln52_10_reg_1342[0]_i_1_n_0\,
      D => and_ln52_10_fu_628_p2,
      Q => and_ln52_10_reg_1342,
      R => '0'
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \phi_ln9_reg_299_reg_n_0_[2]\,
      I1 => \phi_ln9_reg_299_reg_n_0_[1]\,
      I2 => \phi_ln9_reg_299_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state2,
      I4 => phi_ln10_reg_3210,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => phi_ln10_reg_321(0),
      I2 => phi_ln10_reg_321(1),
      I3 => phi_ln10_reg_321(2),
      O => phi_ln10_reg_3210
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => phi_ln10_reg_321(2),
      I1 => phi_ln10_reg_321(1),
      I2 => phi_ln10_reg_321(0),
      I3 => ap_CS_fsm_state3,
      I4 => phi_ln11_reg_3430,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => phi_ln11_reg_343(0),
      I2 => phi_ln11_reg_343(1),
      I3 => phi_ln11_reg_343(2),
      O => phi_ln11_reg_3430
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => phi_ln11_reg_343(2),
      I1 => phi_ln11_reg_343(1),
      I2 => phi_ln11_reg_343(0),
      I3 => ap_CS_fsm_state4,
      I4 => phi_ln12_reg_3650,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => phi_ln12_reg_365(0),
      I2 => phi_ln12_reg_365(1),
      I3 => phi_ln12_reg_365(2),
      O => phi_ln12_reg_3650
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => \ap_CS_fsm[6]_i_2_n_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => phi_ln12_reg_365(2),
      I3 => phi_ln12_reg_365(1),
      I4 => phi_ln12_reg_365(0),
      I5 => ap_CS_fsm_state5,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \ap_CS_fsm[6]_i_2_n_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_done,
      I3 => ap_CS_fsm_state11,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[6]_i_3_n_0\,
      I2 => ap_block_pp0_stage0_subdone1_in,
      I3 => ap_enable_reg_pp0_iter4_reg_n_0,
      I4 => ap_enable_reg_pp0_iter3,
      O => \ap_CS_fsm[6]_i_2_n_0\
    );
\ap_CS_fsm[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_enable_reg_pp0_iter1,
      O => \ap_CS_fsm[6]_i_3_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state11,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_NS_fsm1,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln15_fu_598_p2,
      I4 => p_3_in,
      O => ap_enable_reg_pp0_iter0_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_block_pp0_stage0_subdone1_in,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_block_pp0_stage0_subdone1_in,
      I3 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_block_pp0_stage0_subdone1_in,
      I2 => ap_enable_reg_pp0_iter3,
      O => ap_enable_reg_pp0_iter3_i_1_n_0
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3_i_1_n_0,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter4_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888800A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => ap_enable_reg_pp0_iter4_reg_n_0,
      I3 => ap_NS_fsm1,
      I4 => ap_block_pp0_stage0_subdone1_in,
      O => ap_enable_reg_pp0_iter4_i_1_n_0
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter4_i_1_n_0,
      Q => ap_enable_reg_pp0_iter4_reg_n_0,
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(48),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(48),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(58),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(58),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(59),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(59),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(60),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(60),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(61),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(61),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(62),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(62),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(63),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(63),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(49),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(49),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(50),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(50),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(51),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(51),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(52),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(52),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(53),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(53),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(54),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(54),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(55),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(55),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(56),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(56),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(57),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(57),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[0]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(0),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[10]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(10),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[11]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(11),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[12]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(12),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[13]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(13),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[14]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(14),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[15]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[1]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(1),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[2]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(2),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[3]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(3),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[4]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(4),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[5]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(5),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[6]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(6),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[7]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(7),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[8]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(8),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516[9]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(9),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(0),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(0),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(10),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(10),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(11),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(11),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(12),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(12),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(13),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(13),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(14),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(14),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter2,
      O => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(15),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(15),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(1),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(1),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(2),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(2),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(3),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(3),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(4),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(4),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(5),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(5),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(6),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(6),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(7),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(7),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(8),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(8),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(9),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(9),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[0]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(0),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[10]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(10),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[11]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(11),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[12]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(12),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[13]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(13),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[14]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(14),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[15]_i_2_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[1]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(1),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[2]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(2),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[3]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(3),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[4]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(4),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[5]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(5),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[6]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(6),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[7]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(7),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[8]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(8),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486[9]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(9),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(16),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(16),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(26),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(26),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(27),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(27),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(28),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(28),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(29),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(29),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(30),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(30),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(31),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(31),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(17),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(17),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(18),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(18),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(19),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(19),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(20),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(20),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(21),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(21),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(22),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(22),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(23),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(23),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(24),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(24),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(25),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(25),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[0]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(0),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[10]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(10),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[11]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(11),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[12]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(12),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[13]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(13),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[14]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(14),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[15]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[1]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(1),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[2]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(2),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[3]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(3),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[4]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(4),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[5]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(5),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[6]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(6),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[7]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(7),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[8]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(8),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496[9]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(9),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(32),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(32),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(42),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(42),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(43),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(43),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(44),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(44),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(45),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(45),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(46),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(46),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(47),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(47),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(33),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(33),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(34),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(34),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(35),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(35),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(36),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(36),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(37),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(37),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(38),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(38),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(39),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(39),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(40),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(40),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => inStream_V_data_0_payload_A(41),
      I1 => inStream_V_data_0_sel,
      I2 => inStream_V_data_0_payload_B(41),
      I3 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[0]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(0),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[10]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(10),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[11]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(11),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[12]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(12),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[13]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(13),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[14]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(14),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[15]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[1]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(1),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[2]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(2),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[3]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(3),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[4]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(4),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[5]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(5),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[6]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(6),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[7]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(7),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[8]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(8),
      R => '0'
    );
\ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_5160,
      D => \ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506[9]_i_1_n_0\,
      Q => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(9),
      R => '0'
    );
\col_assign_reg_442_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_ce0,
      D => select_ln52_4_reg_1377(0),
      Q => col_assign_reg_442(0),
      R => ap_NS_fsm1
    );
\col_assign_reg_442_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_ce0,
      D => select_ln52_4_reg_1377(1),
      Q => col_assign_reg_442(1),
      R => ap_NS_fsm1
    );
\col_assign_reg_442_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_ce0,
      D => select_ln52_4_reg_1377(2),
      Q => col_assign_reg_442(2),
      R => ap_NS_fsm1
    );
\col_assign_reg_442_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_ce0,
      D => select_ln52_4_reg_1377(3),
      Q => col_assign_reg_442(3),
      R => ap_NS_fsm1
    );
\col_stride_0_reg_464[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101010000010EF"
    )
        port map (
      I0 => icmp_ln17_reg_1317,
      I1 => and_ln52_10_reg_1342,
      I2 => \col_stride_0_reg_464_reg_n_0_[0]\,
      I3 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      I5 => \col_stride_0_reg_464[1]_i_2_n_0\,
      O => select_ln21_3_fu_1012_p3(0)
    );
\col_stride_0_reg_464[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A898A8A"
    )
        port map (
      I0 => \col_stride_0_reg_464_reg_n_0_[1]\,
      I1 => \col_stride_0_reg_464[1]_i_2_n_0\,
      I2 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      I3 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I4 => \col_stride_0_reg_464_reg_n_0_[0]\,
      I5 => \col_stride_0_reg_464[1]_i_5_n_0\,
      O => select_ln21_3_fu_1012_p3(1)
    );
\col_stride_0_reg_464[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => icmp_ln17_reg_1317,
      I1 => icmp_ln19_reg_1337,
      I2 => xor_ln52_reg_1326,
      O => \col_stride_0_reg_464[1]_i_2_n_0\
    );
\col_stride_0_reg_464[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => icmp_ln17_reg_1317,
      I1 => and_ln52_10_reg_1342,
      O => \col_stride_0_reg_464[1]_i_5_n_0\
    );
\col_stride_0_reg_464_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln21_3_fu_1012_p3(0),
      Q => \col_stride_0_reg_464_reg_n_0_[0]\,
      R => ap_NS_fsm1
    );
\col_stride_0_reg_464_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln21_3_fu_1012_p3(1),
      Q => \col_stride_0_reg_464_reg_n_0_[1]\,
      R => ap_NS_fsm1
    );
\curr_output_last_V_reg_1398[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF02FF00000200"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398[0]_i_2_n_0\,
      I1 => \curr_output_last_V_reg_1398[0]_i_3_n_0\,
      I2 => \curr_output_last_V_reg_1398[0]_i_4_n_0\,
      I3 => p_3_in,
      I4 => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      I5 => curr_output_last_V_reg_1398,
      O => \curr_output_last_V_reg_1398[0]_i_1_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => input_ch_idx_0_reg_475(3),
      I1 => input_ch_idx_0_reg_475(2),
      I2 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      I3 => input_ch_idx_0_reg_475(0),
      I4 => input_ch_idx_0_reg_475(1),
      O => \curr_output_last_V_reg_1398[0]_i_2_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFAEAA"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398[0]_i_5_n_0\,
      I1 => select_ln52_4_reg_1377(0),
      I2 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => col_assign_reg_442(0),
      I5 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      O => \curr_output_last_V_reg_1398[0]_i_3_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFEFFFEF"
    )
        port map (
      I0 => \curr_output_last_V_reg_1398[0]_i_6_n_0\,
      I1 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9,
      I2 => row_idx_0_reg_420_reg(3),
      I3 => \curr_output_last_V_reg_1398[0]_i_7_n_0\,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I5 => \col_stride_0_reg_464_reg_n_0_[1]\,
      O => \curr_output_last_V_reg_1398[0]_i_4_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02FF0302"
    )
        port map (
      I0 => \col_stride_0_reg_464_reg_n_0_[1]\,
      I1 => icmp_ln17_reg_1317,
      I2 => and_ln52_10_reg_1342,
      I3 => \col_stride_0_reg_464_reg_n_0_[0]\,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I5 => \col_stride_0_reg_464[1]_i_2_n_0\,
      O => \curr_output_last_V_reg_1398[0]_i_5_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F335F5F5FFF5F"
    )
        port map (
      I0 => col_assign_reg_442(2),
      I1 => select_ln52_4_reg_1377(2),
      I2 => col_assign_reg_442(3),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      I5 => select_ln52_4_reg_1377(3),
      O => \curr_output_last_V_reg_1398[0]_i_6_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEECECEEE0ECEC"
    )
        port map (
      I0 => \select_ln21_1_reg_1389[0]_i_3_n_0\,
      I1 => \curr_output_last_V_reg_1398[0]_i_8_n_0\,
      I2 => \select_ln21_1_reg_1389[0]_i_2_n_0\,
      I3 => row_idx_0_reg_420_reg(2),
      I4 => icmp_ln17_reg_1317,
      I5 => \curr_output_last_V_reg_1398[0]_i_9_n_0\,
      O => \curr_output_last_V_reg_1398[0]_i_7_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(2),
      I1 => \row_stride_0_reg_431_reg_n_0_[1]\,
      I2 => row_idx_0_reg_420_reg(1),
      I3 => row_idx_0_reg_420_reg(0),
      O => \curr_output_last_V_reg_1398[0]_i_8_n_0\
    );
\curr_output_last_V_reg_1398[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(0),
      I1 => row_idx_0_reg_420_reg(1),
      O => \curr_output_last_V_reg_1398[0]_i_9_n_0\
    );
\curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone1_in,
      D => curr_output_last_V_reg_1398,
      Q => curr_output_last_V_reg_1398_pp0_iter2_reg,
      R => '0'
    );
\curr_output_last_V_reg_1398_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \curr_output_last_V_reg_1398[0]_i_1_n_0\,
      Q => curr_output_last_V_reg_1398,
      R => '0'
    );
\icmp_ln15_reg_1308[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => icmp_ln15_fu_598_p2,
      I1 => p_3_in,
      I2 => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      O => \icmp_ln15_reg_1308[0]_i_1_n_0\
    );
\icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      I1 => p_3_in,
      I2 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      O => \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0\
    );
\icmp_ln15_reg_1308_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln15_reg_1308_pp0_iter1_reg[0]_i_1_n_0\,
      Q => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln15_reg_1308_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone1_in,
      D => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      Q => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln15_reg_1308_pp0_iter3_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone1_in,
      D => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      Q => icmp_ln15_reg_1308_pp0_iter3_reg,
      R => '0'
    );
\icmp_ln15_reg_1308_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \icmp_ln15_reg_1308[0]_i_1_n_0\,
      Q => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      R => '0'
    );
\icmp_ln17_reg_1317[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(8),
      I1 => indvar_flatten72_reg_398_reg(9),
      I2 => \icmp_ln17_reg_1317[0]_i_2_n_0\,
      I3 => \icmp_ln17_reg_1317[0]_i_3_n_0\,
      O => icmp_ln17_fu_610_p2
    );
\icmp_ln17_reg_1317[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(6),
      I1 => indvar_flatten72_reg_398_reg(7),
      I2 => indvar_flatten72_reg_398_reg(4),
      I3 => indvar_flatten72_reg_398_reg(5),
      O => \icmp_ln17_reg_1317[0]_i_2_n_0\
    );
\icmp_ln17_reg_1317[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(1),
      I1 => indvar_flatten72_reg_398_reg(0),
      I2 => indvar_flatten72_reg_398_reg(3),
      I3 => indvar_flatten72_reg_398_reg(2),
      O => \icmp_ln17_reg_1317[0]_i_3_n_0\
    );
\icmp_ln17_reg_1317_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \and_ln52_10_reg_1342[0]_i_1_n_0\,
      D => icmp_ln17_fu_610_p2,
      Q => icmp_ln17_reg_1317,
      R => '0'
    );
\icmp_ln19_reg_1337[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \and_ln52_10_reg_1342[0]_i_3_n_0\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      O => icmp_ln19_fu_622_p2
    );
\icmp_ln19_reg_1337_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \and_ln52_10_reg_1342[0]_i_1_n_0\,
      D => icmp_ln19_fu_622_p2,
      Q => icmp_ln19_reg_1337,
      R => '0'
    );
\inStream_V_data_0_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_data_0_sel_wr,
      I1 => inStream_V_data_0_ack_in,
      I2 => \inStream_V_data_0_state_reg_n_0_[0]\,
      O => inStream_V_data_0_load_A
    );
\inStream_V_data_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(0),
      Q => inStream_V_data_0_payload_A(0),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(10),
      Q => inStream_V_data_0_payload_A(10),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(11),
      Q => inStream_V_data_0_payload_A(11),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(12),
      Q => inStream_V_data_0_payload_A(12),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(13),
      Q => inStream_V_data_0_payload_A(13),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(14),
      Q => inStream_V_data_0_payload_A(14),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(15),
      Q => inStream_V_data_0_payload_A(15),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(16),
      Q => inStream_V_data_0_payload_A(16),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(17),
      Q => inStream_V_data_0_payload_A(17),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(18),
      Q => inStream_V_data_0_payload_A(18),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(19),
      Q => inStream_V_data_0_payload_A(19),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(1),
      Q => inStream_V_data_0_payload_A(1),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(20),
      Q => inStream_V_data_0_payload_A(20),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(21),
      Q => inStream_V_data_0_payload_A(21),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(22),
      Q => inStream_V_data_0_payload_A(22),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(23),
      Q => inStream_V_data_0_payload_A(23),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(24),
      Q => inStream_V_data_0_payload_A(24),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(25),
      Q => inStream_V_data_0_payload_A(25),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(26),
      Q => inStream_V_data_0_payload_A(26),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(27),
      Q => inStream_V_data_0_payload_A(27),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(28),
      Q => inStream_V_data_0_payload_A(28),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(29),
      Q => inStream_V_data_0_payload_A(29),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(2),
      Q => inStream_V_data_0_payload_A(2),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(30),
      Q => inStream_V_data_0_payload_A(30),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(31),
      Q => inStream_V_data_0_payload_A(31),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(32),
      Q => inStream_V_data_0_payload_A(32),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(33),
      Q => inStream_V_data_0_payload_A(33),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(34),
      Q => inStream_V_data_0_payload_A(34),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(35),
      Q => inStream_V_data_0_payload_A(35),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(36),
      Q => inStream_V_data_0_payload_A(36),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(37),
      Q => inStream_V_data_0_payload_A(37),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(38),
      Q => inStream_V_data_0_payload_A(38),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(39),
      Q => inStream_V_data_0_payload_A(39),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(3),
      Q => inStream_V_data_0_payload_A(3),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(40),
      Q => inStream_V_data_0_payload_A(40),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(41),
      Q => inStream_V_data_0_payload_A(41),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(42),
      Q => inStream_V_data_0_payload_A(42),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(43),
      Q => inStream_V_data_0_payload_A(43),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(44),
      Q => inStream_V_data_0_payload_A(44),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(45),
      Q => inStream_V_data_0_payload_A(45),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(46),
      Q => inStream_V_data_0_payload_A(46),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(47),
      Q => inStream_V_data_0_payload_A(47),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(48),
      Q => inStream_V_data_0_payload_A(48),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(49),
      Q => inStream_V_data_0_payload_A(49),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(4),
      Q => inStream_V_data_0_payload_A(4),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(50),
      Q => inStream_V_data_0_payload_A(50),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(51),
      Q => inStream_V_data_0_payload_A(51),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(52),
      Q => inStream_V_data_0_payload_A(52),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(53),
      Q => inStream_V_data_0_payload_A(53),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(54),
      Q => inStream_V_data_0_payload_A(54),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(55),
      Q => inStream_V_data_0_payload_A(55),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(56),
      Q => inStream_V_data_0_payload_A(56),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(57),
      Q => inStream_V_data_0_payload_A(57),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(58),
      Q => inStream_V_data_0_payload_A(58),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(59),
      Q => inStream_V_data_0_payload_A(59),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(5),
      Q => inStream_V_data_0_payload_A(5),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(60),
      Q => inStream_V_data_0_payload_A(60),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(61),
      Q => inStream_V_data_0_payload_A(61),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(62),
      Q => inStream_V_data_0_payload_A(62),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(63),
      Q => inStream_V_data_0_payload_A(63),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(6),
      Q => inStream_V_data_0_payload_A(6),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(7),
      Q => inStream_V_data_0_payload_A(7),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(8),
      Q => inStream_V_data_0_payload_A(8),
      R => '0'
    );
\inStream_V_data_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_A,
      D => inStream_TDATA(9),
      Q => inStream_V_data_0_payload_A(9),
      R => '0'
    );
\inStream_V_data_0_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_data_0_sel_wr,
      I1 => inStream_V_data_0_ack_in,
      I2 => \inStream_V_data_0_state_reg_n_0_[0]\,
      O => inStream_V_data_0_load_B
    );
\inStream_V_data_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(0),
      Q => inStream_V_data_0_payload_B(0),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(10),
      Q => inStream_V_data_0_payload_B(10),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(11),
      Q => inStream_V_data_0_payload_B(11),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(12),
      Q => inStream_V_data_0_payload_B(12),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(13),
      Q => inStream_V_data_0_payload_B(13),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(14),
      Q => inStream_V_data_0_payload_B(14),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(15),
      Q => inStream_V_data_0_payload_B(15),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(16),
      Q => inStream_V_data_0_payload_B(16),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(17),
      Q => inStream_V_data_0_payload_B(17),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(18),
      Q => inStream_V_data_0_payload_B(18),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(19),
      Q => inStream_V_data_0_payload_B(19),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(1),
      Q => inStream_V_data_0_payload_B(1),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(20),
      Q => inStream_V_data_0_payload_B(20),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(21),
      Q => inStream_V_data_0_payload_B(21),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(22),
      Q => inStream_V_data_0_payload_B(22),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(23),
      Q => inStream_V_data_0_payload_B(23),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(24),
      Q => inStream_V_data_0_payload_B(24),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(25),
      Q => inStream_V_data_0_payload_B(25),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(26),
      Q => inStream_V_data_0_payload_B(26),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(27),
      Q => inStream_V_data_0_payload_B(27),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(28),
      Q => inStream_V_data_0_payload_B(28),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(29),
      Q => inStream_V_data_0_payload_B(29),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(2),
      Q => inStream_V_data_0_payload_B(2),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(30),
      Q => inStream_V_data_0_payload_B(30),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(31),
      Q => inStream_V_data_0_payload_B(31),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(32),
      Q => inStream_V_data_0_payload_B(32),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(33),
      Q => inStream_V_data_0_payload_B(33),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(34),
      Q => inStream_V_data_0_payload_B(34),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(35),
      Q => inStream_V_data_0_payload_B(35),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(36),
      Q => inStream_V_data_0_payload_B(36),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(37),
      Q => inStream_V_data_0_payload_B(37),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(38),
      Q => inStream_V_data_0_payload_B(38),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(39),
      Q => inStream_V_data_0_payload_B(39),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(3),
      Q => inStream_V_data_0_payload_B(3),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(40),
      Q => inStream_V_data_0_payload_B(40),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(41),
      Q => inStream_V_data_0_payload_B(41),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(42),
      Q => inStream_V_data_0_payload_B(42),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(43),
      Q => inStream_V_data_0_payload_B(43),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(44),
      Q => inStream_V_data_0_payload_B(44),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(45),
      Q => inStream_V_data_0_payload_B(45),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(46),
      Q => inStream_V_data_0_payload_B(46),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(47),
      Q => inStream_V_data_0_payload_B(47),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(48),
      Q => inStream_V_data_0_payload_B(48),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(49),
      Q => inStream_V_data_0_payload_B(49),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(4),
      Q => inStream_V_data_0_payload_B(4),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(50),
      Q => inStream_V_data_0_payload_B(50),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(51),
      Q => inStream_V_data_0_payload_B(51),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(52),
      Q => inStream_V_data_0_payload_B(52),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(53),
      Q => inStream_V_data_0_payload_B(53),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(54),
      Q => inStream_V_data_0_payload_B(54),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(55),
      Q => inStream_V_data_0_payload_B(55),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(56),
      Q => inStream_V_data_0_payload_B(56),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(57),
      Q => inStream_V_data_0_payload_B(57),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(58),
      Q => inStream_V_data_0_payload_B(58),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(59),
      Q => inStream_V_data_0_payload_B(59),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(5),
      Q => inStream_V_data_0_payload_B(5),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(60),
      Q => inStream_V_data_0_payload_B(60),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(61),
      Q => inStream_V_data_0_payload_B(61),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(62),
      Q => inStream_V_data_0_payload_B(62),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(63),
      Q => inStream_V_data_0_payload_B(63),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(6),
      Q => inStream_V_data_0_payload_B(6),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(7),
      Q => inStream_V_data_0_payload_B(7),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(8),
      Q => inStream_V_data_0_payload_B(8),
      R => '0'
    );
\inStream_V_data_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_0_load_B,
      D => inStream_TDATA(9),
      Q => inStream_V_data_0_payload_B(9),
      R => '0'
    );
inStream_V_data_0_sel_rd_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => inStream_V_data_0_sel,
      O => inStream_V_data_0_sel_rd_i_1_n_0
    );
inStream_V_data_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_0_sel_rd_i_1_n_0,
      Q => inStream_V_data_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_data_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_data_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_data_0_sel_wr,
      O => inStream_V_data_0_sel_wr_i_1_n_0
    );
inStream_V_data_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_0_sel_wr_i_1_n_0,
      Q => inStream_V_data_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_data_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => inStream_V_data_0_ack_in,
      I1 => inStream_TVALID,
      I2 => \inStream_V_data_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_data_0_state[0]_i_1_n_0\
    );
\inStream_V_data_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_data_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => inStream_V_data_0_ack_in,
      O => inStream_V_data_0_state(1)
    );
\inStream_V_data_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_data_0_state[0]_i_1_n_0\,
      Q => \inStream_V_data_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_data_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_0_state(1),
      Q => inStream_V_data_0_ack_in,
      R => ap_rst_n_inv
    );
\inStream_V_dest_V_0_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_dest_V_0_sel_wr,
      I1 => \^instream_tready\,
      I2 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      O => inStream_V_dest_V_0_load_A
    );
\inStream_V_dest_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(0),
      Q => inStream_V_dest_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_dest_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(1),
      Q => inStream_V_dest_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_dest_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(2),
      Q => inStream_V_dest_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_dest_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(3),
      Q => inStream_V_dest_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_dest_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(4),
      Q => inStream_V_dest_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_dest_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_A,
      D => inStream_TDEST(5),
      Q => inStream_V_dest_V_0_payload_A(5),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_dest_V_0_sel_wr,
      I1 => \^instream_tready\,
      I2 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      O => inStream_V_dest_V_0_load_B
    );
\inStream_V_dest_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(0),
      Q => inStream_V_dest_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(1),
      Q => inStream_V_dest_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(2),
      Q => inStream_V_dest_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(3),
      Q => inStream_V_dest_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(4),
      Q => inStream_V_dest_V_0_payload_B(4),
      R => '0'
    );
\inStream_V_dest_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_dest_V_0_load_B,
      D => inStream_TDEST(5),
      Q => inStream_V_dest_V_0_payload_B(5),
      R => '0'
    );
inStream_V_dest_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      I2 => inStream_V_dest_V_0_sel,
      O => inStream_V_dest_V_0_sel_rd_i_1_n_0
    );
inStream_V_dest_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_dest_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_dest_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_dest_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^instream_tready\,
      I1 => inStream_TVALID,
      I2 => inStream_V_dest_V_0_sel_wr,
      O => inStream_V_dest_V_0_sel_wr_i_1_n_0
    );
inStream_V_dest_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_dest_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_dest_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => \^instream_tready\,
      I1 => inStream_TVALID,
      I2 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_dest_V_0_state[0]_i_1_n_0\
    );
\inStream_V_dest_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => \^instream_tready\,
      O => inStream_V_dest_V_0_state(1)
    );
\inStream_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_dest_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_dest_V_0_state(1),
      Q => \^instream_tready\,
      R => ap_rst_n_inv
    );
\inStream_V_id_V_0_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_id_V_0_sel_wr,
      I1 => inStream_V_id_V_0_ack_in,
      I2 => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      O => inStream_V_id_V_0_load_A
    );
\inStream_V_id_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_A,
      D => inStream_TID(0),
      Q => inStream_V_id_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_id_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_A,
      D => inStream_TID(1),
      Q => inStream_V_id_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_id_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_A,
      D => inStream_TID(2),
      Q => inStream_V_id_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_id_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_A,
      D => inStream_TID(3),
      Q => inStream_V_id_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_id_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_A,
      D => inStream_TID(4),
      Q => inStream_V_id_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_id_V_0_payload_B[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_id_V_0_sel_wr,
      I1 => inStream_V_id_V_0_ack_in,
      I2 => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      O => inStream_V_id_V_0_load_B
    );
\inStream_V_id_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_B,
      D => inStream_TID(0),
      Q => inStream_V_id_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_id_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_B,
      D => inStream_TID(1),
      Q => inStream_V_id_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_id_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_B,
      D => inStream_TID(2),
      Q => inStream_V_id_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_id_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_B,
      D => inStream_TID(3),
      Q => inStream_V_id_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_id_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_id_V_0_load_B,
      D => inStream_TID(4),
      Q => inStream_V_id_V_0_payload_B(4),
      R => '0'
    );
inStream_V_id_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      I2 => inStream_V_id_V_0_sel,
      O => inStream_V_id_V_0_sel_rd_i_1_n_0
    );
inStream_V_id_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_id_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_id_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_id_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_id_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_id_V_0_sel_wr,
      O => inStream_V_id_V_0_sel_wr_i_1_n_0
    );
inStream_V_id_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_id_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_id_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_id_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => inStream_V_id_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_id_V_0_state[0]_i_1_n_0\
    );
\inStream_V_id_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => inStream_V_id_V_0_ack_in,
      O => inStream_V_id_V_0_state(1)
    );
\inStream_V_id_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_id_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_id_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_id_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_id_V_0_state(1),
      Q => inStream_V_id_V_0_ack_in,
      R => ap_rst_n_inv
    );
\inStream_V_keep_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_keep_V_0_sel_wr,
      I1 => inStream_V_keep_V_0_ack_in,
      I2 => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      O => inStream_V_keep_V_0_load_A
    );
\inStream_V_keep_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(0),
      Q => inStream_V_keep_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(1),
      Q => inStream_V_keep_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(2),
      Q => inStream_V_keep_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(3),
      Q => inStream_V_keep_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(4),
      Q => inStream_V_keep_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(5),
      Q => inStream_V_keep_V_0_payload_A(5),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(6),
      Q => inStream_V_keep_V_0_payload_A(6),
      R => '0'
    );
\inStream_V_keep_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_A,
      D => inStream_TKEEP(7),
      Q => inStream_V_keep_V_0_payload_A(7),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_keep_V_0_sel_wr,
      I1 => inStream_V_keep_V_0_ack_in,
      I2 => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      O => inStream_V_keep_V_0_load_B
    );
\inStream_V_keep_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(0),
      Q => inStream_V_keep_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(1),
      Q => inStream_V_keep_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(2),
      Q => inStream_V_keep_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(3),
      Q => inStream_V_keep_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(4),
      Q => inStream_V_keep_V_0_payload_B(4),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(5),
      Q => inStream_V_keep_V_0_payload_B(5),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(6),
      Q => inStream_V_keep_V_0_payload_B(6),
      R => '0'
    );
\inStream_V_keep_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_keep_V_0_load_B,
      D => inStream_TKEEP(7),
      Q => inStream_V_keep_V_0_payload_B(7),
      R => '0'
    );
inStream_V_keep_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_sel_rd_i_1_n_0
    );
inStream_V_keep_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_keep_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_keep_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_keep_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_keep_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_keep_V_0_sel_wr,
      O => inStream_V_keep_V_0_sel_wr_i_1_n_0
    );
inStream_V_keep_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_keep_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_keep_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_keep_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => inStream_V_keep_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_keep_V_0_state[0]_i_1_n_0\
    );
\inStream_V_keep_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => inStream_V_keep_V_0_ack_in,
      O => inStream_V_keep_V_0_state(1)
    );
\inStream_V_keep_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_keep_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_keep_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_keep_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_keep_V_0_state(1),
      Q => inStream_V_keep_V_0_ack_in,
      R => ap_rst_n_inv
    );
\inStream_V_strb_V_0_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_strb_V_0_sel_wr,
      I1 => inStream_V_strb_V_0_ack_in,
      I2 => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      O => inStream_V_strb_V_0_load_A
    );
\inStream_V_strb_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(0),
      Q => inStream_V_strb_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(1),
      Q => inStream_V_strb_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(2),
      Q => inStream_V_strb_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(3),
      Q => inStream_V_strb_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(4),
      Q => inStream_V_strb_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(5),
      Q => inStream_V_strb_V_0_payload_A(5),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(6),
      Q => inStream_V_strb_V_0_payload_A(6),
      R => '0'
    );
\inStream_V_strb_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_A,
      D => inStream_TSTRB(7),
      Q => inStream_V_strb_V_0_payload_A(7),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_strb_V_0_sel_wr,
      I1 => inStream_V_strb_V_0_ack_in,
      I2 => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      O => inStream_V_strb_V_0_load_B
    );
\inStream_V_strb_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(0),
      Q => inStream_V_strb_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(1),
      Q => inStream_V_strb_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(2),
      Q => inStream_V_strb_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(3),
      Q => inStream_V_strb_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(4),
      Q => inStream_V_strb_V_0_payload_B(4),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(5),
      Q => inStream_V_strb_V_0_payload_B(5),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(6),
      Q => inStream_V_strb_V_0_payload_B(6),
      R => '0'
    );
\inStream_V_strb_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_strb_V_0_load_B,
      D => inStream_TSTRB(7),
      Q => inStream_V_strb_V_0_payload_B(7),
      R => '0'
    );
inStream_V_strb_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_sel_rd_i_1_n_0
    );
inStream_V_strb_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_strb_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_strb_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_strb_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_strb_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_strb_V_0_sel_wr,
      O => inStream_V_strb_V_0_sel_wr_i_1_n_0
    );
inStream_V_strb_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_strb_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_strb_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_strb_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => inStream_V_strb_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_strb_V_0_state[0]_i_1_n_0\
    );
\inStream_V_strb_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => inStream_V_strb_V_0_ack_in,
      O => inStream_V_strb_V_0_state(1)
    );
\inStream_V_strb_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_strb_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_strb_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_strb_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_strb_V_0_state(1),
      Q => inStream_V_strb_V_0_ack_in,
      R => ap_rst_n_inv
    );
\inStream_V_user_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => inStream_TUSER(0),
      I1 => inStream_V_user_V_0_sel_wr,
      I2 => inStream_V_user_V_0_ack_in,
      I3 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I4 => inStream_V_user_V_0_payload_A(0),
      O => \inStream_V_user_V_0_payload_A[0]_i_1_n_0\
    );
\inStream_V_user_V_0_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => inStream_TUSER(1),
      I1 => inStream_V_user_V_0_sel_wr,
      I2 => inStream_V_user_V_0_ack_in,
      I3 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I4 => inStream_V_user_V_0_payload_A(1),
      O => \inStream_V_user_V_0_payload_A[1]_i_1_n_0\
    );
\inStream_V_user_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_user_V_0_payload_A[0]_i_1_n_0\,
      Q => inStream_V_user_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_user_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_user_V_0_payload_A[1]_i_1_n_0\,
      Q => inStream_V_user_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_user_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => inStream_TUSER(0),
      I1 => inStream_V_user_V_0_sel_wr,
      I2 => inStream_V_user_V_0_ack_in,
      I3 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I4 => inStream_V_user_V_0_payload_B(0),
      O => \inStream_V_user_V_0_payload_B[0]_i_1_n_0\
    );
\inStream_V_user_V_0_payload_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => inStream_TUSER(1),
      I1 => inStream_V_user_V_0_sel_wr,
      I2 => inStream_V_user_V_0_ack_in,
      I3 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I4 => inStream_V_user_V_0_payload_B(1),
      O => \inStream_V_user_V_0_payload_B[1]_i_1_n_0\
    );
\inStream_V_user_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_user_V_0_payload_B[0]_i_1_n_0\,
      Q => inStream_V_user_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_user_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_user_V_0_payload_B[1]_i_1_n_0\,
      Q => inStream_V_user_V_0_payload_B(1),
      R => '0'
    );
inStream_V_user_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I2 => inStream_V_user_V_0_sel,
      O => inStream_V_user_V_0_sel_rd_i_1_n_0
    );
inStream_V_user_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_user_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_user_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_user_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_user_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_user_V_0_sel_wr,
      O => inStream_V_user_V_0_sel_wr_i_1_n_0
    );
inStream_V_user_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_user_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_user_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_user_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8D80000"
    )
        port map (
      I0 => inStream_V_user_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I3 => line_buff_group_3_va_U_n_19,
      I4 => ap_rst_n,
      O => \inStream_V_user_V_0_state[0]_i_1_n_0\
    );
\inStream_V_user_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F77"
    )
        port map (
      I0 => line_buff_group_3_va_U_n_19,
      I1 => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      I2 => inStream_TVALID,
      I3 => inStream_V_user_V_0_ack_in,
      O => inStream_V_user_V_0_state(1)
    );
\inStream_V_user_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_user_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_user_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_user_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_user_V_0_state(1),
      Q => inStream_V_user_V_0_ack_in,
      R => ap_rst_n_inv
    );
\indvar_flatten136_reg_387[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten136_reg_387_reg(0),
      O => \indvar_flatten136_reg_387[0]_i_2_n_0\
    );
\indvar_flatten136_reg_387_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[0]_i_1_n_7\,
      Q => indvar_flatten136_reg_387_reg(0),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \indvar_flatten136_reg_387_reg[0]_i_1_n_0\,
      CO(2) => \indvar_flatten136_reg_387_reg[0]_i_1_n_1\,
      CO(1) => \indvar_flatten136_reg_387_reg[0]_i_1_n_2\,
      CO(0) => \indvar_flatten136_reg_387_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \indvar_flatten136_reg_387_reg[0]_i_1_n_4\,
      O(2) => \indvar_flatten136_reg_387_reg[0]_i_1_n_5\,
      O(1) => \indvar_flatten136_reg_387_reg[0]_i_1_n_6\,
      O(0) => \indvar_flatten136_reg_387_reg[0]_i_1_n_7\,
      S(3 downto 1) => indvar_flatten136_reg_387_reg(3 downto 1),
      S(0) => \indvar_flatten136_reg_387[0]_i_2_n_0\
    );
\indvar_flatten136_reg_387_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[8]_i_1_n_5\,
      Q => indvar_flatten136_reg_387_reg(10),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[8]_i_1_n_4\,
      Q => indvar_flatten136_reg_387_reg(11),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[12]_i_1_n_7\,
      Q => indvar_flatten136_reg_387_reg(12),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten136_reg_387_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_indvar_flatten136_reg_387_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_indvar_flatten136_reg_387_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \indvar_flatten136_reg_387_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => indvar_flatten136_reg_387_reg(12)
    );
\indvar_flatten136_reg_387_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[0]_i_1_n_6\,
      Q => indvar_flatten136_reg_387_reg(1),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[0]_i_1_n_5\,
      Q => indvar_flatten136_reg_387_reg(2),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[0]_i_1_n_4\,
      Q => indvar_flatten136_reg_387_reg(3),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[4]_i_1_n_7\,
      Q => indvar_flatten136_reg_387_reg(4),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten136_reg_387_reg[0]_i_1_n_0\,
      CO(3) => \indvar_flatten136_reg_387_reg[4]_i_1_n_0\,
      CO(2) => \indvar_flatten136_reg_387_reg[4]_i_1_n_1\,
      CO(1) => \indvar_flatten136_reg_387_reg[4]_i_1_n_2\,
      CO(0) => \indvar_flatten136_reg_387_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten136_reg_387_reg[4]_i_1_n_4\,
      O(2) => \indvar_flatten136_reg_387_reg[4]_i_1_n_5\,
      O(1) => \indvar_flatten136_reg_387_reg[4]_i_1_n_6\,
      O(0) => \indvar_flatten136_reg_387_reg[4]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten136_reg_387_reg(7 downto 4)
    );
\indvar_flatten136_reg_387_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[4]_i_1_n_6\,
      Q => indvar_flatten136_reg_387_reg(5),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[4]_i_1_n_5\,
      Q => indvar_flatten136_reg_387_reg(6),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[4]_i_1_n_4\,
      Q => indvar_flatten136_reg_387_reg(7),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[8]_i_1_n_7\,
      Q => indvar_flatten136_reg_387_reg(8),
      R => ap_NS_fsm1
    );
\indvar_flatten136_reg_387_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \indvar_flatten136_reg_387_reg[4]_i_1_n_0\,
      CO(3) => \indvar_flatten136_reg_387_reg[8]_i_1_n_0\,
      CO(2) => \indvar_flatten136_reg_387_reg[8]_i_1_n_1\,
      CO(1) => \indvar_flatten136_reg_387_reg[8]_i_1_n_2\,
      CO(0) => \indvar_flatten136_reg_387_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \indvar_flatten136_reg_387_reg[8]_i_1_n_4\,
      O(2) => \indvar_flatten136_reg_387_reg[8]_i_1_n_5\,
      O(1) => \indvar_flatten136_reg_387_reg[8]_i_1_n_6\,
      O(0) => \indvar_flatten136_reg_387_reg[8]_i_1_n_7\,
      S(3 downto 0) => indvar_flatten136_reg_387_reg(11 downto 8)
    );
\indvar_flatten136_reg_387_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => \indvar_flatten136_reg_387_reg[8]_i_1_n_6\,
      Q => indvar_flatten136_reg_387_reg(9),
      R => ap_NS_fsm1
    );
\indvar_flatten27_reg_409[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA6AAAEA"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I1 => p_3_in,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln15_fu_598_p2,
      I4 => \indvar_flatten27_reg_409[8]_i_4_n_0\,
      I5 => ap_NS_fsm1,
      O => \indvar_flatten27_reg_409[0]_i_1_n_0\
    );
\indvar_flatten27_reg_409[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      O => add_ln19_1_fu_640_p2(1)
    );
\indvar_flatten27_reg_409[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      O => add_ln19_1_fu_640_p2(2)
    );
\indvar_flatten27_reg_409[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      O => add_ln19_1_fu_640_p2(3)
    );
\indvar_flatten27_reg_409[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[4]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I4 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      O => add_ln19_1_fu_640_p2(4)
    );
\indvar_flatten27_reg_409[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I4 => \indvar_flatten27_reg_409_reg_n_0_[4]\,
      I5 => \indvar_flatten27_reg_409_reg_n_0_[5]\,
      O => add_ln19_1_fu_640_p2(5)
    );
\indvar_flatten27_reg_409[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[6]\,
      I1 => \indvar_flatten27_reg_409[8]_i_7_n_0\,
      O => add_ln19_1_fu_640_p2(6)
    );
\indvar_flatten27_reg_409[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[7]\,
      I1 => \indvar_flatten27_reg_409[8]_i_7_n_0\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[6]\,
      O => add_ln19_1_fu_640_p2(7)
    );
\indvar_flatten27_reg_409[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \indvar_flatten27_reg_409[8]_i_4_n_0\,
      I1 => icmp_ln15_fu_598_p2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => p_3_in,
      I4 => ap_NS_fsm1,
      O => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => icmp_ln15_fu_598_p2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => p_3_in,
      O => \indvar_flatten27_reg_409[8]_i_2_n_0\
    );
\indvar_flatten27_reg_409[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[8]\,
      I1 => \indvar_flatten27_reg_409[8]_i_7_n_0\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[6]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[7]\,
      O => add_ln19_1_fu_640_p2(8)
    );
\indvar_flatten27_reg_409[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFD"
    )
        port map (
      I0 => \and_ln52_10_reg_1342[0]_i_3_n_0\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I4 => icmp_ln17_fu_610_p2,
      O => \indvar_flatten27_reg_409[8]_i_4_n_0\
    );
\indvar_flatten27_reg_409[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \indvar_flatten27_reg_409[8]_i_8_n_0\,
      I1 => indvar_flatten136_reg_387_reg(2),
      I2 => indvar_flatten136_reg_387_reg(1),
      I3 => indvar_flatten136_reg_387_reg(0),
      I4 => \indvar_flatten27_reg_409[8]_i_9_n_0\,
      O => icmp_ln15_fu_598_p2
    );
\indvar_flatten27_reg_409[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_block_pp0_stage0_subdone1_in,
      O => p_3_in
    );
\indvar_flatten27_reg_409[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \indvar_flatten27_reg_409_reg_n_0_[5]\,
      I1 => \indvar_flatten27_reg_409_reg_n_0_[4]\,
      I2 => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      I3 => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      I4 => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      I5 => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      O => \indvar_flatten27_reg_409[8]_i_7_n_0\
    );
\indvar_flatten27_reg_409[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => indvar_flatten136_reg_387_reg(6),
      I1 => indvar_flatten136_reg_387_reg(5),
      I2 => indvar_flatten136_reg_387_reg(4),
      I3 => indvar_flatten136_reg_387_reg(3),
      O => \indvar_flatten27_reg_409[8]_i_8_n_0\
    );
\indvar_flatten27_reg_409[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => indvar_flatten136_reg_387_reg(8),
      I1 => indvar_flatten136_reg_387_reg(7),
      I2 => indvar_flatten136_reg_387_reg(10),
      I3 => indvar_flatten136_reg_387_reg(9),
      I4 => indvar_flatten136_reg_387_reg(11),
      I5 => indvar_flatten136_reg_387_reg(12),
      O => \indvar_flatten27_reg_409[8]_i_9_n_0\
    );
\indvar_flatten27_reg_409_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \indvar_flatten27_reg_409[0]_i_1_n_0\,
      Q => \indvar_flatten27_reg_409_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten27_reg_409_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(1),
      Q => \indvar_flatten27_reg_409_reg_n_0_[1]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(2),
      Q => \indvar_flatten27_reg_409_reg_n_0_[2]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(3),
      Q => \indvar_flatten27_reg_409_reg_n_0_[3]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(4),
      Q => \indvar_flatten27_reg_409_reg_n_0_[4]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(5),
      Q => \indvar_flatten27_reg_409_reg_n_0_[5]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(6),
      Q => \indvar_flatten27_reg_409_reg_n_0_[6]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(7),
      Q => \indvar_flatten27_reg_409_reg_n_0_[7]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten27_reg_409_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => add_ln19_1_fu_640_p2(8),
      Q => \indvar_flatten27_reg_409_reg_n_0_[8]\,
      R => indvar_flatten27_reg_409(4)
    );
\indvar_flatten72_reg_398[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(0),
      O => select_ln17_5_fu_660_p3(0)
    );
\indvar_flatten72_reg_398[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(0),
      I1 => indvar_flatten72_reg_398_reg(1),
      O => select_ln17_5_fu_660_p3(1)
    );
\indvar_flatten72_reg_398[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(2),
      I1 => indvar_flatten72_reg_398_reg(1),
      I2 => indvar_flatten72_reg_398_reg(0),
      O => select_ln17_5_fu_660_p3(2)
    );
\indvar_flatten72_reg_398[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(3),
      I1 => indvar_flatten72_reg_398_reg(2),
      I2 => indvar_flatten72_reg_398_reg(0),
      I3 => indvar_flatten72_reg_398_reg(1),
      O => select_ln17_5_fu_660_p3(3)
    );
\indvar_flatten72_reg_398[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(4),
      I1 => indvar_flatten72_reg_398_reg(3),
      I2 => indvar_flatten72_reg_398_reg(1),
      I3 => indvar_flatten72_reg_398_reg(0),
      I4 => indvar_flatten72_reg_398_reg(2),
      O => select_ln17_5_fu_660_p3(4)
    );
\indvar_flatten72_reg_398[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \indvar_flatten72_reg_398[8]_i_2_n_0\,
      I1 => \indvar_flatten72_reg_398[9]_i_2_n_0\,
      I2 => indvar_flatten72_reg_398_reg(5),
      O => select_ln17_5_fu_660_p3(5)
    );
\indvar_flatten72_reg_398[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(6),
      I1 => \indvar_flatten72_reg_398[9]_i_2_n_0\,
      I2 => indvar_flatten72_reg_398_reg(5),
      O => select_ln17_5_fu_660_p3(6)
    );
\indvar_flatten72_reg_398[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF002000"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(6),
      I1 => \indvar_flatten72_reg_398[9]_i_2_n_0\,
      I2 => indvar_flatten72_reg_398_reg(5),
      I3 => \indvar_flatten72_reg_398[8]_i_2_n_0\,
      I4 => indvar_flatten72_reg_398_reg(7),
      O => select_ln17_5_fu_660_p3(7)
    );
\indvar_flatten72_reg_398[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(7),
      I1 => indvar_flatten72_reg_398_reg(5),
      I2 => \indvar_flatten72_reg_398[9]_i_2_n_0\,
      I3 => indvar_flatten72_reg_398_reg(6),
      I4 => \indvar_flatten72_reg_398[8]_i_2_n_0\,
      I5 => indvar_flatten72_reg_398_reg(8),
      O => select_ln17_5_fu_660_p3(8)
    );
\indvar_flatten72_reg_398[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(8),
      I1 => indvar_flatten72_reg_398_reg(9),
      I2 => \icmp_ln17_reg_1317[0]_i_3_n_0\,
      I3 => \icmp_ln17_reg_1317[0]_i_2_n_0\,
      O => \indvar_flatten72_reg_398[8]_i_2_n_0\
    );
\indvar_flatten72_reg_398[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(9),
      I1 => indvar_flatten72_reg_398_reg(8),
      I2 => indvar_flatten72_reg_398_reg(7),
      I3 => indvar_flatten72_reg_398_reg(5),
      I4 => \indvar_flatten72_reg_398[9]_i_2_n_0\,
      I5 => indvar_flatten72_reg_398_reg(6),
      O => select_ln17_5_fu_660_p3(9)
    );
\indvar_flatten72_reg_398[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => indvar_flatten72_reg_398_reg(3),
      I1 => indvar_flatten72_reg_398_reg(1),
      I2 => indvar_flatten72_reg_398_reg(0),
      I3 => indvar_flatten72_reg_398_reg(2),
      I4 => indvar_flatten72_reg_398_reg(4),
      O => \indvar_flatten72_reg_398[9]_i_2_n_0\
    );
\indvar_flatten72_reg_398_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(0),
      Q => indvar_flatten72_reg_398_reg(0),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(1),
      Q => indvar_flatten72_reg_398_reg(1),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(2),
      Q => indvar_flatten72_reg_398_reg(2),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(3),
      Q => indvar_flatten72_reg_398_reg(3),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(4),
      Q => indvar_flatten72_reg_398_reg(4),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(5),
      Q => indvar_flatten72_reg_398_reg(5),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(6),
      Q => indvar_flatten72_reg_398_reg(6),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(7),
      Q => indvar_flatten72_reg_398_reg(7),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(8),
      Q => indvar_flatten72_reg_398_reg(8),
      R => ap_NS_fsm1
    );
\indvar_flatten72_reg_398_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \indvar_flatten27_reg_409[8]_i_2_n_0\,
      D => select_ln17_5_fu_660_p3(9),
      Q => indvar_flatten72_reg_398_reg(9),
      R => ap_NS_fsm1
    );
\indvar_flatten_reg_453[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFDAAAA"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      I1 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10,
      I2 => icmp_ln17_reg_1317,
      I3 => and_ln52_10_reg_1342,
      I4 => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      I5 => ap_NS_fsm1,
      O => \indvar_flatten_reg_453[0]_i_1_n_0\
    );
\indvar_flatten_reg_453[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      I1 => \indvar_flatten_reg_453_reg_n_0_[1]\,
      O => add_ln21_1_fu_1050_p2(1)
    );
\indvar_flatten_reg_453[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[2]\,
      I1 => \indvar_flatten_reg_453_reg_n_0_[1]\,
      I2 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      O => add_ln21_1_fu_1050_p2(2)
    );
\indvar_flatten_reg_453[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[3]\,
      I1 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      I2 => \indvar_flatten_reg_453_reg_n_0_[1]\,
      I3 => \indvar_flatten_reg_453_reg_n_0_[2]\,
      O => add_ln21_1_fu_1050_p2(3)
    );
\indvar_flatten_reg_453[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[4]\,
      I1 => \indvar_flatten_reg_453_reg_n_0_[2]\,
      I2 => \indvar_flatten_reg_453_reg_n_0_[1]\,
      I3 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      I4 => \indvar_flatten_reg_453_reg_n_0_[3]\,
      O => add_ln21_1_fu_1050_p2(4)
    );
\indvar_flatten_reg_453[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEA"
    )
        port map (
      I0 => ap_NS_fsm1,
      I1 => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      I2 => and_ln52_10_reg_1342,
      I3 => icmp_ln17_reg_1317,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10,
      O => indvar_flatten_reg_453(4)
    );
\indvar_flatten_reg_453[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \indvar_flatten_reg_453_reg_n_0_[5]\,
      I1 => \indvar_flatten_reg_453_reg_n_0_[3]\,
      I2 => \indvar_flatten_reg_453_reg_n_0_[0]\,
      I3 => \indvar_flatten_reg_453_reg_n_0_[1]\,
      I4 => \indvar_flatten_reg_453_reg_n_0_[2]\,
      I5 => \indvar_flatten_reg_453_reg_n_0_[4]\,
      O => add_ln21_1_fu_1050_p2(5)
    );
\indvar_flatten_reg_453_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \indvar_flatten_reg_453[0]_i_1_n_0\,
      Q => \indvar_flatten_reg_453_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_reg_453_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => add_ln21_1_fu_1050_p2(1),
      Q => \indvar_flatten_reg_453_reg_n_0_[1]\,
      R => indvar_flatten_reg_453(4)
    );
\indvar_flatten_reg_453_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => add_ln21_1_fu_1050_p2(2),
      Q => \indvar_flatten_reg_453_reg_n_0_[2]\,
      R => indvar_flatten_reg_453(4)
    );
\indvar_flatten_reg_453_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => add_ln21_1_fu_1050_p2(3),
      Q => \indvar_flatten_reg_453_reg_n_0_[3]\,
      R => indvar_flatten_reg_453(4)
    );
\indvar_flatten_reg_453_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => add_ln21_1_fu_1050_p2(4),
      Q => \indvar_flatten_reg_453_reg_n_0_[4]\,
      R => indvar_flatten_reg_453(4)
    );
\indvar_flatten_reg_453_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => add_ln21_1_fu_1050_p2(5),
      Q => \indvar_flatten_reg_453_reg_n_0_[5]\,
      R => indvar_flatten_reg_453(4)
    );
\input_ch_idx_0_reg_475[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      I1 => input_ch_idx_0_reg_475(0),
      O => input_ch_idx_fu_1044_p2(0)
    );
\input_ch_idx_0_reg_475[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => input_ch_idx_0_reg_475(1),
      I1 => input_ch_idx_0_reg_475(0),
      I2 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      O => input_ch_idx_fu_1044_p2(1)
    );
\input_ch_idx_0_reg_475[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1222"
    )
        port map (
      I0 => input_ch_idx_0_reg_475(2),
      I1 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      I2 => input_ch_idx_0_reg_475(0),
      I3 => input_ch_idx_0_reg_475(1),
      O => input_ch_idx_fu_1044_p2(2)
    );
\input_ch_idx_0_reg_475[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A00AA"
    )
        port map (
      I0 => input_ch_idx_0_reg_475(3),
      I1 => input_ch_idx_0_reg_475(1),
      I2 => input_ch_idx_0_reg_475(0),
      I3 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      I4 => input_ch_idx_0_reg_475(2),
      O => input_ch_idx_fu_1044_p2(3)
    );
\input_ch_idx_0_reg_475_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => input_ch_idx_fu_1044_p2(0),
      Q => input_ch_idx_0_reg_475(0),
      R => ap_NS_fsm1
    );
\input_ch_idx_0_reg_475_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => input_ch_idx_fu_1044_p2(1),
      Q => input_ch_idx_0_reg_475(1),
      R => ap_NS_fsm1
    );
\input_ch_idx_0_reg_475_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => input_ch_idx_fu_1044_p2(2),
      Q => input_ch_idx_0_reg_475(2),
      R => ap_NS_fsm1
    );
\input_ch_idx_0_reg_475_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => input_ch_idx_fu_1044_p2(3),
      Q => input_ch_idx_0_reg_475(3),
      R => ap_NS_fsm1
    );
line_buff_group_0_va_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va
     port map (
      ADDRARDADDR(6 downto 0) => line_buff_group_3_va_address0(6 downto 0),
      D(15 downto 0) => tmp_data_1_fu_1194_p5(15 downto 0),
      Q(15 downto 0) => inStream_V_data_0_payload_B(15 downto 0),
      WEA(0) => line_buff_group_0_va_we0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_0_s_reg_486(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[15]\ => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      ram_reg(15 downto 0) => inStream_V_data_0_payload_A(15 downto 0),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
line_buff_group_1_va_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_0
     port map (
      ADDRARDADDR(6 downto 0) => line_buff_group_3_va_address0(6 downto 0),
      D(15 downto 0) => tmp_data_1_fu_1194_p5(31 downto 16),
      Q(15 downto 0) => inStream_V_data_0_payload_B(31 downto 16),
      WEA(0) => line_buff_group_0_va_we0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_1_s_reg_496(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[31]\ => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      ram_reg(15 downto 0) => inStream_V_data_0_payload_A(31 downto 16),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
line_buff_group_2_va_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_1
     port map (
      ADDRARDADDR(6 downto 0) => line_buff_group_3_va_address0(6 downto 0),
      D(15 downto 0) => tmp_data_1_fu_1194_p5(47 downto 32),
      Q(15 downto 0) => inStream_V_data_0_payload_B(47 downto 32),
      WEA(0) => line_buff_group_0_va_we0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15 downto 0) => ap_phi_reg_pp0_iter3_tmp_data_sub_data_2_s_reg_506(15 downto 0),
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      \outStream_V_data_1_payload_B_reg[47]\ => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      ram_reg(15 downto 0) => inStream_V_data_0_payload_A(47 downto 32),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg
    );
line_buff_group_3_va_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_line_buff_group_0_va_2
     port map (
      ADDRARDADDR(6 downto 0) => line_buff_group_3_va_address0(6 downto 0),
      D(15 downto 0) => tmp_data_1_fu_1194_p5(63 downto 48),
      Q(15 downto 0) => inStream_V_data_0_payload_B(63 downto 48),
      WEA(0) => line_buff_group_0_va_we0,
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15 downto 0) => ap_phi_reg_pp0_iter3_curr_output_data_sub_3_reg_516(15 downto 0),
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]\ => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_0\ => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_1\ => \inStream_V_data_0_state_reg_n_0_[0]\,
      \curr_output_last_V_reg_1398_pp0_iter2_reg_reg[0]_2\ => ap_enable_reg_pp0_iter4_reg_n_0,
      icmp_ln15_reg_1308_pp0_iter3_reg => icmp_ln15_reg_1308_pp0_iter3_reg,
      inStream_V_data_0_sel => inStream_V_data_0_sel,
      line_buff_group_0_va_ce0 => line_buff_group_0_va_ce0,
      outStream_V_data_1_ack_in => outStream_V_data_1_ack_in,
      \outStream_V_data_1_payload_B_reg[63]\ => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      ram_reg(15 downto 0) => inStream_V_data_0_payload_A(63 downto 48),
      select_ln21_1_reg_1389_pp0_iter2_reg => select_ln21_1_reg_1389_pp0_iter2_reg,
      \select_ln21_1_reg_1389_reg[0]\ => line_buff_group_3_va_U_n_19
    );
\or_ln17_reg_1351[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \indvar_flatten27_reg_409[8]_i_4_n_0\,
      O => p_0_in2_out
    );
\or_ln17_reg_1351_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \and_ln52_10_reg_1342[0]_i_1_n_0\,
      D => p_0_in2_out,
      Q => or_ln17_reg_1351,
      R => '0'
    );
\outStream_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(0),
      I1 => outStream_V_data_1_payload_A(0),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(0)
    );
\outStream_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(10),
      I1 => outStream_V_data_1_payload_A(10),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(10)
    );
\outStream_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(11),
      I1 => outStream_V_data_1_payload_A(11),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(11)
    );
\outStream_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(12),
      I1 => outStream_V_data_1_payload_A(12),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(12)
    );
\outStream_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(13),
      I1 => outStream_V_data_1_payload_A(13),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(13)
    );
\outStream_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(14),
      I1 => outStream_V_data_1_payload_A(14),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(14)
    );
\outStream_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(15),
      I1 => outStream_V_data_1_payload_A(15),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(15)
    );
\outStream_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(16),
      I1 => outStream_V_data_1_payload_A(16),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(16)
    );
\outStream_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(17),
      I1 => outStream_V_data_1_payload_A(17),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(17)
    );
\outStream_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(18),
      I1 => outStream_V_data_1_payload_A(18),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(18)
    );
\outStream_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(19),
      I1 => outStream_V_data_1_payload_A(19),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(19)
    );
\outStream_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(1),
      I1 => outStream_V_data_1_payload_A(1),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(1)
    );
\outStream_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(20),
      I1 => outStream_V_data_1_payload_A(20),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(20)
    );
\outStream_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(21),
      I1 => outStream_V_data_1_payload_A(21),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(21)
    );
\outStream_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(22),
      I1 => outStream_V_data_1_payload_A(22),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(22)
    );
\outStream_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(23),
      I1 => outStream_V_data_1_payload_A(23),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(23)
    );
\outStream_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(24),
      I1 => outStream_V_data_1_payload_A(24),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(24)
    );
\outStream_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(25),
      I1 => outStream_V_data_1_payload_A(25),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(25)
    );
\outStream_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(26),
      I1 => outStream_V_data_1_payload_A(26),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(26)
    );
\outStream_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(27),
      I1 => outStream_V_data_1_payload_A(27),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(27)
    );
\outStream_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(28),
      I1 => outStream_V_data_1_payload_A(28),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(28)
    );
\outStream_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(29),
      I1 => outStream_V_data_1_payload_A(29),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(29)
    );
\outStream_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(2),
      I1 => outStream_V_data_1_payload_A(2),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(2)
    );
\outStream_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(30),
      I1 => outStream_V_data_1_payload_A(30),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(30)
    );
\outStream_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(31),
      I1 => outStream_V_data_1_payload_A(31),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(31)
    );
\outStream_TDATA[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(32),
      I1 => outStream_V_data_1_payload_A(32),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(32)
    );
\outStream_TDATA[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(33),
      I1 => outStream_V_data_1_payload_A(33),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(33)
    );
\outStream_TDATA[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(34),
      I1 => outStream_V_data_1_payload_A(34),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(34)
    );
\outStream_TDATA[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(35),
      I1 => outStream_V_data_1_payload_A(35),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(35)
    );
\outStream_TDATA[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(36),
      I1 => outStream_V_data_1_payload_A(36),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(36)
    );
\outStream_TDATA[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(37),
      I1 => outStream_V_data_1_payload_A(37),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(37)
    );
\outStream_TDATA[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(38),
      I1 => outStream_V_data_1_payload_A(38),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(38)
    );
\outStream_TDATA[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(39),
      I1 => outStream_V_data_1_payload_A(39),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(39)
    );
\outStream_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(3),
      I1 => outStream_V_data_1_payload_A(3),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(3)
    );
\outStream_TDATA[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(40),
      I1 => outStream_V_data_1_payload_A(40),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(40)
    );
\outStream_TDATA[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(41),
      I1 => outStream_V_data_1_payload_A(41),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(41)
    );
\outStream_TDATA[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(42),
      I1 => outStream_V_data_1_payload_A(42),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(42)
    );
\outStream_TDATA[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(43),
      I1 => outStream_V_data_1_payload_A(43),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(43)
    );
\outStream_TDATA[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(44),
      I1 => outStream_V_data_1_payload_A(44),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(44)
    );
\outStream_TDATA[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(45),
      I1 => outStream_V_data_1_payload_A(45),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(45)
    );
\outStream_TDATA[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(46),
      I1 => outStream_V_data_1_payload_A(46),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(46)
    );
\outStream_TDATA[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(47),
      I1 => outStream_V_data_1_payload_A(47),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(47)
    );
\outStream_TDATA[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(48),
      I1 => outStream_V_data_1_payload_A(48),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(48)
    );
\outStream_TDATA[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(49),
      I1 => outStream_V_data_1_payload_A(49),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(49)
    );
\outStream_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(4),
      I1 => outStream_V_data_1_payload_A(4),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(4)
    );
\outStream_TDATA[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(50),
      I1 => outStream_V_data_1_payload_A(50),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(50)
    );
\outStream_TDATA[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(51),
      I1 => outStream_V_data_1_payload_A(51),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(51)
    );
\outStream_TDATA[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(52),
      I1 => outStream_V_data_1_payload_A(52),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(52)
    );
\outStream_TDATA[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(53),
      I1 => outStream_V_data_1_payload_A(53),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(53)
    );
\outStream_TDATA[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(54),
      I1 => outStream_V_data_1_payload_A(54),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(54)
    );
\outStream_TDATA[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(55),
      I1 => outStream_V_data_1_payload_A(55),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(55)
    );
\outStream_TDATA[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(56),
      I1 => outStream_V_data_1_payload_A(56),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(56)
    );
\outStream_TDATA[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(57),
      I1 => outStream_V_data_1_payload_A(57),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(57)
    );
\outStream_TDATA[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(58),
      I1 => outStream_V_data_1_payload_A(58),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(58)
    );
\outStream_TDATA[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(59),
      I1 => outStream_V_data_1_payload_A(59),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(59)
    );
\outStream_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(5),
      I1 => outStream_V_data_1_payload_A(5),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(5)
    );
\outStream_TDATA[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(60),
      I1 => outStream_V_data_1_payload_A(60),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(60)
    );
\outStream_TDATA[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(61),
      I1 => outStream_V_data_1_payload_A(61),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(61)
    );
\outStream_TDATA[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(62),
      I1 => outStream_V_data_1_payload_A(62),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(62)
    );
\outStream_TDATA[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(63),
      I1 => outStream_V_data_1_payload_A(63),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(63)
    );
\outStream_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(6),
      I1 => outStream_V_data_1_payload_A(6),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(6)
    );
\outStream_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(7),
      I1 => outStream_V_data_1_payload_A(7),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(7)
    );
\outStream_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(8),
      I1 => outStream_V_data_1_payload_A(8),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(8)
    );
\outStream_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_1_payload_B(9),
      I1 => outStream_V_data_1_payload_A(9),
      I2 => outStream_V_data_1_sel,
      O => outStream_TDATA(9)
    );
\outStream_TDEST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(0),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(0),
      O => outStream_TDEST(0)
    );
\outStream_TDEST[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(1),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(1),
      O => outStream_TDEST(1)
    );
\outStream_TDEST[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(2),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(2),
      O => outStream_TDEST(2)
    );
\outStream_TDEST[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(3),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(3),
      O => outStream_TDEST(3)
    );
\outStream_TDEST[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(4),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(4),
      O => outStream_TDEST(4)
    );
\outStream_TDEST[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_dest_V_1_payload_B(5),
      I1 => outStream_V_dest_V_1_sel,
      I2 => outStream_V_dest_V_1_payload_A(5),
      O => outStream_TDEST(5)
    );
\outStream_TID[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_id_V_1_payload_B(0),
      I1 => outStream_V_id_V_1_sel,
      I2 => outStream_V_id_V_1_payload_A(0),
      O => outStream_TID(0)
    );
\outStream_TID[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_id_V_1_payload_B(1),
      I1 => outStream_V_id_V_1_sel,
      I2 => outStream_V_id_V_1_payload_A(1),
      O => outStream_TID(1)
    );
\outStream_TID[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_id_V_1_payload_B(2),
      I1 => outStream_V_id_V_1_sel,
      I2 => outStream_V_id_V_1_payload_A(2),
      O => outStream_TID(2)
    );
\outStream_TID[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_id_V_1_payload_B(3),
      I1 => outStream_V_id_V_1_sel,
      I2 => outStream_V_id_V_1_payload_A(3),
      O => outStream_TID(3)
    );
\outStream_TID[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_id_V_1_payload_B(4),
      I1 => outStream_V_id_V_1_sel,
      I2 => outStream_V_id_V_1_payload_A(4),
      O => outStream_TID(4)
    );
\outStream_TKEEP[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(0),
      I1 => outStream_V_keep_V_1_payload_A(0),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(0)
    );
\outStream_TKEEP[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(1),
      I1 => outStream_V_keep_V_1_payload_A(1),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(1)
    );
\outStream_TKEEP[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(2),
      I1 => outStream_V_keep_V_1_payload_A(2),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(2)
    );
\outStream_TKEEP[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(3),
      I1 => outStream_V_keep_V_1_payload_A(3),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(3)
    );
\outStream_TKEEP[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(4),
      I1 => outStream_V_keep_V_1_payload_A(4),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(4)
    );
\outStream_TKEEP[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(5),
      I1 => outStream_V_keep_V_1_payload_A(5),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(5)
    );
\outStream_TKEEP[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(6),
      I1 => outStream_V_keep_V_1_payload_A(6),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(6)
    );
\outStream_TKEEP[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_keep_V_1_payload_B(7),
      I1 => outStream_V_keep_V_1_payload_A(7),
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_TKEEP(7)
    );
\outStream_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_last_V_1_payload_B,
      I1 => outStream_V_last_V_1_sel,
      I2 => outStream_V_last_V_1_payload_A,
      O => outStream_TLAST(0)
    );
\outStream_TSTRB[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(0),
      I1 => outStream_V_strb_V_1_payload_A(0),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(0)
    );
\outStream_TSTRB[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(1),
      I1 => outStream_V_strb_V_1_payload_A(1),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(1)
    );
\outStream_TSTRB[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(2),
      I1 => outStream_V_strb_V_1_payload_A(2),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(2)
    );
\outStream_TSTRB[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(3),
      I1 => outStream_V_strb_V_1_payload_A(3),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(3)
    );
\outStream_TSTRB[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(4),
      I1 => outStream_V_strb_V_1_payload_A(4),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(4)
    );
\outStream_TSTRB[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(5),
      I1 => outStream_V_strb_V_1_payload_A(5),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(5)
    );
\outStream_TSTRB[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(6),
      I1 => outStream_V_strb_V_1_payload_A(6),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(6)
    );
\outStream_TSTRB[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_strb_V_1_payload_B(7),
      I1 => outStream_V_strb_V_1_payload_A(7),
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_TSTRB(7)
    );
\outStream_TUSER[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_user_V_1_payload_B(0),
      I1 => outStream_V_user_V_1_sel,
      I2 => outStream_V_user_V_1_payload_A(0),
      O => outStream_TUSER(0)
    );
\outStream_TUSER[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_user_V_1_payload_B(1),
      I1 => outStream_V_user_V_1_sel,
      I2 => outStream_V_user_V_1_payload_A(1),
      O => outStream_TUSER(1)
    );
\outStream_V_data_1_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_data_1_sel_wr,
      I1 => outStream_V_data_1_ack_in,
      I2 => \outStream_V_data_1_state_reg_n_0_[0]\,
      O => outStream_V_data_1_load_A
    );
\outStream_V_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(0),
      Q => outStream_V_data_1_payload_A(0),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(10),
      Q => outStream_V_data_1_payload_A(10),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(11),
      Q => outStream_V_data_1_payload_A(11),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(12),
      Q => outStream_V_data_1_payload_A(12),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(13),
      Q => outStream_V_data_1_payload_A(13),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(14),
      Q => outStream_V_data_1_payload_A(14),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(15),
      Q => outStream_V_data_1_payload_A(15),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(16),
      Q => outStream_V_data_1_payload_A(16),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(17),
      Q => outStream_V_data_1_payload_A(17),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(18),
      Q => outStream_V_data_1_payload_A(18),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(19),
      Q => outStream_V_data_1_payload_A(19),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(1),
      Q => outStream_V_data_1_payload_A(1),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(20),
      Q => outStream_V_data_1_payload_A(20),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(21),
      Q => outStream_V_data_1_payload_A(21),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(22),
      Q => outStream_V_data_1_payload_A(22),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(23),
      Q => outStream_V_data_1_payload_A(23),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(24),
      Q => outStream_V_data_1_payload_A(24),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(25),
      Q => outStream_V_data_1_payload_A(25),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(26),
      Q => outStream_V_data_1_payload_A(26),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(27),
      Q => outStream_V_data_1_payload_A(27),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(28),
      Q => outStream_V_data_1_payload_A(28),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(29),
      Q => outStream_V_data_1_payload_A(29),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(2),
      Q => outStream_V_data_1_payload_A(2),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(30),
      Q => outStream_V_data_1_payload_A(30),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(31),
      Q => outStream_V_data_1_payload_A(31),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(32),
      Q => outStream_V_data_1_payload_A(32),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(33),
      Q => outStream_V_data_1_payload_A(33),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(34),
      Q => outStream_V_data_1_payload_A(34),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(35),
      Q => outStream_V_data_1_payload_A(35),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(36),
      Q => outStream_V_data_1_payload_A(36),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(37),
      Q => outStream_V_data_1_payload_A(37),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(38),
      Q => outStream_V_data_1_payload_A(38),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(39),
      Q => outStream_V_data_1_payload_A(39),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(3),
      Q => outStream_V_data_1_payload_A(3),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(40),
      Q => outStream_V_data_1_payload_A(40),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(41),
      Q => outStream_V_data_1_payload_A(41),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(42),
      Q => outStream_V_data_1_payload_A(42),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(43),
      Q => outStream_V_data_1_payload_A(43),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(44),
      Q => outStream_V_data_1_payload_A(44),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(45),
      Q => outStream_V_data_1_payload_A(45),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(46),
      Q => outStream_V_data_1_payload_A(46),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(47),
      Q => outStream_V_data_1_payload_A(47),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(48),
      Q => outStream_V_data_1_payload_A(48),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(49),
      Q => outStream_V_data_1_payload_A(49),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(4),
      Q => outStream_V_data_1_payload_A(4),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(50),
      Q => outStream_V_data_1_payload_A(50),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(51),
      Q => outStream_V_data_1_payload_A(51),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(52),
      Q => outStream_V_data_1_payload_A(52),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(53),
      Q => outStream_V_data_1_payload_A(53),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(54),
      Q => outStream_V_data_1_payload_A(54),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(55),
      Q => outStream_V_data_1_payload_A(55),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(56),
      Q => outStream_V_data_1_payload_A(56),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(57),
      Q => outStream_V_data_1_payload_A(57),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(58),
      Q => outStream_V_data_1_payload_A(58),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(59),
      Q => outStream_V_data_1_payload_A(59),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(5),
      Q => outStream_V_data_1_payload_A(5),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(60),
      Q => outStream_V_data_1_payload_A(60),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(61),
      Q => outStream_V_data_1_payload_A(61),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(62),
      Q => outStream_V_data_1_payload_A(62),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(63),
      Q => outStream_V_data_1_payload_A(63),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(6),
      Q => outStream_V_data_1_payload_A(6),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(7),
      Q => outStream_V_data_1_payload_A(7),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(8),
      Q => outStream_V_data_1_payload_A(8),
      R => '0'
    );
\outStream_V_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_A,
      D => tmp_data_1_fu_1194_p5(9),
      Q => outStream_V_data_1_payload_A(9),
      R => '0'
    );
\outStream_V_data_1_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_data_1_sel_wr,
      I1 => outStream_V_data_1_ack_in,
      I2 => \outStream_V_data_1_state_reg_n_0_[0]\,
      O => outStream_V_data_1_load_B
    );
\outStream_V_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(0),
      Q => outStream_V_data_1_payload_B(0),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(10),
      Q => outStream_V_data_1_payload_B(10),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(11),
      Q => outStream_V_data_1_payload_B(11),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(12),
      Q => outStream_V_data_1_payload_B(12),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(13),
      Q => outStream_V_data_1_payload_B(13),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(14),
      Q => outStream_V_data_1_payload_B(14),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(15),
      Q => outStream_V_data_1_payload_B(15),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(16),
      Q => outStream_V_data_1_payload_B(16),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(17),
      Q => outStream_V_data_1_payload_B(17),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(18),
      Q => outStream_V_data_1_payload_B(18),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(19),
      Q => outStream_V_data_1_payload_B(19),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(1),
      Q => outStream_V_data_1_payload_B(1),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(20),
      Q => outStream_V_data_1_payload_B(20),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(21),
      Q => outStream_V_data_1_payload_B(21),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(22),
      Q => outStream_V_data_1_payload_B(22),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(23),
      Q => outStream_V_data_1_payload_B(23),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(24),
      Q => outStream_V_data_1_payload_B(24),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(25),
      Q => outStream_V_data_1_payload_B(25),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(26),
      Q => outStream_V_data_1_payload_B(26),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(27),
      Q => outStream_V_data_1_payload_B(27),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(28),
      Q => outStream_V_data_1_payload_B(28),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(29),
      Q => outStream_V_data_1_payload_B(29),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(2),
      Q => outStream_V_data_1_payload_B(2),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(30),
      Q => outStream_V_data_1_payload_B(30),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(31),
      Q => outStream_V_data_1_payload_B(31),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(32),
      Q => outStream_V_data_1_payload_B(32),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(33),
      Q => outStream_V_data_1_payload_B(33),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(34),
      Q => outStream_V_data_1_payload_B(34),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(35),
      Q => outStream_V_data_1_payload_B(35),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(36),
      Q => outStream_V_data_1_payload_B(36),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(37),
      Q => outStream_V_data_1_payload_B(37),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(38),
      Q => outStream_V_data_1_payload_B(38),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(39),
      Q => outStream_V_data_1_payload_B(39),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(3),
      Q => outStream_V_data_1_payload_B(3),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(40),
      Q => outStream_V_data_1_payload_B(40),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(41),
      Q => outStream_V_data_1_payload_B(41),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(42),
      Q => outStream_V_data_1_payload_B(42),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(43),
      Q => outStream_V_data_1_payload_B(43),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(44),
      Q => outStream_V_data_1_payload_B(44),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(45),
      Q => outStream_V_data_1_payload_B(45),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(46),
      Q => outStream_V_data_1_payload_B(46),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(47),
      Q => outStream_V_data_1_payload_B(47),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(48),
      Q => outStream_V_data_1_payload_B(48),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(49),
      Q => outStream_V_data_1_payload_B(49),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(4),
      Q => outStream_V_data_1_payload_B(4),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(50),
      Q => outStream_V_data_1_payload_B(50),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(51),
      Q => outStream_V_data_1_payload_B(51),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(52),
      Q => outStream_V_data_1_payload_B(52),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(53),
      Q => outStream_V_data_1_payload_B(53),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(54),
      Q => outStream_V_data_1_payload_B(54),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(55),
      Q => outStream_V_data_1_payload_B(55),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(56),
      Q => outStream_V_data_1_payload_B(56),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(57),
      Q => outStream_V_data_1_payload_B(57),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(58),
      Q => outStream_V_data_1_payload_B(58),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(59),
      Q => outStream_V_data_1_payload_B(59),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(5),
      Q => outStream_V_data_1_payload_B(5),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(60),
      Q => outStream_V_data_1_payload_B(60),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(61),
      Q => outStream_V_data_1_payload_B(61),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(62),
      Q => outStream_V_data_1_payload_B(62),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(63),
      Q => outStream_V_data_1_payload_B(63),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(6),
      Q => outStream_V_data_1_payload_B(6),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(7),
      Q => outStream_V_data_1_payload_B(7),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(8),
      Q => outStream_V_data_1_payload_B(8),
      R => '0'
    );
\outStream_V_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_1_load_B,
      D => tmp_data_1_fu_1194_p5(9),
      Q => outStream_V_data_1_payload_B(9),
      R => '0'
    );
outStream_V_data_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_data_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_data_1_sel,
      O => outStream_V_data_1_sel_rd_i_1_n_0
    );
outStream_V_data_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_data_1_sel_rd_i_1_n_0,
      Q => outStream_V_data_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_data_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_data_1_sel_wr,
      O => outStream_V_data_1_sel_wr_i_1_n_0
    );
outStream_V_data_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_data_1_sel_wr_i_1_n_0,
      Q => outStream_V_data_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_data_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FFFFFF08080808"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => outStream_V_data_1_ack_in,
      I5 => \outStream_V_data_1_state_reg_n_0_[0]\,
      O => \outStream_V_data_1_state[0]_i_1_n_0\
    );
\outStream_V_data_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_data_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_data_1_ack_in,
      O => outStream_V_data_1_state(1)
    );
\outStream_V_data_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_data_1_state[0]_i_1_n_0\,
      Q => \outStream_V_data_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_data_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_data_1_state(1),
      Q => outStream_V_data_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_dest_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_dest_V_1_sel_wr,
      I1 => outStream_V_dest_V_1_ack_in,
      I2 => \^outstream_tvalid\,
      O => outStream_V_dest_V_1_load_A
    );
\outStream_V_dest_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(0),
      Q => outStream_V_dest_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_dest_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(1),
      Q => outStream_V_dest_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_dest_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(2),
      Q => outStream_V_dest_V_1_payload_A(2),
      R => '0'
    );
\outStream_V_dest_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(3),
      Q => outStream_V_dest_V_1_payload_A(3),
      R => '0'
    );
\outStream_V_dest_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(4),
      Q => outStream_V_dest_V_1_payload_A(4),
      R => '0'
    );
\outStream_V_dest_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_A,
      D => tmp_dest_V_fu_160(5),
      Q => outStream_V_dest_V_1_payload_A(5),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_dest_V_1_sel_wr,
      I1 => outStream_V_dest_V_1_ack_in,
      I2 => \^outstream_tvalid\,
      O => outStream_V_dest_V_1_load_B
    );
\outStream_V_dest_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(0),
      Q => outStream_V_dest_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(1),
      Q => outStream_V_dest_V_1_payload_B(1),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(2),
      Q => outStream_V_dest_V_1_payload_B(2),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(3),
      Q => outStream_V_dest_V_1_payload_B(3),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(4),
      Q => outStream_V_dest_V_1_payload_B(4),
      R => '0'
    );
\outStream_V_dest_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_dest_V_1_load_B,
      D => tmp_dest_V_fu_160(5),
      Q => outStream_V_dest_V_1_payload_B(5),
      R => '0'
    );
outStream_V_dest_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^outstream_tvalid\,
      I1 => outStream_TREADY,
      I2 => outStream_V_dest_V_1_sel,
      O => outStream_V_dest_V_1_sel_rd_i_1_n_0
    );
outStream_V_dest_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_dest_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_dest_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_dest_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_dest_V_1_ack_in,
      I4 => outStream_V_dest_V_1_sel_wr,
      O => outStream_V_dest_V_1_sel_wr_i_1_n_0
    );
outStream_V_dest_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_dest_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_dest_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_dest_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \^outstream_tvalid\,
      I5 => outStream_V_dest_V_1_ack_in,
      O => \outStream_V_dest_V_1_state[0]_i_1_n_0\
    );
\outStream_V_dest_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \^outstream_tvalid\,
      I4 => outStream_TREADY,
      I5 => outStream_V_dest_V_1_ack_in,
      O => \outStream_V_dest_V_1_state[1]_i_1_n_0\
    );
\outStream_V_dest_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_dest_V_1_state[0]_i_1_n_0\,
      Q => \^outstream_tvalid\,
      R => ap_rst_n_inv
    );
\outStream_V_dest_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_dest_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_dest_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_id_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_id_V_1_sel_wr,
      I1 => outStream_V_id_V_1_ack_in,
      I2 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      O => outStream_V_id_V_1_load_A
    );
\outStream_V_id_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_A,
      D => tmp_id_V_fu_176(0),
      Q => outStream_V_id_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_id_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_A,
      D => tmp_id_V_fu_176(1),
      Q => outStream_V_id_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_id_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_A,
      D => tmp_id_V_fu_176(2),
      Q => outStream_V_id_V_1_payload_A(2),
      R => '0'
    );
\outStream_V_id_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_A,
      D => tmp_id_V_fu_176(3),
      Q => outStream_V_id_V_1_payload_A(3),
      R => '0'
    );
\outStream_V_id_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_A,
      D => tmp_id_V_fu_176(4),
      Q => outStream_V_id_V_1_payload_A(4),
      R => '0'
    );
\outStream_V_id_V_1_payload_B[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_id_V_1_sel_wr,
      I1 => outStream_V_id_V_1_ack_in,
      I2 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      O => outStream_V_id_V_1_load_B
    );
\outStream_V_id_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_B,
      D => tmp_id_V_fu_176(0),
      Q => outStream_V_id_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_id_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_B,
      D => tmp_id_V_fu_176(1),
      Q => outStream_V_id_V_1_payload_B(1),
      R => '0'
    );
\outStream_V_id_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_B,
      D => tmp_id_V_fu_176(2),
      Q => outStream_V_id_V_1_payload_B(2),
      R => '0'
    );
\outStream_V_id_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_B,
      D => tmp_id_V_fu_176(3),
      Q => outStream_V_id_V_1_payload_B(3),
      R => '0'
    );
\outStream_V_id_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_id_V_1_load_B,
      D => tmp_id_V_fu_176(4),
      Q => outStream_V_id_V_1_payload_B(4),
      R => '0'
    );
outStream_V_id_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_id_V_1_sel,
      O => outStream_V_id_V_1_sel_rd_i_1_n_0
    );
outStream_V_id_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_id_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_id_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_id_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_id_V_1_ack_in,
      I4 => outStream_V_id_V_1_sel_wr,
      O => outStream_V_id_V_1_sel_wr_i_1_n_0
    );
outStream_V_id_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_id_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_id_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_id_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      I5 => outStream_V_id_V_1_ack_in,
      O => \outStream_V_id_V_1_state[0]_i_1_n_0\
    );
\outStream_V_id_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_id_V_1_ack_in,
      O => \outStream_V_id_V_1_state[1]_i_1_n_0\
    );
\outStream_V_id_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_id_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_id_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_id_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_id_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_keep_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_keep_V_1_sel_wr,
      I1 => outStream_V_keep_V_1_ack_in,
      I2 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      O => outStream_V_keep_V_1_load_A
    );
\outStream_V_keep_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(0),
      Q => outStream_V_keep_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(1),
      Q => outStream_V_keep_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(2),
      Q => outStream_V_keep_V_1_payload_A(2),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(3),
      Q => outStream_V_keep_V_1_payload_A(3),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(4),
      Q => outStream_V_keep_V_1_payload_A(4),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(5),
      Q => outStream_V_keep_V_1_payload_A(5),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(6),
      Q => outStream_V_keep_V_1_payload_A(6),
      R => '0'
    );
\outStream_V_keep_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_A,
      D => tmp_keep_V_fu_164(7),
      Q => outStream_V_keep_V_1_payload_A(7),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_keep_V_1_sel_wr,
      I1 => outStream_V_keep_V_1_ack_in,
      I2 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      O => outStream_V_keep_V_1_load_B
    );
\outStream_V_keep_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(0),
      Q => outStream_V_keep_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(1),
      Q => outStream_V_keep_V_1_payload_B(1),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(2),
      Q => outStream_V_keep_V_1_payload_B(2),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(3),
      Q => outStream_V_keep_V_1_payload_B(3),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(4),
      Q => outStream_V_keep_V_1_payload_B(4),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(5),
      Q => outStream_V_keep_V_1_payload_B(5),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(6),
      Q => outStream_V_keep_V_1_payload_B(6),
      R => '0'
    );
\outStream_V_keep_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_keep_V_1_load_B,
      D => tmp_keep_V_fu_164(7),
      Q => outStream_V_keep_V_1_payload_B(7),
      R => '0'
    );
outStream_V_keep_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_keep_V_1_sel,
      O => outStream_V_keep_V_1_sel_rd_i_1_n_0
    );
outStream_V_keep_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_keep_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_keep_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_keep_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_keep_V_1_ack_in,
      I4 => outStream_V_keep_V_1_sel_wr,
      O => outStream_V_keep_V_1_sel_wr_i_1_n_0
    );
outStream_V_keep_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_keep_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_keep_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      I5 => outStream_V_keep_V_1_ack_in,
      O => \outStream_V_keep_V_1_state[0]_i_1_n_0\
    );
\outStream_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_keep_V_1_ack_in,
      O => \outStream_V_keep_V_1_state[1]_i_1_n_0\
    );
\outStream_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_keep_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_keep_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_keep_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => curr_output_last_V_reg_1398_pp0_iter2_reg,
      I1 => outStream_V_last_V_1_sel_wr,
      I2 => outStream_V_last_V_1_ack_in,
      I3 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_last_V_1_payload_A,
      O => \outStream_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => outStream_V_last_V_1_payload_A,
      R => '0'
    );
\outStream_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => curr_output_last_V_reg_1398_pp0_iter2_reg,
      I1 => outStream_V_last_V_1_sel_wr,
      I2 => outStream_V_last_V_1_ack_in,
      I3 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_last_V_1_payload_B,
      O => \outStream_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\outStream_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => outStream_V_last_V_1_payload_B,
      R => '0'
    );
outStream_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_last_V_1_sel,
      O => outStream_V_last_V_1_sel_rd_i_1_n_0
    );
outStream_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_last_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_last_V_1_ack_in,
      I4 => outStream_V_last_V_1_sel_wr,
      O => outStream_V_last_V_1_sel_wr_i_1_n_0
    );
outStream_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_last_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I5 => outStream_V_last_V_1_ack_in,
      O => \outStream_V_last_V_1_state[0]_i_1_n_0\
    );
\outStream_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_last_V_1_ack_in,
      O => \outStream_V_last_V_1_state[1]_i_1_n_0\
    );
\outStream_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_strb_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_strb_V_1_sel_wr,
      I1 => outStream_V_strb_V_1_ack_in,
      I2 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      O => outStream_V_strb_V_1_load_A
    );
\outStream_V_strb_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(0),
      Q => outStream_V_strb_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(1),
      Q => outStream_V_strb_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(2),
      Q => outStream_V_strb_V_1_payload_A(2),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(3),
      Q => outStream_V_strb_V_1_payload_A(3),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(4),
      Q => outStream_V_strb_V_1_payload_A(4),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(5),
      Q => outStream_V_strb_V_1_payload_A(5),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(6),
      Q => outStream_V_strb_V_1_payload_A(6),
      R => '0'
    );
\outStream_V_strb_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_A,
      D => tmp_strb_V_fu_168(7),
      Q => outStream_V_strb_V_1_payload_A(7),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_strb_V_1_sel_wr,
      I1 => outStream_V_strb_V_1_ack_in,
      I2 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      O => outStream_V_strb_V_1_load_B
    );
\outStream_V_strb_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(0),
      Q => outStream_V_strb_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(1),
      Q => outStream_V_strb_V_1_payload_B(1),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(2),
      Q => outStream_V_strb_V_1_payload_B(2),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(3),
      Q => outStream_V_strb_V_1_payload_B(3),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(4),
      Q => outStream_V_strb_V_1_payload_B(4),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(5),
      Q => outStream_V_strb_V_1_payload_B(5),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(6),
      Q => outStream_V_strb_V_1_payload_B(6),
      R => '0'
    );
\outStream_V_strb_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_strb_V_1_load_B,
      D => tmp_strb_V_fu_168(7),
      Q => outStream_V_strb_V_1_payload_B(7),
      R => '0'
    );
outStream_V_strb_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_strb_V_1_sel,
      O => outStream_V_strb_V_1_sel_rd_i_1_n_0
    );
outStream_V_strb_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_strb_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_strb_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_strb_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_strb_V_1_ack_in,
      I4 => outStream_V_strb_V_1_sel_wr,
      O => outStream_V_strb_V_1_sel_wr_i_1_n_0
    );
outStream_V_strb_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_strb_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_strb_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_strb_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      I5 => outStream_V_strb_V_1_ack_in,
      O => \outStream_V_strb_V_1_state[0]_i_1_n_0\
    );
\outStream_V_strb_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_strb_V_1_ack_in,
      O => \outStream_V_strb_V_1_state[1]_i_1_n_0\
    );
\outStream_V_strb_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_strb_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_strb_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_strb_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_strb_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_user_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => tmp_user_V_fu_172(0),
      I1 => outStream_V_user_V_1_sel_wr,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_user_V_1_payload_A(0),
      O => \outStream_V_user_V_1_payload_A[0]_i_1_n_0\
    );
\outStream_V_user_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => tmp_user_V_fu_172(1),
      I1 => outStream_V_user_V_1_sel_wr,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_user_V_1_payload_A(1),
      O => \outStream_V_user_V_1_payload_A[1]_i_1_n_0\
    );
\outStream_V_user_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_payload_A[0]_i_1_n_0\,
      Q => outStream_V_user_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_user_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_payload_A[1]_i_1_n_0\,
      Q => outStream_V_user_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_user_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => tmp_user_V_fu_172(0),
      I1 => outStream_V_user_V_1_sel_wr,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_user_V_1_payload_B(0),
      O => \outStream_V_user_V_1_payload_B[0]_i_1_n_0\
    );
\outStream_V_user_V_1_payload_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => tmp_user_V_fu_172(1),
      I1 => outStream_V_user_V_1_sel_wr,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I4 => outStream_V_user_V_1_payload_B(1),
      O => \outStream_V_user_V_1_payload_B[1]_i_1_n_0\
    );
\outStream_V_user_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_payload_B[0]_i_1_n_0\,
      Q => outStream_V_user_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_user_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_payload_B[1]_i_1_n_0\,
      Q => outStream_V_user_V_1_payload_B(1),
      R => '0'
    );
outStream_V_user_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_user_V_1_sel,
      O => outStream_V_user_V_1_sel_rd_i_1_n_0
    );
outStream_V_user_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_user_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_user_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_user_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_V_user_V_1_ack_in,
      I4 => outStream_V_user_V_1_sel_wr,
      O => outStream_V_user_V_1_sel_wr_i_1_n_0
    );
outStream_V_user_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_user_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_user_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF0808FFFF0000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => outStream_TREADY,
      I4 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I5 => outStream_V_user_V_1_ack_in,
      O => \outStream_V_user_V_1_state[0]_i_1_n_0\
    );
\outStream_V_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF00FF"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone1_in,
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \icmp_ln15_reg_1308_pp0_iter2_reg_reg_n_0_[0]\,
      I3 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I4 => outStream_TREADY,
      I5 => outStream_V_user_V_1_ack_in,
      O => \outStream_V_user_V_1_state[1]_i_1_n_0\
    );
\outStream_V_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\outStream_V_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
\phi_ln10_reg_321[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E666"
    )
        port map (
      I0 => phi_ln10_reg_321(0),
      I1 => ap_CS_fsm_state3,
      I2 => phi_ln10_reg_321(1),
      I3 => phi_ln10_reg_321(2),
      I4 => ap_NS_fsm195_out,
      O => \phi_ln10_reg_321[0]_i_1_n_0\
    );
\phi_ln10_reg_321[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BCCC"
    )
        port map (
      I0 => phi_ln10_reg_321(2),
      I1 => phi_ln10_reg_321(1),
      I2 => phi_ln10_reg_321(0),
      I3 => ap_CS_fsm_state3,
      I4 => ap_NS_fsm195_out,
      O => \phi_ln10_reg_321[1]_i_1_n_0\
    );
\phi_ln10_reg_321[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => phi_ln10_reg_321(2),
      I1 => phi_ln10_reg_321(1),
      I2 => phi_ln10_reg_321(0),
      I3 => ap_CS_fsm_state3,
      I4 => ap_NS_fsm195_out,
      O => \phi_ln10_reg_321[2]_i_1_n_0\
    );
\phi_ln10_reg_321[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \phi_ln9_reg_299_reg_n_0_[0]\,
      I2 => \phi_ln9_reg_299_reg_n_0_[1]\,
      I3 => \phi_ln9_reg_299_reg_n_0_[2]\,
      O => ap_NS_fsm195_out
    );
\phi_ln10_reg_321_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln10_reg_321[0]_i_1_n_0\,
      Q => phi_ln10_reg_321(0),
      R => '0'
    );
\phi_ln10_reg_321_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln10_reg_321[1]_i_1_n_0\,
      Q => phi_ln10_reg_321(1),
      R => '0'
    );
\phi_ln10_reg_321_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln10_reg_321[2]_i_1_n_0\,
      Q => phi_ln10_reg_321(2),
      R => '0'
    );
\phi_ln11_reg_343[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E666"
    )
        port map (
      I0 => phi_ln11_reg_343(0),
      I1 => ap_CS_fsm_state4,
      I2 => phi_ln11_reg_343(1),
      I3 => phi_ln11_reg_343(2),
      I4 => ap_NS_fsm194_out,
      O => \phi_ln11_reg_343[0]_i_1_n_0\
    );
\phi_ln11_reg_343[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BCCC"
    )
        port map (
      I0 => phi_ln11_reg_343(2),
      I1 => phi_ln11_reg_343(1),
      I2 => phi_ln11_reg_343(0),
      I3 => ap_CS_fsm_state4,
      I4 => ap_NS_fsm194_out,
      O => \phi_ln11_reg_343[1]_i_1_n_0\
    );
\phi_ln11_reg_343[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => phi_ln11_reg_343(2),
      I1 => phi_ln11_reg_343(1),
      I2 => phi_ln11_reg_343(0),
      I3 => ap_CS_fsm_state4,
      I4 => ap_NS_fsm194_out,
      O => \phi_ln11_reg_343[2]_i_1_n_0\
    );
\phi_ln11_reg_343[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => phi_ln10_reg_321(0),
      I2 => phi_ln10_reg_321(1),
      I3 => phi_ln10_reg_321(2),
      O => ap_NS_fsm194_out
    );
\phi_ln11_reg_343_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln11_reg_343[0]_i_1_n_0\,
      Q => phi_ln11_reg_343(0),
      R => '0'
    );
\phi_ln11_reg_343_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln11_reg_343[1]_i_1_n_0\,
      Q => phi_ln11_reg_343(1),
      R => '0'
    );
\phi_ln11_reg_343_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln11_reg_343[2]_i_1_n_0\,
      Q => phi_ln11_reg_343(2),
      R => '0'
    );
\phi_ln12_reg_365[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E666"
    )
        port map (
      I0 => phi_ln12_reg_365(0),
      I1 => ap_CS_fsm_state5,
      I2 => phi_ln12_reg_365(1),
      I3 => phi_ln12_reg_365(2),
      I4 => ap_NS_fsm193_out,
      O => \phi_ln12_reg_365[0]_i_1_n_0\
    );
\phi_ln12_reg_365[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BCCC"
    )
        port map (
      I0 => phi_ln12_reg_365(2),
      I1 => phi_ln12_reg_365(1),
      I2 => phi_ln12_reg_365(0),
      I3 => ap_CS_fsm_state5,
      I4 => ap_NS_fsm193_out,
      O => \phi_ln12_reg_365[1]_i_1_n_0\
    );
\phi_ln12_reg_365[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => phi_ln12_reg_365(2),
      I1 => phi_ln12_reg_365(1),
      I2 => phi_ln12_reg_365(0),
      I3 => ap_CS_fsm_state5,
      I4 => ap_NS_fsm193_out,
      O => \phi_ln12_reg_365[2]_i_1_n_0\
    );
\phi_ln12_reg_365[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => phi_ln11_reg_343(0),
      I2 => phi_ln11_reg_343(1),
      I3 => phi_ln11_reg_343(2),
      O => ap_NS_fsm193_out
    );
\phi_ln12_reg_365_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln12_reg_365[0]_i_1_n_0\,
      Q => phi_ln12_reg_365(0),
      R => '0'
    );
\phi_ln12_reg_365_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln12_reg_365[1]_i_1_n_0\,
      Q => phi_ln12_reg_365(1),
      R => '0'
    );
\phi_ln12_reg_365_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \phi_ln12_reg_365[2]_i_1_n_0\,
      Q => phi_ln12_reg_365(2),
      R => '0'
    );
\phi_ln9_reg_299_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4,
      Q => \phi_ln9_reg_299_reg_n_0_[0]\,
      R => '0'
    );
\phi_ln9_reg_299_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3,
      Q => \phi_ln9_reg_299_reg_n_0_[1]\,
      R => '0'
    );
\phi_ln9_reg_299_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2,
      Q => \phi_ln9_reg_299_reg_n_0_[2]\,
      R => '0'
    );
\row_idx_0_reg_420[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(0),
      O => \row_idx_0_reg_420[0]_i_1_n_0\
    );
\row_idx_0_reg_420[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(0),
      I1 => row_idx_0_reg_420_reg(1),
      O => row_idx_fu_706_p2(1)
    );
\row_idx_0_reg_420[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(2),
      I1 => row_idx_0_reg_420_reg(1),
      I2 => row_idx_0_reg_420_reg(0),
      O => row_idx_fu_706_p2(2)
    );
\row_idx_0_reg_420[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      I1 => icmp_ln17_reg_1317,
      O => row_idx_0_reg_420
    );
\row_idx_0_reg_420[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => row_idx_0_reg_420_reg(3),
      I1 => row_idx_0_reg_420_reg(0),
      I2 => row_idx_0_reg_420_reg(1),
      I3 => row_idx_0_reg_420_reg(2),
      O => row_idx_fu_706_p2(3)
    );
\row_idx_0_reg_420_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => row_idx_0_reg_420,
      D => \row_idx_0_reg_420[0]_i_1_n_0\,
      Q => row_idx_0_reg_420_reg(0),
      R => ap_NS_fsm1
    );
\row_idx_0_reg_420_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => row_idx_0_reg_420,
      D => row_idx_fu_706_p2(1),
      Q => row_idx_0_reg_420_reg(1),
      R => ap_NS_fsm1
    );
\row_idx_0_reg_420_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => row_idx_0_reg_420,
      D => row_idx_fu_706_p2(2),
      Q => row_idx_0_reg_420_reg(2),
      R => ap_NS_fsm1
    );
\row_idx_0_reg_420_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => row_idx_0_reg_420,
      D => row_idx_fu_706_p2(3),
      Q => row_idx_0_reg_420_reg(3),
      R => ap_NS_fsm1
    );
\row_stride_0_reg_431[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => and_ln52_10_reg_1342,
      I1 => icmp_ln17_reg_1317,
      I2 => \row_stride_0_reg_431_reg_n_0_[0]\,
      O => select_ln17_4_fu_876_p3(0)
    );
\row_stride_0_reg_431[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => phi_ln12_reg_365(0),
      I2 => phi_ln12_reg_365(1),
      I3 => phi_ln12_reg_365(2),
      O => ap_NS_fsm1
    );
\row_stride_0_reg_431[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => and_ln52_10_reg_1342,
      I1 => \row_stride_0_reg_431_reg_n_0_[0]\,
      I2 => icmp_ln17_reg_1317,
      I3 => \row_stride_0_reg_431_reg_n_0_[1]\,
      O => select_ln17_4_fu_876_p3(1)
    );
\row_stride_0_reg_431_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln17_4_fu_876_p3(0),
      Q => \row_stride_0_reg_431_reg_n_0_[0]\,
      R => ap_NS_fsm1
    );
\row_stride_0_reg_431_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln17_4_fu_876_p3(1),
      Q => \row_stride_0_reg_431_reg_n_0_[1]\,
      R => ap_NS_fsm1
    );
\select_ln21_1_reg_1389[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F55FFFF7F550000"
    )
        port map (
      I0 => \select_ln21_1_reg_1389[0]_i_2_n_0\,
      I1 => \select_ln21_1_reg_1389[0]_i_3_n_0\,
      I2 => \select_ln21_1_reg_1389[0]_i_4_n_0\,
      I3 => \select_ln21_1_reg_1389[0]_i_5_n_0\,
      I4 => p_5_in,
      I5 => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      O => \select_ln21_1_reg_1389[0]_i_1_n_0\
    );
\select_ln21_1_reg_1389[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => icmp_ln17_reg_1317,
      I1 => \row_stride_0_reg_431_reg_n_0_[0]\,
      I2 => and_ln52_10_reg_1342,
      O => \select_ln21_1_reg_1389[0]_i_2_n_0\
    );
\select_ln21_1_reg_1389[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => and_ln52_10_reg_1342,
      I1 => xor_ln52_reg_1326,
      I2 => \row_stride_0_reg_431_reg_n_0_[0]\,
      O => \select_ln21_1_reg_1389[0]_i_3_n_0\
    );
\select_ln21_1_reg_1389[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0010"
    )
        port map (
      I0 => icmp_ln17_reg_1317,
      I1 => and_ln52_10_reg_1342,
      I2 => \col_stride_0_reg_464_reg_n_0_[0]\,
      I3 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      I5 => \col_stride_0_reg_464[1]_i_2_n_0\,
      O => \select_ln21_1_reg_1389[0]_i_4_n_0\
    );
\select_ln21_1_reg_1389[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00E0"
    )
        port map (
      I0 => \row_stride_0_reg_431_reg_n_0_[0]\,
      I1 => \col_stride_0_reg_464_reg_n_0_[0]\,
      I2 => xor_ln52_reg_1326,
      I3 => and_ln52_10_reg_1342,
      I4 => \select_ln21_1_reg_1389[0]_i_6_n_0\,
      O => \select_ln21_1_reg_1389[0]_i_5_n_0\
    );
\select_ln21_1_reg_1389[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF004500"
    )
        port map (
      I0 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      I1 => icmp_ln17_reg_1317,
      I2 => icmp_ln19_reg_1337,
      I3 => xor_ln52_reg_1326,
      I4 => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      O => \select_ln21_1_reg_1389[0]_i_6_n_0\
    );
\select_ln21_1_reg_1389_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone1_in,
      D => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      Q => select_ln21_1_reg_1389_pp0_iter2_reg,
      R => '0'
    );
\select_ln21_1_reg_1389_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln21_1_reg_1389[0]_i_1_n_0\,
      Q => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      R => '0'
    );
\select_ln52_4_reg_1377_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln52_4_fu_921_p3(0),
      Q => select_ln52_4_reg_1377(0),
      R => '0'
    );
\select_ln52_4_reg_1377_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln52_4_fu_921_p3(1),
      Q => select_ln52_4_reg_1377(1),
      R => '0'
    );
\select_ln52_4_reg_1377_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln52_4_fu_921_p3(2),
      Q => select_ln52_4_reg_1377(2),
      R => '0'
    );
\select_ln52_4_reg_1377_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      D => select_ln52_4_fu_921_p3(3),
      Q => select_ln52_4_reg_1377(3),
      R => '0'
    );
\tmp_dest_V_fu_160[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(0),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(0),
      O => inStream_V_dest_V_0_data_out(0)
    );
\tmp_dest_V_fu_160[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(1),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(1),
      O => inStream_V_dest_V_0_data_out(1)
    );
\tmp_dest_V_fu_160[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(2),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(2),
      O => inStream_V_dest_V_0_data_out(2)
    );
\tmp_dest_V_fu_160[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(3),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(3),
      O => inStream_V_dest_V_0_data_out(3)
    );
\tmp_dest_V_fu_160[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(4),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(4),
      O => inStream_V_dest_V_0_data_out(4)
    );
\tmp_dest_V_fu_160[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_dest_V_0_payload_B(5),
      I1 => inStream_V_dest_V_0_sel,
      I2 => inStream_V_dest_V_0_payload_A(5),
      O => inStream_V_dest_V_0_data_out(5)
    );
\tmp_dest_V_fu_160_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(0),
      Q => tmp_dest_V_fu_160(0),
      R => '0'
    );
\tmp_dest_V_fu_160_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(1),
      Q => tmp_dest_V_fu_160(1),
      R => '0'
    );
\tmp_dest_V_fu_160_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(2),
      Q => tmp_dest_V_fu_160(2),
      R => '0'
    );
\tmp_dest_V_fu_160_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(3),
      Q => tmp_dest_V_fu_160(3),
      R => '0'
    );
\tmp_dest_V_fu_160_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(4),
      Q => tmp_dest_V_fu_160(4),
      R => '0'
    );
\tmp_dest_V_fu_160_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_dest_V_0_data_out(5),
      Q => tmp_dest_V_fu_160(5),
      R => '0'
    );
\tmp_id_V_fu_176[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_id_V_0_payload_B(0),
      I1 => inStream_V_id_V_0_sel,
      I2 => inStream_V_id_V_0_payload_A(0),
      O => inStream_V_id_V_0_data_out(0)
    );
\tmp_id_V_fu_176[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_id_V_0_payload_B(1),
      I1 => inStream_V_id_V_0_sel,
      I2 => inStream_V_id_V_0_payload_A(1),
      O => inStream_V_id_V_0_data_out(1)
    );
\tmp_id_V_fu_176[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_id_V_0_payload_B(2),
      I1 => inStream_V_id_V_0_sel,
      I2 => inStream_V_id_V_0_payload_A(2),
      O => inStream_V_id_V_0_data_out(2)
    );
\tmp_id_V_fu_176[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_id_V_0_payload_B(3),
      I1 => inStream_V_id_V_0_sel,
      I2 => inStream_V_id_V_0_payload_A(3),
      O => inStream_V_id_V_0_data_out(3)
    );
\tmp_id_V_fu_176[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_id_V_0_payload_B(4),
      I1 => inStream_V_id_V_0_sel,
      I2 => inStream_V_id_V_0_payload_A(4),
      O => inStream_V_id_V_0_data_out(4)
    );
\tmp_id_V_fu_176_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_id_V_0_data_out(0),
      Q => tmp_id_V_fu_176(0),
      R => '0'
    );
\tmp_id_V_fu_176_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_id_V_0_data_out(1),
      Q => tmp_id_V_fu_176(1),
      R => '0'
    );
\tmp_id_V_fu_176_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_id_V_0_data_out(2),
      Q => tmp_id_V_fu_176(2),
      R => '0'
    );
\tmp_id_V_fu_176_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_id_V_0_data_out(3),
      Q => tmp_id_V_fu_176(3),
      R => '0'
    );
\tmp_id_V_fu_176_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_id_V_0_data_out(4),
      Q => tmp_id_V_fu_176(4),
      R => '0'
    );
\tmp_keep_V_fu_164[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(0),
      I1 => inStream_V_keep_V_0_payload_A(0),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(0)
    );
\tmp_keep_V_fu_164[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(1),
      I1 => inStream_V_keep_V_0_payload_A(1),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(1)
    );
\tmp_keep_V_fu_164[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(2),
      I1 => inStream_V_keep_V_0_payload_A(2),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(2)
    );
\tmp_keep_V_fu_164[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(3),
      I1 => inStream_V_keep_V_0_payload_A(3),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(3)
    );
\tmp_keep_V_fu_164[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(4),
      I1 => inStream_V_keep_V_0_payload_A(4),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(4)
    );
\tmp_keep_V_fu_164[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(5),
      I1 => inStream_V_keep_V_0_payload_A(5),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(5)
    );
\tmp_keep_V_fu_164[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(6),
      I1 => inStream_V_keep_V_0_payload_A(6),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(6)
    );
\tmp_keep_V_fu_164[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_keep_V_0_payload_B(7),
      I1 => inStream_V_keep_V_0_payload_A(7),
      I2 => inStream_V_keep_V_0_sel,
      O => inStream_V_keep_V_0_data_out(7)
    );
\tmp_keep_V_fu_164_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(0),
      Q => tmp_keep_V_fu_164(0),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(1),
      Q => tmp_keep_V_fu_164(1),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(2),
      Q => tmp_keep_V_fu_164(2),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(3),
      Q => tmp_keep_V_fu_164(3),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(4),
      Q => tmp_keep_V_fu_164(4),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(5),
      Q => tmp_keep_V_fu_164(5),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(6),
      Q => tmp_keep_V_fu_164(6),
      R => '0'
    );
\tmp_keep_V_fu_164_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_keep_V_0_data_out(7),
      Q => tmp_keep_V_fu_164(7),
      R => '0'
    );
\tmp_strb_V_fu_168[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(0),
      I1 => inStream_V_strb_V_0_payload_A(0),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(0)
    );
\tmp_strb_V_fu_168[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(1),
      I1 => inStream_V_strb_V_0_payload_A(1),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(1)
    );
\tmp_strb_V_fu_168[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(2),
      I1 => inStream_V_strb_V_0_payload_A(2),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(2)
    );
\tmp_strb_V_fu_168[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(3),
      I1 => inStream_V_strb_V_0_payload_A(3),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(3)
    );
\tmp_strb_V_fu_168[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(4),
      I1 => inStream_V_strb_V_0_payload_A(4),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(4)
    );
\tmp_strb_V_fu_168[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(5),
      I1 => inStream_V_strb_V_0_payload_A(5),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(5)
    );
\tmp_strb_V_fu_168[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(6),
      I1 => inStream_V_strb_V_0_payload_A(6),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(6)
    );
\tmp_strb_V_fu_168[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => inStream_V_strb_V_0_payload_B(7),
      I1 => inStream_V_strb_V_0_payload_A(7),
      I2 => inStream_V_strb_V_0_sel,
      O => inStream_V_strb_V_0_data_out(7)
    );
\tmp_strb_V_fu_168_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(0),
      Q => tmp_strb_V_fu_168(0),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(1),
      Q => tmp_strb_V_fu_168(1),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(2),
      Q => tmp_strb_V_fu_168(2),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(3),
      Q => tmp_strb_V_fu_168(3),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(4),
      Q => tmp_strb_V_fu_168(4),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(5),
      Q => tmp_strb_V_fu_168(5),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(6),
      Q => tmp_strb_V_fu_168(6),
      R => '0'
    );
\tmp_strb_V_fu_168_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_strb_V_0_data_out(7),
      Q => tmp_strb_V_fu_168(7),
      R => '0'
    );
\tmp_user_V_fu_172[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_user_V_0_payload_B(0),
      I1 => inStream_V_user_V_0_sel,
      I2 => inStream_V_user_V_0_payload_A(0),
      O => inStream_V_user_V_0_data_out(0)
    );
\tmp_user_V_fu_172[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inStream_V_user_V_0_payload_B(1),
      I1 => inStream_V_user_V_0_sel,
      I2 => inStream_V_user_V_0_payload_A(1),
      O => inStream_V_user_V_0_data_out(1)
    );
\tmp_user_V_fu_172_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_user_V_0_data_out(0),
      Q => tmp_user_V_fu_172(0),
      R => '0'
    );
\tmp_user_V_fu_172_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => line_buff_group_0_va_we0,
      D => inStream_V_user_V_0_data_out(1),
      Q => tmp_user_V_fu_172(1),
      R => '0'
    );
\xor_ln52_reg_1326[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => icmp_ln17_fu_610_p2,
      O => xor_ln52_fu_616_p2
    );
\xor_ln52_reg_1326_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \and_ln52_10_reg_1342[0]_i_1_n_0\,
      D => xor_ln52_fu_616_p2,
      Q => xor_ln52_reg_1326,
      R => '0'
    );
yolo_upsamp_top_CTRL_BUS_s_axi_U: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_CTRL_BUS_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_CTRL_BUS_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_CTRL_BUS_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_CTRL_BUS_WREADY,
      Q(2) => ap_CS_fsm_state11,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      \ap_CS_fsm_reg[1]\ => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_2,
      \ap_CS_fsm_reg[1]_0\ => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_3,
      \ap_CS_fsm_reg[1]_1\ => yolo_upsamp_top_CTRL_BUS_s_axi_U_n_4,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      int_ap_ready_i_2_0 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      int_ap_ready_i_2_1 => \outStream_V_data_1_state_reg_n_0_[0]\,
      int_ap_ready_i_3_0 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      int_ap_ready_reg_0 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      int_ap_ready_reg_1 => \^outstream_tvalid\,
      int_ap_ready_reg_2 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      int_ap_ready_reg_3 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      interrupt => interrupt,
      outStream_TREADY => outStream_TREADY,
      outStream_V_data_1_ack_in => outStream_V_data_1_ack_in,
      outStream_V_dest_V_1_ack_in => outStream_V_dest_V_1_ack_in,
      outStream_V_id_V_1_ack_in => outStream_V_id_V_1_ack_in,
      outStream_V_keep_V_1_ack_in => outStream_V_keep_V_1_ack_in,
      outStream_V_last_V_1_ack_in => outStream_V_last_V_1_ack_in,
      outStream_V_strb_V_1_ack_in => outStream_V_strb_V_1_ack_in,
      outStream_V_user_V_1_ack_in => outStream_V_user_V_1_ack_in,
      \phi_ln9_reg_299_reg[2]\ => \phi_ln9_reg_299_reg_n_0_[0]\,
      \phi_ln9_reg_299_reg[2]_0\ => \phi_ln9_reg_299_reg_n_0_[1]\,
      \phi_ln9_reg_299_reg[2]_1\ => \phi_ln9_reg_299_reg_n_0_[2]\,
      s_axi_CTRL_BUS_ARADDR(3 downto 0) => s_axi_CTRL_BUS_ARADDR(3 downto 0),
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_AWADDR(3 downto 0) => s_axi_CTRL_BUS_AWADDR(3 downto 0),
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_RDATA(4) => \^s_axi_ctrl_bus_rdata\(7),
      s_axi_CTRL_BUS_RDATA(3 downto 0) => \^s_axi_ctrl_bus_rdata\(3 downto 0),
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_WDATA(2) => s_axi_CTRL_BUS_WDATA(7),
      s_axi_CTRL_BUS_WDATA(1 downto 0) => s_axi_CTRL_BUS_WDATA(1 downto 0),
      s_axi_CTRL_BUS_WSTRB(0) => s_axi_CTRL_BUS_WSTRB(0),
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID
    );
yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1
     port map (
      A(3 downto 0) => select_ln21_fu_972_p3(3 downto 0),
      ADDRARDADDR(6 downto 0) => line_buff_group_3_va_address0(6 downto 0),
      D(3 downto 0) => select_ln52_4_fu_921_p3(3 downto 0),
      P(6 downto 0) => grp_fu_1207_p3(6 downto 0),
      Q(0) => ap_CS_fsm_pp0_stage0,
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      \col_assign_reg_442_reg[1]\ => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_9,
      \col_stride_0_reg_464_reg[0]\(4) => \indvar_flatten_reg_453_reg_n_0_[5]\,
      \col_stride_0_reg_464_reg[0]\(3) => \indvar_flatten_reg_453_reg_n_0_[4]\,
      \col_stride_0_reg_464_reg[0]\(2) => \indvar_flatten_reg_453_reg_n_0_[3]\,
      \col_stride_0_reg_464_reg[0]\(1) => \indvar_flatten_reg_453_reg_n_0_[2]\,
      \col_stride_0_reg_464_reg[0]\(0) => \indvar_flatten_reg_453_reg_n_0_[1]\,
      \col_stride_0_reg_464_reg[0]_0\ => \indvar_flatten_reg_453_reg_n_0_[0]\,
      icmp_ln17_reg_1317 => icmp_ln17_reg_1317,
      icmp_ln19_reg_1337 => icmp_ln19_reg_1337,
      \indvar_flatten_reg_453_reg[2]\ => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_12,
      \input_ch_idx_0_reg_475_reg[1]\ => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_13,
      or_ln17_reg_1351 => or_ln17_reg_1351,
      \or_ln17_reg_1351_reg[0]\ => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_11,
      \^p\ => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      p_0 => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      p_1(3 downto 0) => select_ln52_4_reg_1377(3 downto 0),
      p_2 => \icmp_ln15_reg_1308_pp0_iter1_reg_reg_n_0_[0]\,
      p_3(3 downto 0) => col_assign_reg_442(3 downto 0),
      p_4(3 downto 0) => input_ch_idx_0_reg_475(3 downto 0),
      p_5_in => p_5_in,
      ram_reg => \select_ln21_1_reg_1389_reg_n_0_[0]\,
      xor_ln52_reg_1326 => xor_ln52_reg_1326,
      \xor_ln52_reg_1326_reg[0]\ => yolo_upsamp_top_mac_muladd_4ns_5ns_4ns_8_1_1_U2_n_10
    );
yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1
     port map (
      A(3 downto 0) => select_ln21_fu_972_p3(3 downto 0),
      D(3 downto 0) => select_ln52_4_fu_921_p3(3 downto 0),
      P(6 downto 0) => grp_fu_1207_p3(6 downto 0),
      Q(0) => ap_CS_fsm_pp0_stage0,
      ap_block_pp0_stage0_subdone1_in => ap_block_pp0_stage0_subdone1_in,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      \icmp_ln15_reg_1308_reg[0]\ => yolo_upsamp_top_mac_muladd_5ns_4ns_4ns_8_1_1_U1_n_7,
      \^p\ => \icmp_ln15_reg_1308_reg_n_0_[0]\,
      p_5_in => p_5_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_yolo_upsamp_top_0_0 is
  port (
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_yolo_upsamp_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_yolo_upsamp_top_0_0 : entity is "design_1_yolo_upsamp_top_0_0,yolo_upsamp_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_yolo_upsamp_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_yolo_upsamp_top_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_yolo_upsamp_top_0_0 : entity is "yolo_upsamp_top,Vivado 2019.1";
  attribute hls_module : string;
  attribute hls_module of design_1_yolo_upsamp_top_0_0 : entity is "yes";
end design_1_yolo_upsamp_top_0_0;

architecture STRUCTURE of design_1_yolo_upsamp_top_0_0 is
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_BUS_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "7'b0100000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "7'b0000001";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of inst : label is "7'b1000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "7'b0000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "7'b0000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "7'b0001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "7'b0010000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:inStream:outStream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inStream_TREADY : signal is "xilinx.com:interface:axis:1.0 inStream TREADY";
  attribute X_INTERFACE_INFO of inStream_TVALID : signal is "xilinx.com:interface:axis:1.0 inStream TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of outStream_TREADY : signal is "xilinx.com:interface:axis:1.0 outStream TREADY";
  attribute X_INTERFACE_INFO of outStream_TVALID : signal is "xilinx.com:interface:axis:1.0 outStream TVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_CTRL_BUS_RREADY : signal is "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID";
  attribute X_INTERFACE_INFO of inStream_TDATA : signal is "xilinx.com:interface:axis:1.0 inStream TDATA";
  attribute X_INTERFACE_INFO of inStream_TDEST : signal is "xilinx.com:interface:axis:1.0 inStream TDEST";
  attribute X_INTERFACE_INFO of inStream_TID : signal is "xilinx.com:interface:axis:1.0 inStream TID";
  attribute X_INTERFACE_PARAMETER of inStream_TID : signal is "XIL_INTERFACENAME inStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of inStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 inStream TKEEP";
  attribute X_INTERFACE_INFO of inStream_TLAST : signal is "xilinx.com:interface:axis:1.0 inStream TLAST";
  attribute X_INTERFACE_INFO of inStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 inStream TSTRB";
  attribute X_INTERFACE_INFO of inStream_TUSER : signal is "xilinx.com:interface:axis:1.0 inStream TUSER";
  attribute X_INTERFACE_INFO of outStream_TDATA : signal is "xilinx.com:interface:axis:1.0 outStream TDATA";
  attribute X_INTERFACE_INFO of outStream_TDEST : signal is "xilinx.com:interface:axis:1.0 outStream TDEST";
  attribute X_INTERFACE_INFO of outStream_TID : signal is "xilinx.com:interface:axis:1.0 outStream TID";
  attribute X_INTERFACE_PARAMETER of outStream_TID : signal is "XIL_INTERFACENAME outStream, TDATA_NUM_BYTES 8, TDEST_WIDTH 6, TID_WIDTH 5, TUSER_WIDTH 2, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of outStream_TKEEP : signal is "xilinx.com:interface:axis:1.0 outStream TKEEP";
  attribute X_INTERFACE_INFO of outStream_TLAST : signal is "xilinx.com:interface:axis:1.0 outStream TLAST";
  attribute X_INTERFACE_INFO of outStream_TSTRB : signal is "xilinx.com:interface:axis:1.0 outStream TSTRB";
  attribute X_INTERFACE_INFO of outStream_TUSER : signal is "xilinx.com:interface:axis:1.0 outStream TUSER";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA";
  attribute X_INTERFACE_INFO of s_axi_CTRL_BUS_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB";
begin
inst: entity work.design_1_yolo_upsamp_top_0_0_yolo_upsamp_top
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TDATA(63 downto 0) => inStream_TDATA(63 downto 0),
      inStream_TDEST(5 downto 0) => inStream_TDEST(5 downto 0),
      inStream_TID(4 downto 0) => inStream_TID(4 downto 0),
      inStream_TKEEP(7 downto 0) => inStream_TKEEP(7 downto 0),
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TREADY => inStream_TREADY,
      inStream_TSTRB(7 downto 0) => inStream_TSTRB(7 downto 0),
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID,
      interrupt => interrupt,
      outStream_TDATA(63 downto 0) => outStream_TDATA(63 downto 0),
      outStream_TDEST(5 downto 0) => outStream_TDEST(5 downto 0),
      outStream_TID(4 downto 0) => outStream_TID(4 downto 0),
      outStream_TKEEP(7 downto 0) => outStream_TKEEP(7 downto 0),
      outStream_TLAST(0) => outStream_TLAST(0),
      outStream_TREADY => outStream_TREADY,
      outStream_TSTRB(7 downto 0) => outStream_TSTRB(7 downto 0),
      outStream_TUSER(1 downto 0) => outStream_TUSER(1 downto 0),
      outStream_TVALID => outStream_TVALID,
      s_axi_CTRL_BUS_ARADDR(3 downto 0) => s_axi_CTRL_BUS_ARADDR(3 downto 0),
      s_axi_CTRL_BUS_ARREADY => s_axi_CTRL_BUS_ARREADY,
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_AWADDR(3 downto 0) => s_axi_CTRL_BUS_AWADDR(3 downto 0),
      s_axi_CTRL_BUS_AWREADY => s_axi_CTRL_BUS_AWREADY,
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_BRESP(1 downto 0) => s_axi_CTRL_BUS_BRESP(1 downto 0),
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_RDATA(31 downto 0) => s_axi_CTRL_BUS_RDATA(31 downto 0),
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      s_axi_CTRL_BUS_RRESP(1 downto 0) => s_axi_CTRL_BUS_RRESP(1 downto 0),
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_WDATA(31 downto 0) => s_axi_CTRL_BUS_WDATA(31 downto 0),
      s_axi_CTRL_BUS_WREADY => s_axi_CTRL_BUS_WREADY,
      s_axi_CTRL_BUS_WSTRB(3 downto 0) => s_axi_CTRL_BUS_WSTRB(3 downto 0),
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID
    );
end STRUCTURE;
