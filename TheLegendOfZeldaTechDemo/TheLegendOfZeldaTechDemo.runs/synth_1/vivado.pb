
|
Sourcing tcl script '%s'
201*common2?
=C:/Users/Kailan/AppData/Roaming/Xilinx/Vivado/Vivado_init.tclZ17-201h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:092	
514.4302	
201.059Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
13408Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1368.137 ; gain = 447.590
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
UTC32
wire2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
1158@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/top.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
EdgeDetector2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/EdgeDetector.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FDRE2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6157h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
EdgeDetector2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/EdgeDetector.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
labVGA_clks2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
558@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUF2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736438@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
736438@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MMCME2_ADV2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
823888@Z8-6157h px� 
S
%s
*synth2;
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
h p
x
� 
X
%s
*synth2@
>	Parameter CLKFBOUT_MULT_F bound to: 9.125000 - type: double 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Z
%s
*synth2B
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
h p
x
� 
Z
%s
*synth2B
@	Parameter CLKOUT0_DIVIDE_F bound to: 36.500000 - type: double 
h p
x
� 
[
%s
*synth2C
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
h p
x
� 
V
%s
*synth2>
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
h p
x
� 
Y
%s
*synth2A
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
h p
x
� 
U
%s
*synth2=
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
h p
x
� 
R
%s
*synth2:
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
h p
x
� 
P
%s
*synth28
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MMCME2_ADV2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
823888@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
19518@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
558@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	clkcntrl42
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
1888@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
CB4CE_MXILINX_clkcntrl42
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
3048@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FTCE_MXILINX_clkcntrl42
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
2748@Z8-6157h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
XOR22
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1431678@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
XOR22
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1431678@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FDCE2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
407988@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDCE2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
407988@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FTCE_MXILINX_clkcntrl42
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
2748@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND42
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
10018@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND42
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
10018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND32
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
9538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND32
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
9538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
AND22
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
9058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND22
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
9058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
VCC2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1409538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VCC2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1409538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CB4CE_MXILINX_clkcntrl42
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
3048@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUF2
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
18978@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUF2
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2
18978@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clkcntrl42
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
1888@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
388@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
	STARTUPE22
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1374328@Z8-6157h px� 
N
%s
*synth26
4	Parameter PROG_USR bound to: FALSE - type: string 
h p
x
� 
V
%s
*synth2>
<	Parameter SIM_CCLK_FREQ bound to: 0.000000 - type: double 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	STARTUPE22
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2

1374328@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
labVGA_clks2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/Downloads/labVGA_clks.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Pixel_Address2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/Pixel_Address.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
countUD15LTRUE2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
1028@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	countUD5L2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	countUD5L2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12
Q2
52
	countUD5L2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
1158@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
countUD15LTRUE2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/countUD5L.v2
1028@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pixel_Address2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/Pixel_Address.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Sync2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/Syncs.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FDRE__parameterized02
 29
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6157h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE__parameterized02
 2
02
129
5C:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
410148@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Sync2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/Syncs.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
GreenBorderFN2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/GreenBorderFN.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GreenBorderFN2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/imports/new/GreenBorderFN.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PlayerMovement2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/PlayerMovement.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PlayerMovement2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/PlayerMovement.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Animation_Color2
 2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/Animation_Color.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Animation_Color2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/Animation_Color.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/top.v2
238@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dp2
top2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/top.v2
248@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
an2
top2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/top.v2
268@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
seg2
top2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/sources_1/new/top.v2
268@Z8-3848h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Din[15]2
countUD15LTRUEZ8-7129h px� 
h
9Port %s in module %s is either unconnected or has no load4866*oasys2
dp2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[0]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[0]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[4]2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnC2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1485.863 ; gain = 565.316
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1485.863 ; gain = 565.316
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1485.863 ; gain = 565.316
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0302

1485.8632
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
51Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/constrs_1/imports/Vivado/Basys-3-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/constrs_1/imports/Vivado/Basys-3-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.srcs/constrs_1/imports/Vivado/Basys-3-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.6092
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 49 instances were transformed.
  AND2 => LUT2: 12 instances
  AND3 => LUT3: 6 instances
  AND4 => LUT4: 6 instances
  BUF => LUT1: 1 instance 
  XOR2 => LUT2: 24 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0102

1587.6092
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   17 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 35    
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 100   
h p
x
� 
H
%s
*synth20
.	   3 Input      1 Bit         XORs := 100   
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2	
Din[15]2
countUD15LTRUEZ8-7129h px� 
h
9Port %s in module %s is either unconnected or has no load4866*oasys2
dp2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
an[0]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
seg[0]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[4]2
topZ8-7129h px� 
j
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnC2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
topZ8-7129h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_37/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_37/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_37/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_37/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_38/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_38/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_38/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_38/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_39/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_39/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_39/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_39/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_40/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_40/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_40/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_40/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_45/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_45/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_45/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_45/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_44/I_Q0/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_44/I_Q1/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_44/I_Q2/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(not_so_slow/slowclk/XLXI_44/I_Q3/I_36_352
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Hcounter/count3/ff_instance_12
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Hcounter/count3/ff_instance_22
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Hcounter/count3/ff_instance_32
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Hcounter/count3/ff_instance_42
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Vcounter/count3/ff_instance_12
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Vcounter/count3/ff_instance_22
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Vcounter/count3/ff_instance_32
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(wessamqdig/Vcounter/count3/ff_instance_42
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Xcounter/count3/ff_instance_12
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Xcounter/count3/ff_instance_22
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Xcounter/count3/ff_instance_32
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Xcounter/count3/ff_instance_42
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Ycounter/count3/ff_instance_12
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Ycounter/count3/ff_instance_22
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Ycounter/count3/ff_instance_32
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"link/Ycounter/count3/ff_instance_42
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
link/HE/ff_instance_12
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
link/HE/ff_instance_22
topZ8-3332h px� 
~
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
link/ff_ball2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
count3/ff_instance_12
countUD15LTRUEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
count3/ff_instance_22
countUD15LTRUEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
count3/ff_instance_32
countUD15LTRUEZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
count3/ff_instance_42
countUD15LTRUEZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:43 ; elapsed = 00:00:44 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:45 ; elapsed = 00:00:45 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:00:51 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:00:51 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|      |Cell       |Count |
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
6
%s*synth2
|1     |BUFG       |     3|
h px� 
6
%s*synth2
|2     |CARRY4     |   286|
h px� 
6
%s*synth2
|3     |LUT1       |    68|
h px� 
6
%s*synth2
|4     |LUT2       |    92|
h px� 
6
%s*synth2
|5     |LUT3       |    26|
h px� 
6
%s*synth2
|6     |LUT4       |   749|
h px� 
6
%s*synth2
|7     |LUT5       |    50|
h px� 
6
%s*synth2
|8     |LUT6       |   221|
h px� 
6
%s*synth2
|9     |MMCME2_ADV |     1|
h px� 
6
%s*synth2
|10    |STARTUPE2  |     1|
h px� 
6
%s*synth2
|11    |FDRE       |   133|
h px� 
6
%s*synth2
|12    |IBUF       |     6|
h px� 
6
%s*synth2
|13    |OBUF       |    18|
h px� 
6
%s*synth2
|14    |OBUFT      |    24|
h px� 
6
%s*synth2
+------+-----------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 89 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:49 . Memory (MB): peak = 1587.609 ; gain = 565.316
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 1587.609 ; gain = 667.062
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0652

1587.6092
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
288Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1587.6092
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

7f859b86Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
802
1352
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:582

00:01:002

1587.6092

1063.289Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0092

1587.6092
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�C:/Users/Kailan/Documents/GitHub/The-Legend-of-Zelda-FPGA-VGA-display-demo/TheLegendOfZeldaTechDemo/TheLegendOfZeldaTechDemo.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Mar 26 16:23:35 2025Z17-206h px� 


End Record