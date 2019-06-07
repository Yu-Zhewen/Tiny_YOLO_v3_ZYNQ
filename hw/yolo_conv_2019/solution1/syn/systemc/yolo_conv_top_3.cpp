#include "yolo_conv_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void yolo_conv_top::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDATA\" :  \"" << inStream_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TVALID\" :  \"" << inStream_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"inStream_TREADY\" :  \"" << inStream_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TKEEP\" :  \"" << inStream_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TSTRB\" :  \"" << inStream_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TUSER\" :  \"" << inStream_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TLAST\" :  \"" << inStream_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TID\" :  \"" << inStream_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inStream_TDEST\" :  \"" << inStream_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TDATA\" :  \"" << outStream_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TVALID\" :  \"" << outStream_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"outStream_TREADY\" :  \"" << outStream_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TKEEP\" :  \"" << outStream_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TSTRB\" :  \"" << outStream_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TUSER\" :  \"" << outStream_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TLAST\" :  \"" << outStream_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TID\" :  \"" << outStream_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outStream_TDEST\" :  \"" << outStream_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWVALID\" :  \"" << s_axi_AXILiteS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_AWREADY\" :  \"" << s_axi_AXILiteS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWADDR\" :  \"" << s_axi_AXILiteS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WVALID\" :  \"" << s_axi_AXILiteS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_WREADY\" :  \"" << s_axi_AXILiteS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WDATA\" :  \"" << s_axi_AXILiteS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WSTRB\" :  \"" << s_axi_AXILiteS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARVALID\" :  \"" << s_axi_AXILiteS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_ARREADY\" :  \"" << s_axi_AXILiteS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARADDR\" :  \"" << s_axi_AXILiteS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RVALID\" :  \"" << s_axi_AXILiteS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_RREADY\" :  \"" << s_axi_AXILiteS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RDATA\" :  \"" << s_axi_AXILiteS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RRESP\" :  \"" << s_axi_AXILiteS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BVALID\" :  \"" << s_axi_AXILiteS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_BREADY\" :  \"" << s_axi_AXILiteS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BRESP\" :  \"" << s_axi_AXILiteS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

