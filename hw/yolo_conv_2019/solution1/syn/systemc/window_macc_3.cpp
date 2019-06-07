#include "window_macc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void window_macc::thread_add_ln151_1_fu_2359_p2() {
    add_ln151_1_fu_2359_p2 = (!weight_offset_read_reg_2809.read().is_01() || !ap_const_lv9_2.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809.read()) + sc_bigint<9>(ap_const_lv9_2));
}

void window_macc::thread_add_ln151_2_fu_2539_p2() {
    add_ln151_2_fu_2539_p2 = (!weight_offset_read_reg_2809_pp0_iter14_reg.read().is_01() || !ap_const_lv9_3.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter14_reg.read()) + sc_bigint<9>(ap_const_lv9_3));
}

void window_macc::thread_add_ln151_3_fu_2334_p2() {
    add_ln151_3_fu_2334_p2 = (!weight_offset.read().is_01() || !ap_const_lv9_4.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset.read()) + sc_bigint<9>(ap_const_lv9_4));
}

void window_macc::thread_add_ln151_4_fu_2491_p2() {
    add_ln151_4_fu_2491_p2 = (!weight_offset_read_reg_2809_pp0_iter13_reg.read().is_01() || !ap_const_lv9_5.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter13_reg.read()) + sc_bigint<9>(ap_const_lv9_5));
}

void window_macc::thread_add_ln151_5_fu_2652_p2() {
    add_ln151_5_fu_2652_p2 = (!weight_offset_read_reg_2809_pp0_iter27_reg.read().is_01() || !ap_const_lv9_6.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter27_reg.read()) + sc_bigint<9>(ap_const_lv9_6));
}

void window_macc::thread_add_ln151_6_fu_2515_p2() {
    add_ln151_6_fu_2515_p2 = (!weight_offset_read_reg_2809_pp0_iter13_reg.read().is_01() || !ap_const_lv9_7.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter13_reg.read()) + sc_bigint<9>(ap_const_lv9_7));
}

void window_macc::thread_add_ln151_7_fu_2676_p2() {
    add_ln151_7_fu_2676_p2 = (!weight_offset_read_reg_2809_pp0_iter27_reg.read().is_01() || !ap_const_lv9_8.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter27_reg.read()) + sc_bigint<9>(ap_const_lv9_8));
}

void window_macc::thread_add_ln151_fu_2389_p2() {
    add_ln151_fu_2389_p2 = (!weight_offset_read_reg_2809_pp0_iter4_reg.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(weight_offset_read_reg_2809_pp0_iter4_reg.read()) + sc_bigint<9>(ap_const_lv9_1));
}

void window_macc::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void window_macc::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void window_macc::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read())) || esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_0));
}

