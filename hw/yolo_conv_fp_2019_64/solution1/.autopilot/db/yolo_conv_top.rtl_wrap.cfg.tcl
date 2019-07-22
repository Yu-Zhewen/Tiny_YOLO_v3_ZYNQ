set lang "C++"
set moduleName "yolo_conv_top"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "inStream"
set BitWidth0 "112"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "data"
set BitWidth00 "64"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set structMem00 ""
set PortName000 "sub_data_0"
set BitWidth000 "16"
set ArrayOpt000 ""
set Const000 "0"
set Volatile000 "0"
set Pointer000 "0"
set Reference000 "0"
set Dims000 [list 0]
set Interface000 "wire"
set DataType000 "[list ap_fixed 16 8 4 0 0 ]"
set Port000 [list $PortName000 $Interface000 $DataType000 $Pointer000 $Dims000 $Const000 $Volatile000 $ArrayOpt000]
lappend structMem00 $Port000
set PortName001 "sub_data_1"
set BitWidth001 "16"
set ArrayOpt001 ""
set Const001 "0"
set Volatile001 "0"
set Pointer001 "0"
set Reference001 "0"
set Dims001 [list 0]
set Interface001 "wire"
set DataType001 "[list ap_fixed 16 8 4 0 0 ]"
set Port001 [list $PortName001 $Interface001 $DataType001 $Pointer001 $Dims001 $Const001 $Volatile001 $ArrayOpt001]
lappend structMem00 $Port001
set PortName002 "sub_data_2"
set BitWidth002 "16"
set ArrayOpt002 ""
set Const002 "0"
set Volatile002 "0"
set Pointer002 "0"
set Reference002 "0"
set Dims002 [list 0]
set Interface002 "wire"
set DataType002 "[list ap_fixed 16 8 4 0 0 ]"
set Port002 [list $PortName002 $Interface002 $DataType002 $Pointer002 $Dims002 $Const002 $Volatile002 $ArrayOpt002]
lappend structMem00 $Port002
set PortName003 "sub_data_3"
set BitWidth003 "16"
set ArrayOpt003 ""
set Const003 "0"
set Volatile003 "0"
set Pointer003 "0"
set Reference003 "0"
set Dims003 [list 0]
set Interface003 "wire"
set DataType003 "[list ap_fixed 16 8 4 0 0 ]"
set Port003 [list $PortName003 $Interface003 $DataType003 $Pointer003 $Dims003 $Const003 $Volatile003 $ArrayOpt003]
lappend structMem00 $Port003
set structParameter00 [list ]
set structArgument00 [list ]
set NameSpace00 [list ]
set structIsPacked00 "0"
set DataType00 [list "quad_fp_pack" "struct quad_fp_pack" $structMem00 0 0 $structParameter00 $structArgument00 $NameSpace00 $structIsPacked00]
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "keep"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 8 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "strb"
set BitWidth02 "8"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "[list ap_uint 8 ]"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set PortName03 "user"
set BitWidth03 "8"
set ArrayOpt03 ""
set Const03 "0"
set Volatile03 "0"
set Pointer03 "0"
set Reference03 "0"
set Dims03 [list 0]
set Interface03 "wire"
set DataType03 "[list ap_uint 2 ]"
set Port03 [list $PortName03 $Interface03 $DataType03 $Pointer03 $Dims03 $Const03 $Volatile03 $ArrayOpt03]
lappend structMem0 $Port03
set PortName04 "last"
set BitWidth04 "8"
set ArrayOpt04 ""
set Const04 "0"
set Volatile04 "0"
set Pointer04 "0"
set Reference04 "0"
set Dims04 [list 0]
set Interface04 "wire"
set DataType04 "[list ap_uint 1 ]"
set Port04 [list $PortName04 $Interface04 $DataType04 $Pointer04 $Dims04 $Const04 $Volatile04 $ArrayOpt04]
lappend structMem0 $Port04
set PortName05 "id"
set BitWidth05 "8"
set ArrayOpt05 ""
set Const05 "0"
set Volatile05 "0"
set Pointer05 "0"
set Reference05 "0"
set Dims05 [list 0]
set Interface05 "wire"
set DataType05 "[list ap_uint 5 ]"
set Port05 [list $PortName05 $Interface05 $DataType05 $Pointer05 $Dims05 $Const05 $Volatile05 $ArrayOpt05]
lappend structMem0 $Port05
set PortName06 "dest"
set BitWidth06 "8"
set ArrayOpt06 ""
set Const06 "0"
set Volatile06 "0"
set Pointer06 "0"
set Reference06 "0"
set Dims06 [list 0]
set Interface06 "wire"
set DataType06 "[list ap_uint 6 ]"
set Port06 [list $PortName06 $Interface06 $DataType06 $Pointer06 $Dims06 $Const06 $Volatile06 $ArrayOpt06]
lappend structMem0 $Port06
set DataType0tp0 "int"
set DataType0tp1 "int"
set DataType0tp2 "int"
set DataType0tp3 "int"
set structParameter0 [list [list $DataType0tp0 D] [list $DataType0tp1 U] [list $DataType0tp2 TI] [list $DataType0tp3 TD] ]
set structArgument0 [list 64 2 5 6 ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "ap_axi_fp<64, 2, 5, 6>" "struct ap_axi_fp" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "outStream"
set BitWidth1 "112"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set structMem1 ""
set PortName10 "data"
set BitWidth10 "64"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set structMem10 ""
set PortName100 "sub_data_0"
set BitWidth100 "16"
set ArrayOpt100 ""
set Const100 "0"
set Volatile100 "0"
set Pointer100 "0"
set Reference100 "0"
set Dims100 [list 0]
set Interface100 "wire"
set DataType100 "[list ap_fixed 16 8 4 0 0 ]"
set Port100 [list $PortName100 $Interface100 $DataType100 $Pointer100 $Dims100 $Const100 $Volatile100 $ArrayOpt100]
lappend structMem10 $Port100
set PortName101 "sub_data_1"
set BitWidth101 "16"
set ArrayOpt101 ""
set Const101 "0"
set Volatile101 "0"
set Pointer101 "0"
set Reference101 "0"
set Dims101 [list 0]
set Interface101 "wire"
set DataType101 "[list ap_fixed 16 8 4 0 0 ]"
set Port101 [list $PortName101 $Interface101 $DataType101 $Pointer101 $Dims101 $Const101 $Volatile101 $ArrayOpt101]
lappend structMem10 $Port101
set PortName102 "sub_data_2"
set BitWidth102 "16"
set ArrayOpt102 ""
set Const102 "0"
set Volatile102 "0"
set Pointer102 "0"
set Reference102 "0"
set Dims102 [list 0]
set Interface102 "wire"
set DataType102 "[list ap_fixed 16 8 4 0 0 ]"
set Port102 [list $PortName102 $Interface102 $DataType102 $Pointer102 $Dims102 $Const102 $Volatile102 $ArrayOpt102]
lappend structMem10 $Port102
set PortName103 "sub_data_3"
set BitWidth103 "16"
set ArrayOpt103 ""
set Const103 "0"
set Volatile103 "0"
set Pointer103 "0"
set Reference103 "0"
set Dims103 [list 0]
set Interface103 "wire"
set DataType103 "[list ap_fixed 16 8 4 0 0 ]"
set Port103 [list $PortName103 $Interface103 $DataType103 $Pointer103 $Dims103 $Const103 $Volatile103 $ArrayOpt103]
lappend structMem10 $Port103
set structParameter10 [list ]
set structArgument10 [list ]
set NameSpace10 [list ]
set structIsPacked10 "0"
set DataType10 [list "quad_fp_pack" "struct quad_fp_pack" $structMem10 0 0 $structParameter10 $structArgument10 $NameSpace10 $structIsPacked10]
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "keep"
set BitWidth11 "8"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "[list ap_uint 8 ]"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set PortName12 "strb"
set BitWidth12 "8"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "0"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "[list ap_uint 8 ]"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend structMem1 $Port12
set PortName13 "user"
set BitWidth13 "8"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "0"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set DataType13 "[list ap_uint 2 ]"
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend structMem1 $Port13
set PortName14 "last"
set BitWidth14 "8"
set ArrayOpt14 ""
set Const14 "0"
set Volatile14 "0"
set Pointer14 "0"
set Reference14 "0"
set Dims14 [list 0]
set Interface14 "wire"
set DataType14 "[list ap_uint 1 ]"
set Port14 [list $PortName14 $Interface14 $DataType14 $Pointer14 $Dims14 $Const14 $Volatile14 $ArrayOpt14]
lappend structMem1 $Port14
set PortName15 "id"
set BitWidth15 "8"
set ArrayOpt15 ""
set Const15 "0"
set Volatile15 "0"
set Pointer15 "0"
set Reference15 "0"
set Dims15 [list 0]
set Interface15 "wire"
set DataType15 "[list ap_uint 5 ]"
set Port15 [list $PortName15 $Interface15 $DataType15 $Pointer15 $Dims15 $Const15 $Volatile15 $ArrayOpt15]
lappend structMem1 $Port15
set PortName16 "dest"
set BitWidth16 "8"
set ArrayOpt16 ""
set Const16 "0"
set Volatile16 "0"
set Pointer16 "0"
set Reference16 "0"
set Dims16 [list 0]
set Interface16 "wire"
set DataType16 "[list ap_uint 6 ]"
set Port16 [list $PortName16 $Interface16 $DataType16 $Pointer16 $Dims16 $Const16 $Volatile16 $ArrayOpt16]
lappend structMem1 $Port16
set DataType1tp0 "int"
set DataType1tp1 "int"
set DataType1tp2 "int"
set DataType1tp3 "int"
set structParameter1 [list [list $DataType1tp0 D] [list $DataType1tp1 U] [list $DataType1tp2 TI] [list $DataType1tp3 TD] ]
set structArgument1 [list 64 2 5 6 ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "ap_axi_fp<64, 2, 5, 6>" "struct ap_axi_fp" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "output_ch"
set BitWidth2 "8"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "[list ap_uint 6 ]"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "input_ch"
set BitWidth3 "8"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "[list ap_uint 6 ]"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "fold_output_ch"
set BitWidth4 "8"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "[list ap_uint 4 ]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "fold_input_ch"
set BitWidth5 "8"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "0"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set DataType5 "[list ap_uint 4 ]"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "input_h"
set BitWidth6 "16"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "0"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "[list ap_uint 9 ]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "input_w"
set BitWidth7 "16"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "0"
set Reference7 "0"
set Dims7 [list 0]
set Interface7 "wire"
set DataType7 "[list ap_uint 9 ]"
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7]
lappend PortList $Port7
set PortName8 "real_input_h"
set BitWidth8 "16"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "0"
set Reference8 "0"
set Dims8 [list 0]
set Interface8 "wire"
set DataType8 "[list ap_uint 9 ]"
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8]
lappend PortList $Port8
set PortName9 "fold_win_area"
set BitWidth9 "8"
set ArrayOpt9 ""
set Const9 "0"
set Volatile9 "0"
set Pointer9 "0"
set Reference9 "0"
set Dims9 [list 0]
set Interface9 "wire"
set DataType9 "[list ap_uint 3 ]"
set Port9 [list $PortName9 $Interface9 $DataType9 $Pointer9 $Dims9 $Const9 $Volatile9 $ArrayOpt9]
lappend PortList $Port9
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 1 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
