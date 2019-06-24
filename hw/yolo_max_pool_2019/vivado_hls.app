<project xmlns="com.autoesl.autopilot.project" name="yolo_max_pool_2019" top="yolo_max_pool_top">
    <files>
        <file name="yolo_max_pool_2019/src/layer_parameter.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="yolo_max_pool_2019/src/yolo_max_pool.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="yolo_max_pool_2019/src/yolo_max_pool.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="yolo_max_pool_2019/src/yolo_stream.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="../tb/layer_input.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../tb/layer_output_sdk.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../tb/yolo_max_pool_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

