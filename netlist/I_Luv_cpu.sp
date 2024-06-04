** Generated for: hspiceD
** Generated on: Dec 29 13:19:16 2023
** Design library name: IC2_project
** Design cell name: cpu_test
** Design view name: schematic
.GLOBAL vdd!


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2


** Library name: IC2_project
** Cell name: nand
** View name: schematic
.subckt nand a b out
m1 net10 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 out a net10 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 out b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 out a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends nand
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: Inverter
** View name: schematic
.subckt Inverter in out
m0 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends Inverter
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: and
** View name: schematic
.subckt and a b out
xi0 a b net4 nand
xi1 net4 out Inverter
.ends and
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: nor
** View name: schematic
.subckt nor a b out
m1 out b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 out a 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net8 a vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 out b net8 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends nor
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: or
** View name: schematic
.subckt or a b out
xi0 net4 out Inverter
xi1 a b net4 nor
.ends or
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: buffer
** View name: schematic
.subckt buffer in out
xi1 net5 out Inverter
xi0 in net5 Inverter
.ends buffer
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: inst_decoder_opt
** View name: schematic
.subckt inst_decoder_opt alu_opcode<1> alu_opcode<0> id_wb_addr<1> id_wb_addr<0> id_wb_en id_wb_sel inst_i<15> inst_i<14> inst_i<13> inst_i<12> inst_i<11> inst_i<10> inst_i<9> inst_i<8> inst_i<3> inst_i<2> inst_i<1> inst_i<0> jump_en mem_data<7> mem_data<6> mem_data<5> mem_data<4> mem_data<3> mem_data<2> mem_data<1> mem_data<0> mem_ren mem_wen operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> rst src0_addr<1> src0_addr<0> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src0_en src1_addr<1> src1_addr<0> src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> src1_en
xi244 net070 net075 src0_en and
xi189 net0154 net0176 inst_sw and
xi166 net0170 net0166 inst_add and
xi163 inst_i<0> inst_i<1> inst_jal and
xi191 net0174 inst_i<3> net0176 and
xi233 inst_addi inst_i<14> net078 and
xi218 src1_data<0> inst_add net067 and
xi219 inst_addi inst_i<8> net066 and
xi238 src1_data<5> inst_add net081 and
xi240 inst_addi inst_i<13> net080 and
xi232 inst_addi inst_i<15> net076 and
xi236 inst_addi inst_i<12> net082 and
xi235 src1_data<6> inst_add net079 and
xi237 src1_data<4> inst_add net083 and
xi223 src1_data<2> inst_add net063 and
xi225 inst_addi inst_i<10> net062 and
xi220 inst_addi inst_i<9> net064 and
xi230 src1_data<7> inst_add net077 and
xi222 src1_data<1> inst_add net065 and
xi226 inst_addi inst_i<11> net093 and
xi228 src1_data<3> inst_add net061 and
xi72 src0_data<7> sel_op1 operand0<7> and
xi71 src0_data<6> sel_op1 operand0<6> and
xi70 src0_data<5> sel_op1 operand0<5> and
xi69 src0_data<4> sel_op1 operand0<4> and
xi68 src0_data<3> sel_op1 operand0<3> and
xi67 src0_data<2> sel_op1 operand0<2> and
xi66 src0_data<1> sel_op1 operand0<1> and
xi65 src0_data<0> sel_op1 operand0<0> and
xi253 net072 net088 id_wb_en and
xi247 net073 net094 src1_en and
xi164 net048 net0173 net0166 and
xi165 net050 net049 net0170 and
xi182 net0182 net056 inst_lw and
xi180 inst_i<2> net0183 net056 and
xi184 net0162 inst_i<1> net0182 and
xi173 net044 net043 net058 and
xi175 net0177 net058 inst_addi and
xi187 net0181 inst_i<1> net0154 and
xi177 inst_i<0> net0158 net0177 and
xi242 inst_add inst_addi net095 or
xi243 net095 net096 net075 or
xi234 net079 net078 operand1<6> or
xi217 net067 net066 operand1<0> or
xi239 net081 net080 operand1<5> or
xi224 net063 net062 operand1<2> or
xi221 net065 net064 operand1<1> or
xi231 net077 net076 operand1<7> or
xi229 net083 net082 operand1<4> or
xi227 net061 net093 operand1<3> or
xi252 inst_add inst_addi net092 or
xi251 net092 inst_lw net088 or
xi255 inst_sw inst_jal net096 or
xi250 inst_add inst_addi sel_op1 or
xi249 net097 inst_add net094 or
xi248 inst_lw inst_sw net097 or
xi245 rst net070 Inverter
xi190 inst_i<2> net0174 Inverter
xi171 inst_i<3> net0173 Inverter
xi170 inst_i<2> net048 Inverter
xi169 inst_i<1> net049 Inverter
xi168 inst_i<0> net050 Inverter
xi254 rst net072 Inverter
xi246 rst net073 Inverter
xi186 inst_i<0> net0181 Inverter
xi185 inst_i<0> net0162 Inverter
xi179 inst_i<3> net0183 Inverter
xi174 inst_i<2> net044 Inverter
xi172 inst_i<3> net043 Inverter
xi176 inst_i<1> net0158 Inverter
xi161 inst_sw mem_wen buffer
xi241 inst_lw mem_ren buffer
xi143 inst_jal jump_en buffer
xi41 inst_lw id_wb_sel buffer
.ends inst_decoder_opt
** End of subcircuit definition.

