# Tiny YOLO v3 ZYNQ

## What is this project about?

FPGA implementation of YOLOv3-tiny 

- Scalable & parameterizable

- Latency-driven

- Tailored for FPGA device with limited resources

Latency and resource analytical models 
- Hardware and software latency
- DSP and BRAM utilization

Design Space Exploration to identify the Pareto-optimal design point on Zedboard

## To cite our work
@inproceedings{yu2020parameterisable,
  title={A Parameterisable FPGA-Tailored Architecture for YOLOv3-Tiny},
  author={Yu, Zhewen and Bouganis, Christos-Savvas},
  booktitle={Applied Reconfigurable Computing. Architectures, Tools, and Applications. ARC 2020. Lecture Notes in Computer Science, vol 12083},
  pages={330-344},
  year={2020},
  month={03},
  publisher={Springer, Cham},
  url={https://doi.org/10.1007/978-3-030-44534-8_25}
}

## Navigate inside the project
/code

main codebase including "templates" (managed by the script) and a design example (with bitfile and sdk, ready for deployment on Zedboard)

/data

weights and test data

/document

include the paper (recommend read first) and thesis (more detailed)

/model

code used for analytical models and design space exploration

/scripts

entry point for the automated framework

/tools

some tools used for helping the test, not important

## How to use the automated flow

Check environment
- ubuntu 16.04 LTS 
- Vivado v2019.1
- python 3.5.2
- gcc 5.4.0

Set target FPGA and resource constraints

Edit scripts/run_all.py
```
device = "xc7z020-clg484-1"
clk_ns = "10"
```

Edit model/main.cpp
```
#define DEFAULT_MAX_DSP (220) // zynq7020
#define DEFAULT_MAX_BRAM_18k (280) // zynq7020
#define DEFAULT_MAX_ULTILISATION (0.9)  // usually won't use 100% resources
```

Run scripts/run_all.py

2000 years later...

If everything is fine, Vivado SDK GUI should pop out

Create an application project, add files from code/sdk


 ## Contact me

 you can either create an issue or just drop me an email (zhewen.yu18@imperial.ac.uk)

