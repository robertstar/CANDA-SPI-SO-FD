
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
42default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 5a67a1a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4831 ; free virtual = 109602default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 5a67a1a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:11 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4833 ; free virtual = 109622default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 5a67a1a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:11 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4815 ; free virtual = 109442default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 5a67a1a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:11 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4815 ; free virtual = 109442default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1188bc955
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:18 ; elapsed = 00:00:13 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4801 ; free virtual = 109302default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=15.155 | TNS=0.000  | WHS=-0.614 | THS=-177.380|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 16b1d619b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:14 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4802 ; free virtual = 109312default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=15.155 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 12a0e4af6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:14 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4801 ; free virtual = 109312default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1614c67f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:14 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4801 ; free virtual = 109312default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 1614c67f8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:14 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4798 ; free virtual = 109282default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 26c2aafe7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:15 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4798 ; free virtual = 109282default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=13.242 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1a16b6a47
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:25 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1a16b6a47
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:25 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 5.1.1 Update Timing | Checksum: c7339cc6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=13.309 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: bc1a3d18
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: bc1a3d18
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: bc1a3d18
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: d130bf44
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:18 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=13.309 | TNS=0.000  | WHS=-0.614 | THS=-1.069 |
2default:defaultZ35-416h px? 
?

Phase %s%s
101*constraints2
6.1.2 2default:default25
!Lut RouteThru Assignment for hold2default:defaultZ18-101h px? 
Y
DPhase 6.1.2 Lut RouteThru Assignment for hold | Checksum: 1538b32a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:27 ; elapsed = 00:00:18 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4798 ; free virtual = 109242default:defaulth px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1538b32a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:27 ; elapsed = 00:00:18 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4798 ; free virtual = 109242default:defaulth px? 
v

Phase %s%s
101*constraints2
6.2 2default:default2'
Additional Hold Fix2default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=13.309 | TNS=0.000  | WHS=-0.614 | THS=-1.069 |
2default:defaultZ35-416h px? 
I
4Phase 6.2 Additional Hold Fix | Checksum: 1538b32a6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:27 ; elapsed = 00:00:18 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4781 ; free virtual = 109072default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: efdb1804
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4781 ; free virtual = 109072default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1931bf137
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4781 ; free virtual = 109072default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1931bf137
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4780 ; free virtual = 109062default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1c70d811d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4780 ; free virtual = 109062default:defaulth px? 
?
SRouter was unable to fix hold violation on pin %s driven by global clock buffer %s.167*route2O
;ila2_inst/U0/ila_core_inst/shifted_data_in_reg[7][0]_srl8/D2default:default2!
BUFGCTRL_X0Y82default:defaultZ35-419h px? 
?
SRouter was unable to fix hold violation on pin %s driven by global clock buffer %s.167*route2?
?ila2_inst/U0/ila_core_inst/u_trig/U_TM/N_DDR_MODE.G_NMU[0].U_M/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/probeDelay1[0]_i_1/I12default:default2!
BUFGCTRL_X0Y82default:defaultZ35-419h px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 10.1 Update Timing | Checksum: 113be49cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:30 ; elapsed = 00:00:20 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4780 ; free virtual = 109062default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=13.309 | TNS=0.000  | WHS=-0.614 | THS=-1.069 |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 113be49cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:30 ; elapsed = 00:00:20 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4780 ; free virtual = 109062default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:30 ; elapsed = 00:00:20 . Memory (MB): peak = 3009.652 ; gain = 0.000 ; free physical = 4799 ; free virtual = 109252default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1122default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:342default:default2
00:00:222default:default2
3009.6522default:default2
0.0002default:default2
47992default:default2
109252default:defaultZ17-722h px? 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.612default:default2
3009.6522default:default2
0.0002default:default2
47942default:default2
109392default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/home/master/FPGA_proj/CANDA_SPI_SO_FD/canda_spiso_fd.runs/impl_1/canda_spiso_fd_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
Executing : report_drc -file canda_spiso_fd_drc_routed.rpt -pb canda_spiso_fd_drc_routed.pb -rpx canda_spiso_fd_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
rreport_drc -file canda_spiso_fd_drc_routed.rpt -pb canda_spiso_fd_drc_routed.pb -rpx canda_spiso_fd_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
_/home/master/FPGA_proj/CANDA_SPI_SO_FD/canda_spiso_fd.runs/impl_1/canda_spiso_fd_drc_routed.rpt_/home/master/FPGA_proj/CANDA_SPI_SO_FD/canda_spiso_fd.runs/impl_1/canda_spiso_fd_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file canda_spiso_fd_methodology_drc_routed.rpt -pb canda_spiso_fd_methodology_drc_routed.pb -rpx canda_spiso_fd_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file canda_spiso_fd_methodology_drc_routed.rpt -pb canda_spiso_fd_methodology_drc_routed.pb -rpx canda_spiso_fd_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
42default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
k/home/master/FPGA_proj/CANDA_SPI_SO_FD/canda_spiso_fd.runs/impl_1/canda_spiso_fd_methodology_drc_routed.rptk/home/master/FPGA_proj/CANDA_SPI_SO_FD/canda_spiso_fd.runs/impl_1/canda_spiso_fd_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file canda_spiso_fd_power_routed.rpt -pb canda_spiso_fd_power_summary_routed.pb -rpx canda_spiso_fd_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file canda_spiso_fd_power_routed.rpt -pb canda_spiso_fd_power_summary_routed.pb -rpx canda_spiso_fd_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1252default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2}
iExecuting : report_route_status -file canda_spiso_fd_route_status.rpt -pb canda_spiso_fd_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file canda_spiso_fd_timing_summary_routed.rpt -pb canda_spiso_fd_timing_summary_routed.pb -rpx canda_spiso_fd_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2k
WExecuting : report_incremental_reuse -file canda_spiso_fd_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2k
WExecuting : report_clock_utilization -file canda_spiso_fd_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file canda_spiso_fd_bus_skew_routed.rpt -pb canda_spiso_fd_bus_skew_routed.pb -rpx canda_spiso_fd_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191h px? 


End Record