void window_macc::thread_ap_block_state10_pp0_stage0_iter9() {
    ap_block_state10_pp0_stage0_iter9 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state11_pp0_stage0_iter10() {
    ap_block_state11_pp0_stage0_iter10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state12_pp0_stage0_iter11() {
    ap_block_state12_pp0_stage0_iter11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state13_pp0_stage0_iter12() {
    ap_block_state13_pp0_stage0_iter12 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state14_pp0_stage0_iter13() {
    ap_block_state14_pp0_stage0_iter13 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state15_pp0_stage0_iter14() {
    ap_block_state15_pp0_stage0_iter14 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state16_pp0_stage0_iter15() {
    ap_block_state16_pp0_stage0_iter15 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state17_pp0_stage0_iter16() {
    ap_block_state17_pp0_stage0_iter16 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state18_pp0_stage0_iter17() {
    ap_block_state18_pp0_stage0_iter17 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state19_pp0_stage0_iter18() {
    ap_block_state19_pp0_stage0_iter18 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void window_macc::thread_ap_block_state20_pp0_stage0_iter19() {
    ap_block_state20_pp0_stage0_iter19 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state21_pp0_stage0_iter20() {
    ap_block_state21_pp0_stage0_iter20 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state22_pp0_stage0_iter21() {
    ap_block_state22_pp0_stage0_iter21 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state23_pp0_stage0_iter22() {
    ap_block_state23_pp0_stage0_iter22 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state24_pp0_stage0_iter23() {
    ap_block_state24_pp0_stage0_iter23 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state25_pp0_stage0_iter24() {
    ap_block_state25_pp0_stage0_iter24 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state26_pp0_stage0_iter25() {
    ap_block_state26_pp0_stage0_iter25 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state27_pp0_stage0_iter26() {
    ap_block_state27_pp0_stage0_iter26 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state28_pp0_stage0_iter27() {
    ap_block_state28_pp0_stage0_iter27 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state29_pp0_stage0_iter28() {
    ap_block_state29_pp0_stage0_iter28 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state30_pp0_stage0_iter29() {
    ap_block_state30_pp0_stage0_iter29 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state31_pp0_stage0_iter30() {
    ap_block_state31_pp0_stage0_iter30 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state32_pp0_stage0_iter31() {
    ap_block_state32_pp0_stage0_iter31 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state33_pp0_stage0_iter32() {
    ap_block_state33_pp0_stage0_iter32 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state34_pp0_stage0_iter33() {
    ap_block_state34_pp0_stage0_iter33 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state35_pp0_stage0_iter34() {
    ap_block_state35_pp0_stage0_iter34 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state36_pp0_stage0_iter35() {
    ap_block_state36_pp0_stage0_iter35 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state37_pp0_stage0_iter36() {
    ap_block_state37_pp0_stage0_iter36 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state38_pp0_stage0_iter37() {
    ap_block_state38_pp0_stage0_iter37 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state39_pp0_stage0_iter38() {
    ap_block_state39_pp0_stage0_iter38 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state40_pp0_stage0_iter39() {
    ap_block_state40_pp0_stage0_iter39 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state41_pp0_stage0_iter40() {
    ap_block_state41_pp0_stage0_iter40 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state42_pp0_stage0_iter41() {
    ap_block_state42_pp0_stage0_iter41 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state43_pp0_stage0_iter42() {
    ap_block_state43_pp0_stage0_iter42 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state44_pp0_stage0_iter43() {
    ap_block_state44_pp0_stage0_iter43 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state45_pp0_stage0_iter44() {
    ap_block_state45_pp0_stage0_iter44 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state46_pp0_stage0_iter45() {
    ap_block_state46_pp0_stage0_iter45 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state47_pp0_stage0_iter46() {
    ap_block_state47_pp0_stage0_iter46 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state48_pp0_stage0_iter47() {
    ap_block_state48_pp0_stage0_iter47 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state49_pp0_stage0_iter48() {
    ap_block_state49_pp0_stage0_iter48 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state4_pp0_stage0_iter3() {
    ap_block_state4_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state50_pp0_stage0_iter49() {
    ap_block_state50_pp0_stage0_iter49 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state51_pp0_stage0_iter50() {
    ap_block_state51_pp0_stage0_iter50 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state52_pp0_stage0_iter51() {
    ap_block_state52_pp0_stage0_iter51 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state53_pp0_stage0_iter52() {
    ap_block_state53_pp0_stage0_iter52 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state54_pp0_stage0_iter53() {
    ap_block_state54_pp0_stage0_iter53 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state55_pp0_stage0_iter54() {
    ap_block_state55_pp0_stage0_iter54 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state56_pp0_stage0_iter55() {
    ap_block_state56_pp0_stage0_iter55 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state57_pp0_stage0_iter56() {
    ap_block_state57_pp0_stage0_iter56 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state58_pp0_stage0_iter57() {
    ap_block_state58_pp0_stage0_iter57 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state59_pp0_stage0_iter58() {
    ap_block_state59_pp0_stage0_iter58 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state5_pp0_stage0_iter4() {
    ap_block_state5_pp0_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state60_pp0_stage0_iter59() {
    ap_block_state60_pp0_stage0_iter59 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state61_pp0_stage0_iter60() {
    ap_block_state61_pp0_stage0_iter60 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state62_pp0_stage0_iter61() {
    ap_block_state62_pp0_stage0_iter61 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state63_pp0_stage0_iter62() {
    ap_block_state63_pp0_stage0_iter62 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state6_pp0_stage0_iter5() {
    ap_block_state6_pp0_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state7_pp0_stage0_iter6() {
    ap_block_state7_pp0_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state8_pp0_stage0_iter7() {
    ap_block_state8_pp0_stage0_iter7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_block_state9_pp0_stage0_iter8() {
    ap_block_state9_pp0_stage0_iter8 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void window_macc::thread_ap_condition_1569() {
    ap_condition_1569 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()));
}

void window_macc::thread_ap_condition_1643() {
    ap_condition_1643 = (!esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_0) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_1) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_2) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_3) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_4) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_5) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_6) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_7) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_8) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_9) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_A) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_B) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_C) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_D) && !esl_seteq<1,9,9>(sext_ln151_reg_2914.read(), ap_const_lv9_E));
}

void window_macc::thread_ap_condition_1811() {
    ap_condition_1811 = (!esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_0) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_1) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_2) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_3) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_4) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_5) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_6) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_7) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_8) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_9) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_A) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_B) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_C) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_D) && !esl_seteq<1,9,9>(sext_ln151_4_reg_2887_pp0_iter12_reg.read(), ap_const_lv9_E));
}

void window_macc::thread_ap_condition_1816() {
    ap_condition_1816 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter14.read()));
}

void window_macc::thread_ap_condition_1890() {
    ap_condition_1890 = (!esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_0) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_1) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_2) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_3) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_4) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_5) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_6) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_7) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_8) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_9) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_A) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_B) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_C) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_D) && !esl_seteq<1,9,9>(sext_ln151_2_reg_2891_pp0_iter13_reg.read(), ap_const_lv9_E));
}

void window_macc::thread_ap_condition_2111() {
    ap_condition_2111 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter18.read()));
}

void window_macc::thread_ap_condition_2185() {
    ap_condition_2185 = (!esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_0) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_1) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_2) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_3) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_4) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_5) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_6) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_7) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_8) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_9) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_A) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_B) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_C) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_D) && !esl_seteq<1,9,9>(sext_ln151_1_reg_2905_pp0_iter17_reg.read(), ap_const_lv9_E));
}