** Library name: IC2_lab3
** Cell name: nand
** View name: schematic
.subckt nand_schematic a b out
m1 net10 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 out a net10 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 out b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 out a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends nand_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: mux2
** View name: schematic
.subckt mux2 a b out sel
xi3 net3 net2 out nand_schematic
xi2 net1 aa net2 nand_schematic
xi1 bb ss net3 nand_schematic
xi18 ss net1 Inverter
xi15 net08 ss Inverter
xi14 sel net08 Inverter
xi13 net07 bb Inverter
xi12 b net07 Inverter
xi11 net06 aa Inverter
xi10 a net06 Inverter
.ends mux2
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: write_back
** View name: schematic
.subckt write_back alu_result_i<7> alu_result_i<6> alu_result_i<5> alu_result_i<4> alu_result_i<3> alu_result_i<2> alu_result_i<1> alu_result_i<0> id_wb_en_i id_wb_sel_i mem_result_i<7> mem_result_i<6> mem_result_i<5> mem_result_i<4> mem_result_i<3> mem_result_i<2> mem_result_i<1> mem_result_i<0> rst wb_data_o<7> wb_data_o<6> wb_data_o<5> wb_data_o<4> wb_data_o<3> wb_data_o<2> wb_data_o<1> wb_data_o<0> wb_en_o
xi38 rst_n net13 wb_data_o<5> and
xi36 rst_n net12 wb_data_o<4> and
xi25 rst_n net17 wb_data_o<1> and
xi18 rst_n net16 wb_data_o<0> and
xi31 rst_n net1 wb_data_o<7> and
xi32 rst_n net2 wb_data_o<6> and
xi28 rst_n net15 wb_data_o<2> and
xi29 rst_n net14 wb_data_o<3> and
xi0 rst_n id_wb_en_i wb_en_o and
xi1 rst rst_n Inverter
xi37 alu_result_i<4> mem_result_i<4> net12 id_wb_sel_i mux2
xi35 alu_result_i<7> mem_result_i<7> net1 id_wb_sel_i mux2
xi34 alu_result_i<5> mem_result_i<5> net13 id_wb_sel_i mux2
xi23 alu_result_i<0> mem_result_i<0> net16 id_wb_sel_i mux2
xi30 alu_result_i<3> mem_result_i<3> net14 id_wb_sel_i mux2
xi33 alu_result_i<6> mem_result_i<6> net2 id_wb_sel_i mux2
xi26 alu_result_i<1> mem_result_i<1> net17 id_wb_sel_i mux2
xi27 alu_result_i<2> mem_result_i<2> net15 id_wb_sel_i mux2
.ends write_back
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: HA
** View name: schematic
.subckt HA a b cout s
xi7 net03 net02 s nand_schematic
xi6 net01 bb net02 nand_schematic
xi5 aa net01 net03 nand_schematic
xi4 aa bb net01 nand_schematic
xi13 net01 cout Inverter
xi12 net05 bb Inverter
xi11 b net05 Inverter
xi10 net04 aa Inverter
xi9 a net04 Inverter
.ends HA
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: FA
** View name: schematic
.subckt FA a b cin cout s
m25 s sp vdd! vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m24 cout cp vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 sp cin net41 vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m10 net41 aa net42 vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m9 net42 bb vdd! vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 net31 cin vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 sp cp net31 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 net31 bb vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net31 aa vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 cp aa net43 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net43 bb vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 cp cin net9 vdd! PMOS_VTL L=50e-9 W=1.26e-6 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net9 aa vdd! vdd! PMOS_VTL L=50e-9 W=1.26e-6 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net9 bb vdd! vdd! PMOS_VTL L=50e-9 W=1.26e-6 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m27 s sp 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m26 cout cp 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m23 net39 bb 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m22 net38 aa net39 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m21 sp cin net38 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m20 sp cp net30 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net30 cin 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m18 net30 bb 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m17 net30 aa 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m16 cp aa net37 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 net37 bb 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m14 net7 bb 0 0 NMOS_VTL L=50e-9 W=630e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m13 net7 aa 0 0 NMOS_VTL L=50e-9 W=630e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m12 cp cin net7 0 NMOS_VTL L=50e-9 W=630e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi11 net041 bb Inverter
xi10 b net041 Inverter
xi9 net040 aa Inverter
xi8 a net040 Inverter
.ends FA
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: add_8bit
** View name: schematic
.subckt add_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi0 a<0> b<0> net8 out<0> HA
xi7 a<7> b<7> net4 net1 out<7> FA
xi6 a<6> b<6> net3 net4 out<6> FA
xi5 a<5> b<5> net2 net3 out<5> FA
xi4 a<4> b<4> net7 net2 out<4> FA
xi3 a<3> b<3> net6 net7 out<3> FA
xi2 a<2> b<2> net5 net6 out<2> FA
xi1 a<1> b<1> net8 net5 out<1> FA
.ends add_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: alu
** View name: schematic
.subckt alu alu_opcode_i<1> alu_opcode_i<0> alu_result_o<7> alu_result_o<6> alu_result_o<5> alu_result_o<4> alu_result_o<3> alu_result_o<2> alu_result_o<1> alu_result_o<0> operand0_i<7> operand0_i<6> operand0_i<5> operand0_i<4> operand0_i<3> operand0_i<2> operand0_i<1> operand0_i<0> operand1_i<7> operand1_i<6> operand1_i<5> operand1_i<4> operand1_i<3> operand1_i<2> operand1_i<1> operand1_i<0>
xi0 operand0_i<7> operand0_i<6> operand0_i<5> operand0_i<4> operand0_i<3> operand0_i<2> operand0_i<1> operand0_i<0> operand1_i<7> operand1_i<6> operand1_i<5> operand1_i<4> operand1_i<3> operand1_i<2> operand1_i<1> operand1_i<0> alu_result_o<7> alu_result_o<6> alu_result_o<5> alu_result_o<4> alu_result_o<3> alu_result_o<2> alu_result_o<1> alu_result_o<0> add_8bit
.ends alu
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: sense_amplifier
** View name: schematic
.subckt sense_amplifier vout vb vin1 vin2
m3 vout vin2 net5 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net3 vin1 net5 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 0 vb net5 vdd! PMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net3 net3 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 vout net3 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends sense_amplifier
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 16_1_bit_SRAM
** View name: schematic
.subckt IC2_project_16_1_bit_SRAM_schematic d d_out pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0>
m2 net0329 net080 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net080 net0329 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m194 net088 net068 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m193 net068 net088 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m188 net0112 net071 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m187 net071 net0112 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m182 net0118 net065 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m181 net065 net0118 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m176 net0115 net069 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m175 net069 net0115 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m170 net0109 net066 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m169 net066 net0109 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m164 net094 net076 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m163 net076 net094 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m158 net091 net072 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m157 net072 net091 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m152 net085 net077 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m151 net077 net085 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m146 net0100 net078 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m145 net078 net0100 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m140 net0106 net067 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m139 net067 net0106 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m134 net0103 net070 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m133 net070 net0103 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m128 net097 net073 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m127 net073 net097 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m122 net082 net079 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m121 net079 net082 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m116 net0327 net074 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m115 net074 net0327 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m110 net0328 net075 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m109 net075 net0328 vdd! vdd! PMOS_VTL L=50e-9 W=135e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 bl0 pec vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 bl1 pec vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 bl1 pec bl0 vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi249 net0340 ren bl1 bl0 sense_amplifier
m100 bl1 bl1_switch 0 0 NMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m99 bl0 bl0_switch 0 0 NMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net080 wl_in<0> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 net0329 wl_in<0> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net0329 net080 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net080 net0329 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m195 net068 wl_in<8> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m192 net088 wl_in<8> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m191 net088 net068 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m190 net068 net088 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m189 net071 wl_in<12> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m186 net0112 wl_in<12> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m185 net0112 net071 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m184 net071 net0112 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m183 net065 wl_in<14> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m180 net0118 wl_in<14> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m179 net0118 net065 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m178 net065 net0118 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m177 net069 wl_in<15> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m174 net0115 wl_in<15> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m173 net0115 net069 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m172 net069 net0115 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m171 net066 wl_in<13> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m168 net0109 wl_in<13> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m167 net0109 net066 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m166 net066 net0109 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m165 net076 wl_in<10> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m162 net094 wl_in<10> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m161 net094 net076 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m160 net076 net094 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m159 net072 wl_in<11> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m156 net091 wl_in<11> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m155 net091 net072 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m154 net072 net091 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m153 net077 wl_in<9> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m150 net085 wl_in<9> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m149 net085 net077 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m148 net077 net085 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m147 net078 wl_in<4> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m144 net0100 wl_in<4> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m143 net0100 net078 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m142 net078 net0100 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m141 net067 wl_in<6> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m138 net0106 wl_in<6> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m137 net0106 net067 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m136 net067 net0106 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m135 net070 wl_in<7> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m132 net0103 wl_in<7> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m131 net0103 net070 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m130 net070 net0103 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m129 net073 wl_in<5> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m126 net097 wl_in<5> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m125 net097 net073 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m124 net073 net097 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m123 net079 wl_in<2> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m120 net082 wl_in<2> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m119 net082 net079 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m118 net079 net082 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m117 net074 wl_in<3> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m114 net0327 wl_in<3> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m113 net0327 net074 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m112 net074 net0327 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m111 net075 wl_in<1> bl1 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m108 net0328 wl_in<1> bl0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m107 net0328 net075 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m106 net075 net0328 0 0 NMOS_VTL L=50e-9 W=220e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi59 net0393 wl_in<7> Inverter
xi61 net360 wl_in<6> Inverter
xi58 net358 wl_in<5> Inverter
xi56 net357 wl_in<4> Inverter
xi54 net356 wl_in<3> Inverter
xi52 net0403 wl_in<2> Inverter
xi48 net353 wl_in<0> Inverter
xi50 net0407 wl_in<1> Inverter
xi66 net0409 wl_in<9> Inverter
xi69 net0411 wl_in<10> Inverter
xi67 net368 wl_in<11> Inverter
xi77 net0415 wl_in<12> Inverter
xi75 net0417 wl_in<13> Inverter
xi72 net364 wl_in<14> Inverter
xi103 d net372 Inverter
xi101 net0421 bl1_switch Inverter
xi98 net0354 bl0_switch Inverter
xi74 net365 wl_in<15> Inverter
xi104 net0353 wen Inverter
xi64 net361 wl_in<8> Inverter
xi60 wl<7> pec net0393 nand
xi62 wl<6> pec net360 nand
xi57 wl<5> pec net358 nand
xi55 wl<4> pec net357 nand
xi53 wl<3> pec net356 nand
xi47 wl<0> pec net353 nand
xi51 wl<2> pec net0403 nand
xi49 wl<1> pec net0407 nand
xi70 wl<10> pec net0411 nand
xi68 wl<11> pec net368 nand
xi78 wl<12> pec net0415 nand
xi76 wl<13> pec net0417 nand
xi71 wl<14> pec net364 nand
xi73 wl<15> pec net365 nand
xi102 net372 wen net0421 nand
xi99 d wen net0354 nand
xi242 sram_wen pec net0353 nand
xi63 wl<8> pec net361 nand
xi65 wl<9> pec net0409 nand
xi236 sram_ren pec ren nand
xi250 net0340 d_out buffer
.ends IC2_project_16_1_bit_SRAM_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 16_8bit_SRAM
** View name: schematic
.subckt IC2_project_16_8bit_SRAM_schematic addr<3> addr<2> addr<1> addr<0> d<7> d<6> d<5> d<4> d<3> d<2> d<1> d<0> d_out<7> d_out<6> d_out<5> d_out<4> d_out<3> d_out<2> d_out<1> d_out<0> pec sram_ren sram_wen
xi18 d<3> d_out<3> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi16 d<1> d_out<1> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi15 d<0> d_out<0> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi17 d<2> d_out<2> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi20 d<5> d_out<5> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi19 d<4> d_out<4> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi21 d<6> d_out<6> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi22 d<7> d_out<7> pec sram_ren sram_wen wl<15> wl<14> wl<13> wl<12> wl<11> wl<10> wl<9> wl<8> wl<7> wl<6> wl<5> wl<4> wl<3> wl<2> wl<1> wl<0> IC2_project_16_1_bit_SRAM_schematic
xi54 s4 d4 wl<15> and
xi53 s4 d3 wl<14> and
xi52 s4 d2 wl<13> and
xi51 s4 d1 wl<12> and
xi50 s3 d4 wl<11> and
xi49 s3 d3 wl<10> and
xi48 s3 d2 wl<9> and
xi47 s3 d1 wl<8> and
xi46 s2 d4 wl<7> and
xi45 s2 d3 wl<6> and
xi44 s2 d2 wl<5> and
xi43 s2 d1 wl<4> and
xi42 s1 d4 wl<3> and
xi41 s1 d3 wl<2> and
xi40 s1 d2 wl<1> and
xi39 s1 d1 wl<0> and
xi34 addr<0> addr<1> d4 and
xi33 net50 addr<1> d3 and
xi32 addr<0> net49 d2 and
xi31 net47 net48 d1 and
xi26 addr<2> addr<3> s4 and
xi25 net46 addr<3> s3 and
xi24 addr<2> net45 s2 and
xi23 net43 net44 s1 and
xi38 addr<0> net50 Inverter
xi37 addr<1> net49 Inverter
xi36 addr<1> net48 Inverter
xi35 addr<0> net47 Inverter
xi30 addr<2> net46 Inverter
xi29 addr<3> net45 Inverter
xi28 addr<3> net44 Inverter
xi27 addr<2> net43 Inverter
.ends IC2_project_16_8bit_SRAM_schematic
** End of subcircuit definition.

