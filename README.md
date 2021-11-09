# IP Readme

  Welcome to E906! Some key directories are shown below.
```
|--E906_RTL_FACRORY/
  |--gen_rtl/     ##the source verilog code of E906
  |--setup/       ##set the environment variables
|--smart_run/     ##the RTL simulation environment
  |--impl/        ##sdc file
  |--logical/     ##the SoC demo and test bench to run the simulation
  |--setup/       ##GNU tool chain setting
  |--tests/       ##include the test suit, linker file, boot code and so on
  |--work/        ##the working directory
  |--Makefile     ##the simulation script
|--doc/           ##the user and integration manual of E906
```


## Usage (ETH)

To get started run the following commands

```
$ source env.sh
$ cd smart_run
# To gain more information about how to use smart testbench.
$ make help
# You should use vcs for a seamless experience
# this runs hell world
$ vcs-2020.03 make runcase CASE=hello_world SIM=vcs
```


(Optional) You can get the source code for the toolchain here:

```
https://github.com/T-head-Semi/xuantie-gnu-toolchain
```


## Notes

```
The testbench supports iverilog, vcs and irun to run simulation and you can use Gtkwave or verdi
to open the waveform under ./smart_run/work/ directory.

You can get the debugger, IDE and SDK from the url:https://occ.t-head.cn/community/download?id=575997419775328256
```


## Discussion
    If you are interested in participating in discussions or improving the "openXuantie" cores, you can scan the DingDing QR code below to join the discussion group.
<img src="https://github.com/T-head-Semi/opene906/blob/main/doc/QR_code_openXuantie.png" />


#/*Copyright 2020-2021 T-Head Semiconductor Co., Ltd.
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
###    http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.
#*/
