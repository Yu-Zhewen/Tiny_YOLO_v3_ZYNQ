#include "yolo_conv_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void yolo_conv_top::thread_tmp_50_fu_2887_p3() {
    tmp_50_fu_2887_p3 = (!and_ln68_3_fu_2882_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_3_fu_2882_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_3_reg_5032_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_51_fu_2897_p4() {
    tmp_51_fu_2897_p4 = bitcast_ln68_4_fu_2894_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_53_fu_2934_p3() {
    tmp_53_fu_2934_p3 = (!and_ln68_4_fu_2929_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_4_fu_2929_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_4_reg_5070_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_54_fu_2944_p4() {
    tmp_54_fu_2944_p4 = bitcast_ln68_5_fu_2941_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_56_fu_2981_p3() {
    tmp_56_fu_2981_p3 = (!and_ln68_5_fu_2976_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_5_fu_2976_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_5_reg_5078_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_57_fu_2991_p4() {
    tmp_57_fu_2991_p4 = bitcast_ln68_6_fu_2988_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_59_fu_3028_p3() {
    tmp_59_fu_3028_p3 = (!and_ln68_6_fu_3023_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_6_fu_3023_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_6_reg_5116_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_60_fu_3038_p4() {
    tmp_60_fu_3038_p4 = bitcast_ln68_7_fu_3035_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_62_fu_3075_p3() {
    tmp_62_fu_3075_p3 = (!and_ln68_7_fu_3070_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_7_fu_3070_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_7_reg_5124_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_63_fu_3085_p4() {
    tmp_63_fu_3085_p4 = bitcast_ln68_8_fu_3082_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_65_fu_3122_p3() {
    tmp_65_fu_3122_p3 = (!and_ln68_8_fu_3117_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_8_fu_3117_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_8_reg_5152_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_66_fu_3132_p4() {
    tmp_66_fu_3132_p4 = bitcast_ln68_9_fu_3129_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_68_fu_3169_p3() {
    tmp_68_fu_3169_p3 = (!and_ln68_9_fu_3164_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_9_fu_3164_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_9_reg_5160_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_69_fu_3179_p4() {
    tmp_69_fu_3179_p4 = bitcast_ln68_10_fu_3176_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_71_fu_3216_p3() {
    tmp_71_fu_3216_p3 = (!and_ln68_10_fu_3211_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_10_fu_3211_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_s_reg_5213_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_72_fu_3226_p4() {
    tmp_72_fu_3226_p4 = bitcast_ln68_11_fu_3223_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_74_fu_3263_p3() {
    tmp_74_fu_3263_p3 = (!and_ln68_11_fu_3258_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_11_fu_3258_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_10_reg_5221_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_75_fu_3273_p4() {
    tmp_75_fu_3273_p4 = bitcast_ln68_12_fu_3270_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_77_fu_3310_p3() {
    tmp_77_fu_3310_p3 = (!and_ln68_12_fu_3305_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_12_fu_3305_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_11_reg_5249_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_78_fu_3320_p4() {
    tmp_78_fu_3320_p4 = bitcast_ln68_13_fu_3317_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_80_fu_3357_p3() {
    tmp_80_fu_3357_p3 = (!and_ln68_13_fu_3352_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_13_fu_3352_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_12_reg_5257_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_81_fu_3367_p4() {
    tmp_81_fu_3367_p4 = bitcast_ln68_14_fu_3364_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_83_fu_3404_p3() {
    tmp_83_fu_3404_p3 = (!and_ln68_14_fu_3399_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_14_fu_3399_p2.read()[0].to_bool())? grp_fu_1043_p1.read(): tmp_3_13_reg_5285_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_84_fu_3414_p4() {
    tmp_84_fu_3414_p4 = bitcast_ln68_15_fu_3411_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_86_fu_3451_p3() {
    tmp_86_fu_3451_p3 = (!and_ln68_15_fu_3446_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln68_15_fu_3446_p2.read()[0].to_bool())? grp_fu_1046_p1.read(): tmp_3_14_reg_5293_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_8_nbwritereq_fu_568_p3() {
    tmp_8_nbwritereq_fu_568_p3 =  (sc_lv<1>) (out_stream_group_8_s_full_n.read());
}

void yolo_conv_top::thread_tmp_9_nbwritereq_fu_581_p3() {
    tmp_9_nbwritereq_fu_581_p3 =  (sc_lv<1>) (out_stream_group_9_s_full_n.read());
}

void yolo_conv_top::thread_tmp_s_nbwritereq_fu_490_p3() {
    tmp_s_nbwritereq_fu_490_p3 =  (sc_lv<1>) (out_stream_group_2_s_full_n.read());
}

void yolo_conv_top::thread_trunc_ln68_10_fu_3189_p1() {
    trunc_ln68_10_fu_3189_p1 = bitcast_ln68_10_fu_3176_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_11_fu_3236_p1() {
    trunc_ln68_11_fu_3236_p1 = bitcast_ln68_11_fu_3223_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_12_fu_3283_p1() {
    trunc_ln68_12_fu_3283_p1 = bitcast_ln68_12_fu_3270_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_13_fu_3330_p1() {
    trunc_ln68_13_fu_3330_p1 = bitcast_ln68_13_fu_3317_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_14_fu_3377_p1() {
    trunc_ln68_14_fu_3377_p1 = bitcast_ln68_14_fu_3364_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_15_fu_3424_p1() {
    trunc_ln68_15_fu_3424_p1 = bitcast_ln68_15_fu_3411_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_1_fu_2766_p1() {
    trunc_ln68_1_fu_2766_p1 = bitcast_ln68_1_fu_2753_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_2_fu_2813_p1() {
    trunc_ln68_2_fu_2813_p1 = bitcast_ln68_2_fu_2800_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_3_fu_2860_p1() {
    trunc_ln68_3_fu_2860_p1 = bitcast_ln68_3_fu_2847_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_4_fu_2907_p1() {
    trunc_ln68_4_fu_2907_p1 = bitcast_ln68_4_fu_2894_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_5_fu_2954_p1() {
    trunc_ln68_5_fu_2954_p1 = bitcast_ln68_5_fu_2941_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_6_fu_3001_p1() {
    trunc_ln68_6_fu_3001_p1 = bitcast_ln68_6_fu_2988_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_7_fu_3048_p1() {
    trunc_ln68_7_fu_3048_p1 = bitcast_ln68_7_fu_3035_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_8_fu_3095_p1() {
    trunc_ln68_8_fu_3095_p1 = bitcast_ln68_8_fu_3082_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_9_fu_3142_p1() {
    trunc_ln68_9_fu_3142_p1 = bitcast_ln68_9_fu_3129_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln68_fu_2719_p1() {
    trunc_ln68_fu_2719_p1 = bitcast_ln68_fu_2706_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_xor_ln35_fu_1313_p2() {
    xor_ln35_fu_1313_p2 = (icmp_ln27_fu_1275_p2.read() ^ ap_const_lv1_1);
}

void yolo_conv_top::thread_zext_ln35_1_fu_1516_p1() {
    zext_ln35_1_fu_1516_p1 = esl_zext<11,9>(select_ln35_16_fu_1508_p3.read());
}

void yolo_conv_top::thread_zext_ln35_2_fu_1603_p1() {
    zext_ln35_2_fu_1603_p1 = esl_zext<11,9>(select_ln35_17_reg_3835.read());
}

void yolo_conv_top::thread_zext_ln35_3_fu_1606_p1() {
    zext_ln35_3_fu_1606_p1 = esl_zext<11,9>(select_ln35_18_reg_3840.read());
}

void yolo_conv_top::thread_zext_ln35_fu_1599_p1() {
    zext_ln35_fu_1599_p1 = esl_zext<11,9>(select_ln35_15_fu_1594_p3.read());
}

void yolo_conv_top::thread_zext_ln61_10_fu_2407_p1() {
    zext_ln61_10_fu_2407_p1 = esl_zext<9,8>(add_ln61_6_reg_4756.read());
}

void yolo_conv_top::thread_zext_ln61_11_fu_2424_p1() {
    zext_ln61_11_fu_2424_p1 = esl_zext<9,8>(sext_ln61_1_fu_2421_p1.read());
}

void yolo_conv_top::thread_zext_ln61_1_fu_2359_p1() {
    zext_ln61_1_fu_2359_p1 = esl_zext<8,5>(add_ln_reg_4051.read());
}

void yolo_conv_top::thread_zext_ln61_2_fu_2329_p1() {
    zext_ln61_2_fu_2329_p1 = esl_zext<7,5>(add_ln_reg_4051.read());
}

void yolo_conv_top::thread_zext_ln61_3_fu_1721_p1() {
    zext_ln61_3_fu_1721_p1 = esl_zext<6,5>(add_ln_fu_1713_p4.read());
}

void yolo_conv_top::thread_zext_ln61_4_fu_2332_p1() {
    zext_ln61_4_fu_2332_p1 = esl_zext<9,6>(add_ln61_reg_4064.read());
}

void yolo_conv_top::thread_zext_ln61_5_fu_2362_p1() {
    zext_ln61_5_fu_2362_p1 = esl_zext<9,7>(add_ln61_1_reg_4714.read());
}

void yolo_conv_top::thread_zext_ln61_6_fu_2366_p1() {
    zext_ln61_6_fu_2366_p1 = esl_zext<9,7>(add_ln61_2_reg_4719.read());
}

void yolo_conv_top::thread_zext_ln61_7_fu_2384_p1() {
    zext_ln61_7_fu_2384_p1 = esl_zext<9,7>(sext_ln61_fu_2381_p1.read());
}

void yolo_conv_top::thread_zext_ln61_8_fu_2389_p1() {
    zext_ln61_8_fu_2389_p1 = esl_zext<9,8>(add_ln61_4_reg_4746.read());
}

void yolo_conv_top::thread_zext_ln61_9_fu_2403_p1() {
    zext_ln61_9_fu_2403_p1 = esl_zext<9,8>(add_ln61_5_reg_4751.read());
}

void yolo_conv_top::thread_zext_ln61_fu_2325_p1() {
    zext_ln61_fu_2325_p1 = esl_zext<9,5>(add_ln_reg_4051.read());
}

void yolo_conv_top::thread_zext_ln729_1_fu_1614_p1() {
    zext_ln729_1_fu_1614_p1 = esl_zext<64,11>(add_ln729_fu_1609_p2.read());
}

void yolo_conv_top::thread_zext_ln835_1_fu_1661_p1() {
    zext_ln835_1_fu_1661_p1 = esl_zext<64,11>(add_ln835_1_reg_3886.read());
}

void yolo_conv_top::thread_zext_ln835_2_fu_1667_p1() {
    zext_ln835_2_fu_1667_p1 = esl_zext<64,11>(add_ln835_2_reg_3891.read());
}

void yolo_conv_top::thread_zext_ln835_fu_1655_p1() {
    zext_ln835_fu_1655_p1 = esl_zext<64,11>(add_ln835_reg_3852.read());
}

}