** Library name: IC2_FreePDK45
** Cell name: MyInverter45
** View name: schematic
.subckt MyInverter45 in out
m0 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends MyInverter45
** End of subcircuit definition.

** Library name: IC2_lab3
** Cell name: mux2
** View name: schematic
.subckt mux2_schematic a b out sel
xi9 net06 ss MyInverter45
xi8 sel net06 MyInverter45
xi7 net07 bb MyInverter45
xi6 b net07 MyInverter45
xi5 net08 aa MyInverter45
xi4 a net08 MyInverter45
xi0 ss net1 MyInverter45
xi3 net3 net2 out nand_schematic
xi2 net1 aa net2 nand_schematic
xi1 bb ss net3 nand_schematic
.ends mux2_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 8_bit_mux2
** View name: schematic
.subckt IC2_project_8_bit_mux2_schematic a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> en out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b<7> out<7> en mux2_schematic
xi6 a<6> b<6> out<6> en mux2_schematic
xi5 a<5> b<5> out<5> en mux2_schematic
xi4 a<4> b<4> out<4> en mux2_schematic
xi3 a<3> b<3> out<3> en mux2_schematic
xi2 a<2> b<2> out<2> en mux2_schematic
xi1 a<1> b<1> out<1> en mux2_schematic
xi0 a<0> b<0> out<0> en mux2_schematic
.ends IC2_project_8_bit_mux2_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 1_bit_flip_flop
** View name: schematic
.subckt IC2_project_1_bit_flip_flop_schematic clk d q
xi8 q net18 Inverter
xi7 net22 q Inverter
xi6 qm net17 Inverter
xi5 clk net19 Inverter
xi2 qm net8 Inverter
xi1 d net7 Inverter
xi0 net13 qm Inverter
m6 net17 clk net22 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 net18 net19 net22 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net8 clk net13 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net7 net19 net13 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net17 net19 net22 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net18 clk net22 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net8 net19 net13 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net7 clk net13 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends IC2_project_1_bit_flip_flop_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 8_bit_reg
** View name: schematic
.subckt IC2_project_8_bit_reg_schematic clk d<7> d<6> d<5> d<4> d<3> d<2> d<1> d<0> q<7> q<6> q<5> q<4> q<3> q<2> q<1> q<0>
xi7 clk d<4> q<4> IC2_project_1_bit_flip_flop_schematic
xi6 clk d<6> q<6> IC2_project_1_bit_flip_flop_schematic
xi5 clk d<7> q<7> IC2_project_1_bit_flip_flop_schematic
xi4 clk d<5> q<5> IC2_project_1_bit_flip_flop_schematic
xi3 clk d<2> q<2> IC2_project_1_bit_flip_flop_schematic
xi2 clk d<3> q<3> IC2_project_1_bit_flip_flop_schematic
xi1 clk d<1> q<1> IC2_project_1_bit_flip_flop_schematic
xi0 clk d<0> q<0> IC2_project_1_bit_flip_flop_schematic
.ends IC2_project_8_bit_reg_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 8_bit_reg_mux
** View name: schematic
.subckt IC2_project_8_bit_reg_mux_schematic clk d<7> d<6> d<5> d<4> d<3> d<2> d<1> d<0> en q<7> q<6> q<5> q<4> q<3> q<2> q<1> q<0>
xi0 q<7> q<6> q<5> q<4> q<3> q<2> q<1> q<0> d<7> d<6> d<5> d<4> d<3> d<2> d<1> d<0> en net7<0> net7<1> net7<2> net7<3> net7<4> net7<5> net7<6> net7<7> IC2_project_8_bit_mux2_schematic
xi1 clk net7<0> net7<1> net7<2> net7<3> net7<4> net7<5> net7<6> net7<7> q<7> q<6> q<5> q<4> q<3> q<2> q<1> q<0> IC2_project_8_bit_reg_schematic
.ends IC2_project_8_bit_reg_mux_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 2-4_decoder
** View name: schematic
.subckt _sub7 out<3> out<2> out<1> out<0> waddr<1> waddr<0>
xi19 waddr<1> net018 Inverter
xi20 waddr<0> net017 Inverter
xi10 waddr<1> net17 Inverter
xi9 waddr<0> net16 Inverter
xi16 waddr<0> waddr<1> out<3> and
xi15 net017 waddr<1> out<2> and
xi14 waddr<0> net018 out<1> and
xi13 net16 net17 out<0> and
.ends _sub7
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 4x1_mux_8_bit
** View name: schematic
.subckt IC2_project_4x1_mux_8_bit_schematic reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr<1> raddr<0> rdata<7> rdata<6> rdata<5> rdata<4> rdata<3> rdata<2> rdata<1> rdata<0>
xi10 net16<0> net16<1> net16<2> net16<3> net16<4> net16<5> net16<6> net16<7> net15<0> net15<1> net15<2> net15<3> net15<4> net15<5> net15<6> net15<7> raddr<1> rdata<7> rdata<6> rdata<5> rdata<4> rdata<3> rdata<2> rdata<1> rdata<0> IC2_project_8_bit_mux2_schematic
xi9 reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr<0> net15<0> net15<1> net15<2> net15<3> net15<4> net15<5> net15<6> net15<7> IC2_project_8_bit_mux2_schematic
xi8 0 0 0 0 0 0 0 0 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> raddr<0> net16<0> net16<1> net16<2> net16<3> net16<4> net16<5> net16<6> net16<7> IC2_project_8_bit_mux2_schematic
.ends IC2_project_4x1_mux_8_bit_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: REGFILE
** View name: schematic
.subckt REGFILE clk raddr0<1> raddr0<0> raddr1<1> raddr1<0> rdata0<7> rdata0<6> rdata0<5> rdata0<4> rdata0<3> rdata0<2> rdata0<1> rdata0<0> rdata1<7> rdata1<6> rdata1<5> rdata1<4> rdata1<3> rdata1<2> rdata1<1> rdata1<0> rf_wen src0_en src1_en waddr<1> waddr<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0>
xi14 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en2 reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> IC2_project_8_bit_reg_mux_schematic
xi15 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en3 reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> IC2_project_8_bit_reg_mux_schematic
xi16 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en1 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> IC2_project_8_bit_reg_mux_schematic
xi1 out<3> out<2> out<1> out<0> waddr<1> waddr<0> _sub7
xi13 src1_en raddr1<1> raddr1_final_in<1> and
xi12 raddr1<0> src1_en raddr1_final_in<0> and
xi11 src0_en raddr0<1> raddr0_final_in<1> and
xi10 raddr0<0> src0_en raddr0_final_in<0> and
xi5 out<3> rf_wen en3 and
xi4 out<2> rf_wen en2 and
xi3 out<1> rf_wen en1 and
xi2 out<0> rf_wen en0 and
xi9 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr1_final_in<1> raddr1_final_in<0> rdata1<7> rdata1<6> rdata1<5> rdata1<4> rdata1<3> rdata1<2> rdata1<1> rdata1<0> IC2_project_4x1_mux_8_bit_schematic
xi8 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr0_final_in<1> raddr0_final_in<0> rdata0<7> rdata0<6> rdata0<5> rdata0<4> rdata0<3> rdata0<2> rdata0<1> rdata0<0> IC2_project_4x1_mux_8_bit_schematic
.ends REGFILE
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: and_8&1bits
** View name: schematic
.subckt _sub8 a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b out<7> and
xi6 a<6> b out<6> and
xi5 a<5> b out<5> and
xi4 a<4> b out<4> and
xi3 a<3> b out<3> and
xi2 a<2> b out<2> and
xi1 a<1> b out<1> and
xi0 a<0> b out<0> and
.ends _sub8
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: fetch
** View name: schematic
.subckt fetch clk pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr jump_data<7> jump_data<6> jump_data<5> jump_data<4> jump_data<3> jump_data<2> jump_data<1> jump_data<0> jump_en
xi0 next_pc<7> next_pc<6> next_pc<5> next_pc<4> next_pc<3> next_pc<2> next_pc<1> next_pc<0> jump_data<7> jump_data<6> jump_data<5> jump_data<4> jump_data<3> jump_data<2> jump_data<1> jump_data<0> jump_en net29<0> net29<1> net29<2> net29<3> net29<4> net29<5> net29<6> net29<7> IC2_project_8_bit_mux2_schematic
xi1 clk net30<0> net30<1> net30<2> net30<3> net30<4> net30<5> net30<6> net30<7> pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> IC2_project_8_bit_reg_schematic
xi11 net027 pc<0> net26 next_pc<0> HA
xi10 net26 pc<1> net25 next_pc<1> HA
xi9 net25 pc<2> net24 next_pc<2> HA
xi8 net24 pc<3> net23 next_pc<3> HA
xi7 net20 pc<7> net32 next_pc<7> HA
xi6 net21 pc<6> net20 next_pc<6> HA
xi5 net22 pc<5> net21 next_pc<5> HA
xi4 net23 pc<4> net22 next_pc<4> HA
xi13 net29<0> net29<1> net29<2> net29<3> net29<4> net29<5> net29<6> net29<7> net31 net30<0> net30<1> net30<2> net30<3> net30<4> net30<5> net30<6> net30<7> _sub8
xi14 pc_clr net31 Inverter
xi16 vdd! net027 buffer
.ends fetch
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: buffer_8bits
** View name: schematic
.subckt buffer_8bits a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0>
xi7 a<7> b<7> buffer
xi6 a<6> b<6> buffer
xi5 a<5> b<5> buffer
xi4 a<4> b<4> buffer
xi3 a<3> b<3> buffer
xi2 a<2> b<2> buffer
xi1 a<1> b<1> buffer
xi0 a<0> b<0> buffer
.ends buffer_8bits
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: cpu
** View name: schematic
.subckt cpu clk inst<15> inst<14> inst<13> inst<12> inst<11> inst<10> inst<9> inst<8> inst<7> inst<6> inst<5> inst<4> inst<3> inst<2> inst<1> inst<0> pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr sram_pec waddr<7> waddr<6> waddr<5> waddr<4> waddr<3> waddr<2> waddr<1> waddr<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> wen rst
xi0 alu_opcode<1> alu_opcode<0> net14 net14 wb_en wb_sel inst<15> inst<14> inst<13> inst<12> inst<11> inst<10> inst<9> inst<8> inst<3> inst<2> inst<1> inst<0> jump_en net13 net13 net13 net13 net13 net13 net13 net13 mem_ren wen operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> rst net12 net12 src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src0_en net11 net11 src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> src1_en inst_decoder_opt
xi5 alu_result<7> alu_result<6> alu_result<5> alu_result<4> alu_result<3> alu_result<2> alu_result<1> alu_result<0> wb_en wb_sel mem_result<7> mem_result<6> mem_result<5> mem_result<4> mem_result<3> mem_result<2> mem_result<1> mem_result<0> rst reg_data<7> reg_data<6> reg_data<5> reg_data<4> reg_data<3> reg_data<2> reg_data<1> reg_data<0> reg_wen write_back
xi6 alu_opcode<1> alu_opcode<0> alu_result<7> alu_result<6> alu_result<5> alu_result<4> alu_result<3> alu_result<2> alu_result<1> alu_result<0> operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> alu
xi8 src1_data<3> src1_data<2> src1_data<1> src1_data<0> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> mem_result<7> mem_result<6> mem_result<5> mem_result<4> mem_result<3> mem_result<2> mem_result<1> mem_result<0> sram_pec mem_ren wen IC2_project_16_8bit_SRAM_schematic
xi9 clk inst<7> inst<6> inst<9> inst<8> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> reg_wen src0_en src1_en inst<5> inst<4> reg_data<7> reg_data<6> reg_data<5> reg_data<4> reg_data<3> reg_data<2> reg_data<1> reg_data<0> REGFILE
xi10 clk pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> jump_en fetch
xi13 src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> buffer_8bits
xi14 src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> waddr<7> waddr<6> waddr<5> waddr<4> waddr<3> waddr<2> waddr<1> waddr<0> buffer_8bits
.ends cpu
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: cpu_test
* ** View name: schematic
* xi0 net5 net6<0> net6<1> net6<2> net6<3> net6<4> net6<5> net6<6> net6<7> net6<8> net6<9> net6<10> net6<11> net6<12> net6<13> net6<14> net6<15> net1<0> net1<1> net1<2> net1<3> net1<4> net1<5> net1<6> net1<7> net7 net8 net2<0> net2<1> net2<2> net2<3> net2<4> net2<5> net2<6> net2<7> net3<0> net3<1> net3<2> net3<3> net3<4> net3<5> net3<6> net3<7> net4 net9 cpu
* .END
