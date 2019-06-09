#include "yolo_conv_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void yolo_conv_top::thread_tmp_43_fu_2861_p4() {
    tmp_43_fu_2861_p4 = bitcast_ln79_2_fu_2858_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_44_fu_2804_p3() {
    tmp_44_fu_2804_p3 = (!and_ln79_fu_2799_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_fu_2799_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_reg_5060_pp0_iter10_reg.read());
}

void yolo_conv_top::thread_tmp_45_fu_2851_p3() {
    tmp_45_fu_2851_p3 = (!and_ln79_1_fu_2846_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_1_fu_2846_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_1_reg_5068_pp0_iter10_reg.read());
}

void yolo_conv_top::thread_tmp_47_fu_2898_p3() {
    tmp_47_fu_2898_p3 = (!and_ln79_2_fu_2893_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_2_fu_2893_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_2_reg_5086_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_48_fu_2908_p4() {
    tmp_48_fu_2908_p4 = bitcast_ln79_3_fu_2905_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_4_fu_2767_p4() {
    tmp_4_fu_2767_p4 = bitcast_ln79_fu_2764_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_50_fu_2945_p3() {
    tmp_50_fu_2945_p3 = (!and_ln79_3_fu_2940_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_3_fu_2940_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_3_reg_5094_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_51_fu_2955_p4() {
    tmp_51_fu_2955_p4 = bitcast_ln79_4_fu_2952_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_53_fu_2992_p3() {
    tmp_53_fu_2992_p3 = (!and_ln79_4_fu_2987_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_4_fu_2987_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_4_reg_5132_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_54_fu_3002_p4() {
    tmp_54_fu_3002_p4 = bitcast_ln79_5_fu_2999_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_56_fu_3039_p3() {
    tmp_56_fu_3039_p3 = (!and_ln79_5_fu_3034_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_5_fu_3034_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_5_reg_5140_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_57_fu_3049_p4() {
    tmp_57_fu_3049_p4 = bitcast_ln79_6_fu_3046_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_59_fu_3086_p3() {
    tmp_59_fu_3086_p3 = (!and_ln79_6_fu_3081_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_6_fu_3081_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_6_reg_5178_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_60_fu_3096_p4() {
    tmp_60_fu_3096_p4 = bitcast_ln79_7_fu_3093_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_62_fu_3133_p3() {
    tmp_62_fu_3133_p3 = (!and_ln79_7_fu_3128_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_7_fu_3128_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_7_reg_5186_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_63_fu_3143_p4() {
    tmp_63_fu_3143_p4 = bitcast_ln79_8_fu_3140_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_65_fu_3180_p3() {
    tmp_65_fu_3180_p3 = (!and_ln79_8_fu_3175_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_8_fu_3175_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_8_reg_5214_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_66_fu_3190_p4() {
    tmp_66_fu_3190_p4 = bitcast_ln79_9_fu_3187_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_68_fu_3227_p3() {
    tmp_68_fu_3227_p3 = (!and_ln79_9_fu_3222_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_9_fu_3222_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_9_reg_5222_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_69_fu_3237_p4() {
    tmp_69_fu_3237_p4 = bitcast_ln79_10_fu_3234_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_71_fu_3274_p3() {
    tmp_71_fu_3274_p3 = (!and_ln79_10_fu_3269_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_10_fu_3269_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_s_reg_5250_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_72_fu_3284_p4() {
    tmp_72_fu_3284_p4 = bitcast_ln79_11_fu_3281_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_74_fu_3321_p3() {
    tmp_74_fu_3321_p3 = (!and_ln79_11_fu_3316_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_11_fu_3316_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_10_reg_5258_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_75_fu_3331_p4() {
    tmp_75_fu_3331_p4 = bitcast_ln79_12_fu_3328_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_77_fu_3368_p3() {
    tmp_77_fu_3368_p3 = (!and_ln79_12_fu_3363_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_12_fu_3363_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_11_reg_5286_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_78_fu_3378_p4() {
    tmp_78_fu_3378_p4 = bitcast_ln79_13_fu_3375_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_80_fu_3415_p3() {
    tmp_80_fu_3415_p3 = (!and_ln79_13_fu_3410_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_13_fu_3410_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_12_reg_5294_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_81_fu_3425_p4() {
    tmp_81_fu_3425_p4 = bitcast_ln79_14_fu_3422_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_83_fu_3462_p3() {
    tmp_83_fu_3462_p3 = (!and_ln79_14_fu_3457_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_14_fu_3457_p2.read()[0].to_bool())? grp_fu_1060_p1.read(): tmp_3_13_reg_5322_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_84_fu_3472_p4() {
    tmp_84_fu_3472_p4 = bitcast_ln79_15_fu_3469_p1.read().range(30, 23);
}

void yolo_conv_top::thread_tmp_86_fu_3509_p3() {
    tmp_86_fu_3509_p3 = (!and_ln79_15_fu_3504_p2.read()[0].is_01())? sc_lv<32>(): ((and_ln79_15_fu_3504_p2.read()[0].to_bool())? grp_fu_1063_p1.read(): tmp_3_14_reg_5330_pp0_iter11_reg.read());
}

void yolo_conv_top::thread_tmp_8_nbwritereq_fu_570_p3() {
    tmp_8_nbwritereq_fu_570_p3 =  (sc_lv<1>) (out_stream_group_8_s_full_n.read());
}

void yolo_conv_top::thread_tmp_9_nbwritereq_fu_583_p3() {
    tmp_9_nbwritereq_fu_583_p3 =  (sc_lv<1>) (out_stream_group_9_s_full_n.read());
}

void yolo_conv_top::thread_tmp_s_nbwritereq_fu_492_p3() {
    tmp_s_nbwritereq_fu_492_p3 =  (sc_lv<1>) (out_stream_group_2_s_full_n.read());
}

void yolo_conv_top::thread_trunc_ln79_10_fu_3247_p1() {
    trunc_ln79_10_fu_3247_p1 = bitcast_ln79_10_fu_3234_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_11_fu_3294_p1() {
    trunc_ln79_11_fu_3294_p1 = bitcast_ln79_11_fu_3281_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_12_fu_3341_p1() {
    trunc_ln79_12_fu_3341_p1 = bitcast_ln79_12_fu_3328_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_13_fu_3388_p1() {
    trunc_ln79_13_fu_3388_p1 = bitcast_ln79_13_fu_3375_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_14_fu_3435_p1() {
    trunc_ln79_14_fu_3435_p1 = bitcast_ln79_14_fu_3422_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_15_fu_3482_p1() {
    trunc_ln79_15_fu_3482_p1 = bitcast_ln79_15_fu_3469_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_1_fu_2824_p1() {
    trunc_ln79_1_fu_2824_p1 = bitcast_ln79_1_fu_2811_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_2_fu_2871_p1() {
    trunc_ln79_2_fu_2871_p1 = bitcast_ln79_2_fu_2858_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_3_fu_2918_p1() {
    trunc_ln79_3_fu_2918_p1 = bitcast_ln79_3_fu_2905_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_4_fu_2965_p1() {
    trunc_ln79_4_fu_2965_p1 = bitcast_ln79_4_fu_2952_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_5_fu_3012_p1() {
    trunc_ln79_5_fu_3012_p1 = bitcast_ln79_5_fu_2999_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_6_fu_3059_p1() {
    trunc_ln79_6_fu_3059_p1 = bitcast_ln79_6_fu_3046_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_7_fu_3106_p1() {
    trunc_ln79_7_fu_3106_p1 = bitcast_ln79_7_fu_3093_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_8_fu_3153_p1() {
    trunc_ln79_8_fu_3153_p1 = bitcast_ln79_8_fu_3140_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_9_fu_3200_p1() {
    trunc_ln79_9_fu_3200_p1 = bitcast_ln79_9_fu_3187_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_trunc_ln79_fu_2777_p1() {
    trunc_ln79_fu_2777_p1 = bitcast_ln79_fu_2764_p1.read().range(23-1, 0);
}

void yolo_conv_top::thread_xor_ln35_fu_1310_p2() {
    xor_ln35_fu_1310_p2 = (icmp_ln27_fu_1272_p2.read() ^ ap_const_lv1_1);
}

void yolo_conv_top::thread_zext_ln35_1_fu_1526_p1() {
    zext_ln35_1_fu_1526_p1 = esl_zext<11,9>(select_ln35_16_fu_1518_p3.read());
}

void yolo_conv_top::thread_zext_ln35_2_fu_1637_p1() {
    zext_ln35_2_fu_1637_p1 = esl_zext<11,9>(select_ln35_17_reg_3894.read());
}

void yolo_conv_top::thread_zext_ln35_3_fu_1640_p1() {
    zext_ln35_3_fu_1640_p1 = esl_zext<11,9>(select_ln35_18_reg_3899.read());
}

void yolo_conv_top::thread_zext_ln35_fu_1634_p1() {
    zext_ln35_fu_1634_p1 = esl_zext<11,9>(select_ln35_15_reg_3888.read());
}

void yolo_conv_top::thread_zext_ln729_1_fu_1697_p1() {
    zext_ln729_1_fu_1697_p1 = esl_zext<64,11>(add_ln729_fu_1692_p2.read());
}

void yolo_conv_top::thread_zext_ln72_10_fu_2425_p1() {
    zext_ln72_10_fu_2425_p1 = esl_zext<9,8>(add_ln72_6_reg_4763.read());
}

void yolo_conv_top::thread_zext_ln72_11_fu_2457_p1() {
    zext_ln72_11_fu_2457_p1 = esl_zext<9,8>(sext_ln72_1_fu_2454_p1.read());
}

void yolo_conv_top::thread_zext_ln72_1_fu_2377_p1() {
    zext_ln72_1_fu_2377_p1 = esl_zext<8,5>(add_ln_reg_4058.read());
}

void yolo_conv_top::thread_zext_ln72_2_fu_2347_p1() {
    zext_ln72_2_fu_2347_p1 = esl_zext<7,5>(add_ln_reg_4058.read());
}

void yolo_conv_top::thread_zext_ln72_3_fu_1739_p1() {
    zext_ln72_3_fu_1739_p1 = esl_zext<6,5>(add_ln_fu_1731_p4.read());
}

void yolo_conv_top::thread_zext_ln72_4_fu_2350_p1() {
    zext_ln72_4_fu_2350_p1 = esl_zext<9,6>(add_ln72_reg_4071.read());
}

void yolo_conv_top::thread_zext_ln72_5_fu_2380_p1() {
    zext_ln72_5_fu_2380_p1 = esl_zext<9,7>(add_ln72_1_reg_4721.read());
}

void yolo_conv_top::thread_zext_ln72_6_fu_2384_p1() {
    zext_ln72_6_fu_2384_p1 = esl_zext<9,7>(add_ln72_2_reg_4726.read());
}

void yolo_conv_top::thread_zext_ln72_7_fu_2402_p1() {
    zext_ln72_7_fu_2402_p1 = esl_zext<9,7>(sext_ln72_fu_2399_p1.read());
}

void yolo_conv_top::thread_zext_ln72_8_fu_2407_p1() {
    zext_ln72_8_fu_2407_p1 = esl_zext<9,8>(add_ln72_4_reg_4753.read());
}

void yolo_conv_top::thread_zext_ln72_9_fu_2421_p1() {
    zext_ln72_9_fu_2421_p1 = esl_zext<9,8>(add_ln72_5_reg_4758.read());
}

void yolo_conv_top::thread_zext_ln72_fu_2343_p1() {
    zext_ln72_fu_2343_p1 = esl_zext<9,5>(add_ln_reg_4058.read());
}

void yolo_conv_top::thread_zext_ln835_1_fu_1719_p1() {
    zext_ln835_1_fu_1719_p1 = esl_zext<64,11>(add_ln835_1_reg_3948.read());
}

void yolo_conv_top::thread_zext_ln835_2_fu_1725_p1() {
    zext_ln835_2_fu_1725_p1 = esl_zext<64,11>(add_ln835_2_reg_3953.read());
}

void yolo_conv_top::thread_zext_ln835_fu_1713_p1() {
    zext_ln835_fu_1713_p1 = esl_zext<64,11>(add_ln835_reg_3919.read());
}

}

