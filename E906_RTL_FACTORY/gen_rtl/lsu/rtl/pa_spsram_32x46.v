/*Copyright 2020-2021 T-Head Semiconductor Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// &ModuleBeg; @22
module pa_spsram_32x46(
  A,
  CEN,
  CLK,
  D,
  GWEN,
  Q,
  WEN
);

// &Ports; @23
input   [4 :0]  A;   
input           CEN; 
input           CLK; 
input   [45:0]  D;   
input           GWEN; 
input   [45:0]  WEN; 
output  [45:0]  Q;   

// &Regs; @24

// &Wires; @25
wire    [4 :0]  A;   
wire            CEN; 
wire            CLK; 
wire    [45:0]  D;   
wire            GWEN; 
wire    [45:0]  Q;   
wire    [45:0]  WEN; 


//**********************************************************
//                  Parameter Definition
//**********************************************************
parameter ADDR_WIDTH = 5;
parameter DATA_WIDTH = 46;
parameter WE_WIDTH   = 46;

// &Force("bus","Q",DATA_WIDTH-1,0); @34
// &Force("bus","WEN",WE_WIDTH-1,0); @35
// &Force("bus","A",ADDR_WIDTH-1,0); @36
// &Force("bus","D",DATA_WIDTH-1,0); @37

//  //********************************************************
//  //*                        FPGA memory                   *
//  //********************************************************
//   &Instance("pa_f_spsram_32x46"); @43
pa_f_spsram_32x46  x_pa_f_spsram_32x46 (
  .A    (A   ),
  .CEN  (CEN ),
  .CLK  (CLK ),
  .D    (D   ),
  .GWEN (GWEN),
  .Q    (Q   ),
  .WEN  (WEN )
);

//   &Instance("pa_tsmc_spsram_32x46"); @49
//   &Instance("pa_gsmc_spsram_32x46"); @55

// &ModuleEnd; @71
endmodule