void window_macc::thread_ap_condition_2503() {
    ap_condition_2503 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()));
}

void window_macc::thread_ap_condition_2577() {
    ap_condition_2577 = (!esl_seteq<1,9,9>(ap_const_lv9_0, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_1, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_2, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_3, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_4, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_5, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_6, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_7, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_8, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_9, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_A, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_B, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_C, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_D, sext_ln151_5_reg_3428_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_E, sext_ln151_5_reg_3428_pp0_iter26_reg.read()));
}

void window_macc::thread_ap_condition_2653() {
    ap_condition_2653 = (!esl_seteq<1,9,9>(ap_const_lv9_0, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_1, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_2, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_3, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_4, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_5, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_6, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_7, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_8, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_9, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_A, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_B, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_C, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_D, sext_ln151_7_reg_3432_pp0_iter26_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_E, sext_ln151_7_reg_3432_pp0_iter26_reg.read()));
}

void window_macc::thread_ap_condition_2658() {
    ap_condition_2658 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter28.read()));
}

void window_macc::thread_ap_condition_2732() {
    ap_condition_2732 = (!esl_seteq<1,9,9>(ap_const_lv9_0, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_1, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_2, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_3, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_4, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_5, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_6, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_7, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_8, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_9, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_A, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_B, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_C, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_D, sext_ln151_3_reg_3436_pp0_iter27_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_E, sext_ln151_3_reg_3436_pp0_iter27_reg.read()));
}

void window_macc::thread_ap_condition_3048() {
    ap_condition_3048 = (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter41.read()));
}

void window_macc::thread_ap_condition_3122() {
    ap_condition_3122 = (!esl_seteq<1,9,9>(ap_const_lv9_0, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_1, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_2, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_3, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_4, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_5, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_6, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_7, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_8, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_9, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_A, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_B, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_C, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_D, sext_ln151_6_reg_4130_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_E, sext_ln151_6_reg_4130_pp0_iter40_reg.read()));
}

void window_macc::thread_ap_condition_3198() {
    ap_condition_3198 = (!esl_seteq<1,9,9>(ap_const_lv9_0, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_1, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_2, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_3, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_4, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_5, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_6, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_7, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_8, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_9, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_A, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_B, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_C, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_D, sext_ln151_8_reg_4134_pp0_iter40_reg.read()) && !esl_seteq<1,9,9>(ap_const_lv9_E, sext_ln151_8_reg_4134_pp0_iter40_reg.read()));
}

void window_macc::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter62.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void window_macc::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void window_macc::thread_ap_enable_reg_pp0_iter0() {
    ap_enable_reg_pp0_iter0 = ap_start.read();
}

void window_macc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void window_macc::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter62.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void window_macc::thread_ap_idle_pp0_0to61() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter61.read()))) {
        ap_idle_pp0_0to61 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to61 = ap_const_logic_0;
    }
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i149_reg_2132() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i149_reg_2132 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i199_reg_1942() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i199_reg_1942 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i249_reg_2056() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i249_reg_2056 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i299_reg_2170() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i299_reg_2170 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i349_reg_2094() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i349_reg_2094 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i399_reg_2208() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i399_reg_2208 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i49_reg_2018() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i49_reg_2018 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i99_reg_1980() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i99_reg_1980 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_1904() {
    ap_phi_reg_pp0_iter0_UnifiedRetVal_i_reg_1904 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void window_macc::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void window_macc::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to61.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void window_macc::thread_ap_return() {
    ap_return = grp_fu_2279_p2.read();
}

void window_macc::thread_grp_fu_2246_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2246_ce = ap_const_logic_1;
    } else {
        grp_fu_2246_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2251_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2251_ce = ap_const_logic_1;
    } else {
        grp_fu_2251_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2255_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2255_ce = ap_const_logic_1;
    } else {
        grp_fu_2255_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2259_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2259_ce = ap_const_logic_1;
    } else {
        grp_fu_2259_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2263_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2263_ce = ap_const_logic_1;
    } else {
        grp_fu_2263_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2267_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2267_ce = ap_const_logic_1;
    } else {
        grp_fu_2267_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2271_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2271_ce = ap_const_logic_1;
    } else {
        grp_fu_2271_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2275_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2275_ce = ap_const_logic_1;
    } else {
        grp_fu_2275_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2279_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2279_ce = ap_const_logic_1;
    } else {
        grp_fu_2279_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2283_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2283_ce = ap_const_logic_1;
    } else {
        grp_fu_2283_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2288_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2288_ce = ap_const_logic_1;
    } else {
        grp_fu_2288_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2293_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2293_ce = ap_const_logic_1;
    } else {
        grp_fu_2293_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2298_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2298_ce = ap_const_logic_1;
    } else {
        grp_fu_2298_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2303_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2303_ce = ap_const_logic_1;
    } else {
        grp_fu_2303_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2308_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2308_ce = ap_const_logic_1;
    } else {
        grp_fu_2308_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2313_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2313_ce = ap_const_logic_1;
    } else {
        grp_fu_2313_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2318_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2318_ce = ap_const_logic_1;
    } else {
        grp_fu_2318_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2323_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2323_ce = ap_const_logic_1;
    } else {
        grp_fu_2323_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2328_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2328_ce = ap_const_logic_1;
    } else {
        grp_fu_2328_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2328_p1() {
    grp_fu_2328_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2353_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2353_ce = ap_const_logic_1;
    } else {
        grp_fu_2353_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2353_p1() {
    grp_fu_2353_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2377_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2377_ce = ap_const_logic_1;
    } else {
        grp_fu_2377_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2377_p1() {
    grp_fu_2377_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2407_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2407_ce = ap_const_logic_1;
    } else {
        grp_fu_2407_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2407_p1() {
    grp_fu_2407_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2509_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2509_ce = ap_const_logic_1;
    } else {
        grp_fu_2509_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2509_p1() {
    grp_fu_2509_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2533_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2533_ce = ap_const_logic_1;
    } else {
        grp_fu_2533_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2533_p1() {
    grp_fu_2533_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2557_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2557_ce = ap_const_logic_1;
    } else {
        grp_fu_2557_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2557_p1() {
    grp_fu_2557_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2670_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2670_ce = ap_const_logic_1;
    } else {
        grp_fu_2670_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2670_p1() {
    grp_fu_2670_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_grp_fu_2694_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()))) {
        grp_fu_2694_ce = ap_const_logic_1;
    } else {
        grp_fu_2694_ce = ap_const_logic_0;
    }
}

void window_macc::thread_grp_fu_2694_p1() {
    grp_fu_2694_p1 =  (sc_lv<6>) (ap_const_lv9_1B);
}

void window_macc::thread_kernel_weight_0_address0() {
    kernel_weight_0_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_0_address1() {
    kernel_weight_0_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_0_address2() {
    kernel_weight_0_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_0_address3() {
    kernel_weight_0_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_0_address4() {
    kernel_weight_0_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_0_address5() {
    kernel_weight_0_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_0_address6() {
    kernel_weight_0_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_0_address7() {
    kernel_weight_0_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_0_address8() {
    kernel_weight_0_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_0_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_0_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_0_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_0_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_0_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_0_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_0_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_0_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_0_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_0_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_0_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_address0() {
    kernel_weight_10_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_10_address1() {
    kernel_weight_10_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_10_address2() {
    kernel_weight_10_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_10_address3() {
    kernel_weight_10_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_10_address4() {
    kernel_weight_10_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_10_address5() {
    kernel_weight_10_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_10_address6() {
    kernel_weight_10_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_10_address7() {
    kernel_weight_10_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_10_address8() {
    kernel_weight_10_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_10_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_10_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_10_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_10_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_10_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_10_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_10_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_10_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_10_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_10_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_10_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_10_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_address0() {
    kernel_weight_11_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_11_address1() {
    kernel_weight_11_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_11_address2() {
    kernel_weight_11_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_11_address3() {
    kernel_weight_11_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_11_address4() {
    kernel_weight_11_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_11_address5() {
    kernel_weight_11_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_11_address6() {
    kernel_weight_11_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_11_address7() {
    kernel_weight_11_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_11_address8() {
    kernel_weight_11_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_11_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_11_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_11_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_11_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_11_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_11_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_11_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_11_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_11_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_11_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_11_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_11_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_address0() {
    kernel_weight_12_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_12_address1() {
    kernel_weight_12_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_12_address2() {
    kernel_weight_12_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_12_address3() {
    kernel_weight_12_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_12_address4() {
    kernel_weight_12_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_12_address5() {
    kernel_weight_12_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_12_address6() {
    kernel_weight_12_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_12_address7() {
    kernel_weight_12_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_12_address8() {
    kernel_weight_12_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_12_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_12_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_12_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_12_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_12_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_12_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_12_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_12_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_12_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_12_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_12_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_12_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_address0() {
    kernel_weight_13_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_13_address1() {
    kernel_weight_13_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_13_address2() {
    kernel_weight_13_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_13_address3() {
    kernel_weight_13_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_13_address4() {
    kernel_weight_13_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_13_address5() {
    kernel_weight_13_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_13_address6() {
    kernel_weight_13_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_13_address7() {
    kernel_weight_13_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_13_address8() {
    kernel_weight_13_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_13_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_13_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_13_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_13_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_13_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_13_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_13_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_13_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_13_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_13_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_13_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_13_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_address0() {
    kernel_weight_14_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_14_address1() {
    kernel_weight_14_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_14_address2() {
    kernel_weight_14_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_14_address3() {
    kernel_weight_14_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_14_address4() {
    kernel_weight_14_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_14_address5() {
    kernel_weight_14_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_14_address6() {
    kernel_weight_14_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_14_address7() {
    kernel_weight_14_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_14_address8() {
    kernel_weight_14_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_14_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_14_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_14_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_14_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_14_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_14_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_14_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_14_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_14_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_14_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_14_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_14_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_address0() {
    kernel_weight_15_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_15_address1() {
    kernel_weight_15_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_15_address2() {
    kernel_weight_15_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_15_address3() {
    kernel_weight_15_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_15_address4() {
    kernel_weight_15_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_15_address5() {
    kernel_weight_15_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_15_address6() {
    kernel_weight_15_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_15_address7() {
    kernel_weight_15_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_15_address8() {
    kernel_weight_15_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_15_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_15_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_15_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_15_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_15_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_15_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_15_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_15_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_15_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_15_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_15_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_15_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_address0() {
    kernel_weight_1_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_1_address1() {
    kernel_weight_1_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_1_address2() {
    kernel_weight_1_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_1_address3() {
    kernel_weight_1_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_1_address4() {
    kernel_weight_1_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_1_address5() {
    kernel_weight_1_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_1_address6() {
    kernel_weight_1_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_1_address7() {
    kernel_weight_1_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_1_address8() {
    kernel_weight_1_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_1_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_1_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_1_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_1_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_1_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_1_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_1_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_1_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_1_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_1_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_1_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_address0() {
    kernel_weight_2_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_2_address1() {
    kernel_weight_2_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_2_address2() {
    kernel_weight_2_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_2_address3() {
    kernel_weight_2_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_2_address4() {
    kernel_weight_2_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_2_address5() {
    kernel_weight_2_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_2_address6() {
    kernel_weight_2_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_2_address7() {
    kernel_weight_2_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_2_address8() {
    kernel_weight_2_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_2_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_2_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_2_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_2_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_2_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_2_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_2_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_2_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_2_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_2_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_2_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_2_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_address0() {
    kernel_weight_3_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_3_address1() {
    kernel_weight_3_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_3_address2() {
    kernel_weight_3_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_3_address3() {
    kernel_weight_3_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_3_address4() {
    kernel_weight_3_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_3_address5() {
    kernel_weight_3_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_3_address6() {
    kernel_weight_3_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_3_address7() {
    kernel_weight_3_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_3_address8() {
    kernel_weight_3_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_3_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_3_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_3_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_3_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_3_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_3_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_3_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_3_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_3_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_3_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_3_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_address0() {
    kernel_weight_4_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_4_address1() {
    kernel_weight_4_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_4_address2() {
    kernel_weight_4_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_4_address3() {
    kernel_weight_4_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_4_address4() {
    kernel_weight_4_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_4_address5() {
    kernel_weight_4_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_4_address6() {
    kernel_weight_4_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_4_address7() {
    kernel_weight_4_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_4_address8() {
    kernel_weight_4_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_4_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_4_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_4_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_4_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_4_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_4_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_4_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_4_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_4_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_4_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_4_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_4_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_address0() {
    kernel_weight_5_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_5_address1() {
    kernel_weight_5_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_5_address2() {
    kernel_weight_5_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_5_address3() {
    kernel_weight_5_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_5_address4() {
    kernel_weight_5_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_5_address5() {
    kernel_weight_5_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_5_address6() {
    kernel_weight_5_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_5_address7() {
    kernel_weight_5_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_5_address8() {
    kernel_weight_5_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_5_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_5_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_5_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_5_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_5_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_5_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_5_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_5_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_5_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_5_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_5_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_5_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_address0() {
    kernel_weight_6_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_6_address1() {
    kernel_weight_6_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_6_address2() {
    kernel_weight_6_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_6_address3() {
    kernel_weight_6_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_6_address4() {
    kernel_weight_6_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_6_address5() {
    kernel_weight_6_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_6_address6() {
    kernel_weight_6_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_6_address7() {
    kernel_weight_6_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_6_address8() {
    kernel_weight_6_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_6_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_6_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_6_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_6_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_6_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_6_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_6_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_6_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_6_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_6_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_6_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_6_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_address0() {
    kernel_weight_7_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_7_address1() {
    kernel_weight_7_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_7_address2() {
    kernel_weight_7_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_7_address3() {
    kernel_weight_7_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_7_address4() {
    kernel_weight_7_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_7_address5() {
    kernel_weight_7_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_7_address6() {
    kernel_weight_7_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_7_address7() {
    kernel_weight_7_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_7_address8() {
    kernel_weight_7_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_7_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_7_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_7_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_7_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_7_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_7_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_7_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_7_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_7_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_7_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_7_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_7_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_address0() {
    kernel_weight_8_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_8_address1() {
    kernel_weight_8_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_8_address2() {
    kernel_weight_8_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_8_address3() {
    kernel_weight_8_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_8_address4() {
    kernel_weight_8_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_8_address5() {
    kernel_weight_8_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_8_address6() {
    kernel_weight_8_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_8_address7() {
    kernel_weight_8_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_8_address8() {
    kernel_weight_8_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_8_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_8_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_8_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_8_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_8_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_8_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_8_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_8_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_8_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_8_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_8_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_8_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_address0() {
    kernel_weight_9_address0 =  (sc_lv<5>) (zext_ln151_fu_2431_p1.read());
}

void window_macc::thread_kernel_weight_9_address1() {
    kernel_weight_9_address1 =  (sc_lv<5>) (zext_ln151_4_fu_2451_p1.read());
}

void window_macc::thread_kernel_weight_9_address2() {
    kernel_weight_9_address2 =  (sc_lv<5>) (zext_ln151_2_fu_2471_p1.read());
}

void window_macc::thread_kernel_weight_9_address3() {
    kernel_weight_9_address3 =  (sc_lv<5>) (zext_ln151_1_fu_2572_p1.read());
}

void window_macc::thread_kernel_weight_9_address4() {
    kernel_weight_9_address4 =  (sc_lv<5>) (zext_ln151_5_fu_2592_p1.read());
}

void window_macc::thread_kernel_weight_9_address5() {
    kernel_weight_9_address5 =  (sc_lv<5>) (zext_ln151_7_fu_2612_p1.read());
}

void window_macc::thread_kernel_weight_9_address6() {
    kernel_weight_9_address6 =  (sc_lv<5>) (zext_ln151_3_fu_2632_p1.read());
}

void window_macc::thread_kernel_weight_9_address7() {
    kernel_weight_9_address7 =  (sc_lv<5>) (zext_ln151_6_fu_2706_p1.read());
}

void window_macc::thread_kernel_weight_9_address8() {
    kernel_weight_9_address8 =  (sc_lv<5>) (zext_ln151_8_fu_2726_p1.read());
}

void window_macc::thread_kernel_weight_9_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_9_ce0 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce0 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter12.read()))) {
        kernel_weight_9_ce1 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce1 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter13.read()))) {
        kernel_weight_9_ce2 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce2 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter17.read()))) {
        kernel_weight_9_ce3 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce3 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_9_ce4 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce4 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce5() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter26.read()))) {
        kernel_weight_9_ce5 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce5 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce6() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter27.read()))) {
        kernel_weight_9_ce6 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce6 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce7() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_9_ce7 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce7 = ap_const_logic_0;
    }
}

void window_macc::thread_kernel_weight_9_ce8() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_11001.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter40.read()))) {
        kernel_weight_9_ce8 = ap_const_logic_1;
    } else {
        kernel_weight_9_ce8 = ap_const_logic_0;
    }
}

void window_macc::thread_mul_ln151_1_fu_2760_p0() {
    mul_ln151_1_fu_2760_p0 =  (sc_lv<9>) (mul_ln151_1_fu_2760_p00.read());
}

void window_macc::thread_mul_ln151_1_fu_2760_p00() {
    mul_ln151_1_fu_2760_p00 = esl_zext<20,9>(add_ln151_fu_2389_p2.read());
}

void window_macc::thread_mul_ln151_1_fu_2760_p1() {
    mul_ln151_1_fu_2760_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_2_fu_2753_p0() {
    mul_ln151_2_fu_2753_p0 =  (sc_lv<9>) (mul_ln151_2_fu_2753_p00.read());
}

void window_macc::thread_mul_ln151_2_fu_2753_p00() {
    mul_ln151_2_fu_2753_p00 = esl_zext<20,9>(add_ln151_1_fu_2359_p2.read());
}

void window_macc::thread_mul_ln151_2_fu_2753_p1() {
    mul_ln151_2_fu_2753_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_3_fu_2788_p0() {
    mul_ln151_3_fu_2788_p0 =  (sc_lv<9>) (mul_ln151_3_fu_2788_p00.read());
}

void window_macc::thread_mul_ln151_3_fu_2788_p00() {
    mul_ln151_3_fu_2788_p00 = esl_zext<20,9>(add_ln151_2_fu_2539_p2.read());
}

void window_macc::thread_mul_ln151_3_fu_2788_p1() {
    mul_ln151_3_fu_2788_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_4_fu_2746_p0() {
    mul_ln151_4_fu_2746_p0 =  (sc_lv<9>) (mul_ln151_4_fu_2746_p00.read());
}

void window_macc::thread_mul_ln151_4_fu_2746_p00() {
    mul_ln151_4_fu_2746_p00 = esl_zext<20,9>(add_ln151_3_fu_2334_p2.read());
}

void window_macc::thread_mul_ln151_4_fu_2746_p1() {
    mul_ln151_4_fu_2746_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_5_fu_2774_p0() {
    mul_ln151_5_fu_2774_p0 =  (sc_lv<9>) (mul_ln151_5_fu_2774_p00.read());
}

void window_macc::thread_mul_ln151_5_fu_2774_p00() {
    mul_ln151_5_fu_2774_p00 = esl_zext<20,9>(add_ln151_4_fu_2491_p2.read());
}

void window_macc::thread_mul_ln151_5_fu_2774_p1() {
    mul_ln151_5_fu_2774_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_6_fu_2795_p0() {
    mul_ln151_6_fu_2795_p0 =  (sc_lv<9>) (mul_ln151_6_fu_2795_p00.read());
}

void window_macc::thread_mul_ln151_6_fu_2795_p00() {
    mul_ln151_6_fu_2795_p00 = esl_zext<20,9>(add_ln151_5_fu_2652_p2.read());
}

void window_macc::thread_mul_ln151_6_fu_2795_p1() {
    mul_ln151_6_fu_2795_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_7_fu_2781_p0() {
    mul_ln151_7_fu_2781_p0 =  (sc_lv<9>) (mul_ln151_7_fu_2781_p00.read());
}

void window_macc::thread_mul_ln151_7_fu_2781_p00() {
    mul_ln151_7_fu_2781_p00 = esl_zext<20,9>(add_ln151_6_fu_2515_p2.read());
}

void window_macc::thread_mul_ln151_7_fu_2781_p1() {
    mul_ln151_7_fu_2781_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_8_fu_2802_p0() {
    mul_ln151_8_fu_2802_p0 =  (sc_lv<9>) (mul_ln151_8_fu_2802_p00.read());
}

void window_macc::thread_mul_ln151_8_fu_2802_p00() {
    mul_ln151_8_fu_2802_p00 = esl_zext<20,9>(add_ln151_7_fu_2676_p2.read());
}

void window_macc::thread_mul_ln151_8_fu_2802_p1() {
    mul_ln151_8_fu_2802_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_mul_ln151_fu_2767_p0() {
    mul_ln151_fu_2767_p0 =  (sc_lv<9>) (mul_ln151_fu_2767_p00.read());
}

void window_macc::thread_mul_ln151_fu_2767_p00() {
    mul_ln151_fu_2767_p00 = esl_zext<20,9>(weight_offset_read_reg_2809_pp0_iter10_reg.read());
}

void window_macc::thread_mul_ln151_fu_2767_p1() {
    mul_ln151_fu_2767_p1 =  (sc_lv<11>) (ap_const_lv20_25F);
}

void window_macc::thread_sext_ln151_1_fu_2413_p1() {
    sext_ln151_1_fu_2413_p1 = esl_sext<9,6>(tmp_67_reg_2900.read());
}

void window_macc::thread_sext_ln151_2_fu_2386_p1() {
    sext_ln151_2_fu_2386_p1 = esl_sext<9,6>(tmp_68_reg_2882.read());
}

void window_macc::thread_sext_ln151_3_fu_2569_p1() {
    sext_ln151_3_fu_2569_p1 = esl_sext<9,6>(tmp_69_reg_3423.read());
}

void window_macc::thread_sext_ln151_4_fu_2383_p1() {
    sext_ln151_4_fu_2383_p1 = esl_sext<9,6>(tmp_70_reg_2872.read());
}

void window_macc::thread_sext_ln151_5_fu_2563_p1() {
    sext_ln151_5_fu_2563_p1 = esl_sext<9,6>(tmp_71_reg_3403.read());
}

void window_macc::thread_sext_ln151_6_fu_2700_p1() {
    sext_ln151_6_fu_2700_p1 = esl_sext<9,6>(tmp_72_reg_4115.read());
}

void window_macc::thread_sext_ln151_7_fu_2566_p1() {
    sext_ln151_7_fu_2566_p1 = esl_sext<9,6>(tmp_73_reg_3413.read());
}

void window_macc::thread_sext_ln151_8_fu_2703_p1() {
    sext_ln151_8_fu_2703_p1 = esl_sext<9,6>(tmp_74_reg_4125.read());
}

void window_macc::thread_sext_ln151_fu_2428_p1() {
    sext_ln151_fu_2428_p1 = esl_sext<9,6>(tmp_reg_2909.read());
}

void window_macc::thread_zext_ln151_1_fu_2572_p1() {
    zext_ln151_1_fu_2572_p1 = esl_zext<64,9>(grp_fu_2407_p2.read());
}

void window_macc::thread_zext_ln151_2_fu_2471_p1() {
    zext_ln151_2_fu_2471_p1 = esl_zext<64,9>(grp_fu_2377_p2.read());
}

void window_macc::thread_zext_ln151_3_fu_2632_p1() {
    zext_ln151_3_fu_2632_p1 = esl_zext<64,9>(grp_fu_2557_p2.read());
}

void window_macc::thread_zext_ln151_4_fu_2451_p1() {
    zext_ln151_4_fu_2451_p1 = esl_zext<64,9>(grp_fu_2353_p2.read());
}

void window_macc::thread_zext_ln151_5_fu_2592_p1() {
    zext_ln151_5_fu_2592_p1 = esl_zext<64,9>(grp_fu_2509_p2.read());
}

void window_macc::thread_zext_ln151_6_fu_2706_p1() {
    zext_ln151_6_fu_2706_p1 = esl_zext<64,9>(grp_fu_2670_p2.read());
}

void window_macc::thread_zext_ln151_7_fu_2612_p1() {
    zext_ln151_7_fu_2612_p1 = esl_zext<64,9>(grp_fu_2533_p2.read());
}

void window_macc::thread_zext_ln151_8_fu_2726_p1() {
    zext_ln151_8_fu_2726_p1 = esl_zext<64,9>(grp_fu_2694_p2.read());
}

void window_macc::thread_zext_ln151_fu_2431_p1() {
    zext_ln151_fu_2431_p1 = esl_zext<64,9>(grp_fu_2328_p2.read());
}

}

