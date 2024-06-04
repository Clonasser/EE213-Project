** Generated for: hspiceD
** Generated on: Jan 21 17:52:22 2024
** Design library name: IC2_project
** Design cell name: cpu_bonus_test
** Design view name: schematic
.GLOBAL vdd!


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2


** Library name: IC2_project
** Cell name: nand_mem
** View name: schematic
.subckt nand_mem a b out
m1 net10 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 out a net10 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 out b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 out a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends nand_mem
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: Inverter_mem
** View name: schematic
.subckt Inverter_mem in out
m0 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends Inverter_mem
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: mux2
** View name: schematic
.subckt mux2 a b out sel
xi3 net3 net2 out nand_mem
xi2 net1 a net2 nand_mem
xi1 b sel net3 nand_mem
xi18 sel net1 Inverter_mem
.ends mux2
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 8_bit_mux2
** View name: schematic
.subckt IC2_project_8_bit_mux2_schematic a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> en out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b<7> out<7> en mux2
xi6 a<6> b<6> out<6> en mux2
xi5 a<5> b<5> out<5> en mux2
xi4 a<4> b<4> out<4> en mux2
xi3 a<3> b<3> out<3> en mux2
xi2 a<2> b<2> out<2> en mux2
xi1 a<1> b<1> out<1> en mux2
xi0 a<0> b<0> out<0> en mux2
.ends IC2_project_8_bit_mux2_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: write_back_bonus
** View name: schematic
.subckt write_back_bonus alu_result_i<7> alu_result_i<6> alu_result_i<5> alu_result_i<4> alu_result_i<3> alu_result_i<2> alu_result_i<1> alu_result_i<0> id_wb_sel_i mem_result_i<7> mem_result_i<6> mem_result_i<5> mem_result_i<4> mem_result_i<3> mem_result_i<2> mem_result_i<1> mem_result_i<0> wb_data_o<7> wb_data_o<6> wb_data_o<5> wb_data_o<4> wb_data_o<3> wb_data_o<2> wb_data_o<1> wb_data_o<0>
xi39 alu_result_i<7> alu_result_i<6> alu_result_i<5> alu_result_i<4> alu_result_i<3> alu_result_i<2> alu_result_i<1> alu_result_i<0> mem_result_i<7> mem_result_i<6> mem_result_i<5> mem_result_i<4> mem_result_i<3> mem_result_i<2> mem_result_i<1> mem_result_i<0> id_wb_sel_i wb_data_o<7> wb_data_o<6> wb_data_o<5> wb_data_o<4> wb_data_o<3> wb_data_o<2> wb_data_o<1> wb_data_o<0> IC2_project_8_bit_mux2_schematic
.ends write_back_bonus
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: FA_nb
** View name: schematic
.subckt FA_nb a b cin cout s
m25 s sp vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m24 cout cp vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 sp cin net035 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m10 net035 a net034 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m9 net034 b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 net029 cin vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 sp cp net029 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 net029 b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net029 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 cp a net036 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net036 b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 cp cin net04 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net04 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net04 b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m27 s sp 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m26 cout cp 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m23 net037 b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m22 net038 a net037 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m21 sp cin net038 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m20 sp cp net028 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net028 cin 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m18 net028 b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m17 net028 a 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m16 cp a net039 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 net039 b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m14 net02 b 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m13 net02 a 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m12 cp cin net02 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends FA_nb
** End of subcircuit definition.

** Library name: IC2_lab3
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
** Cell name: HA_nb
** View name: schematic
.subckt HA_nb a b cout s
xi7 net03 net02 s nand
xi6 net01 b net02 nand
xi5 a net01 net03 nand
xi4 a b net01 nand
xi13 net01 cout Inverter
.ends HA_nb
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: add_8bit
** View name: schematic
.subckt add_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b<7> net4 net1 out<7> FA_nb
xi6 a<6> b<6> net3 net4 out<6> FA_nb
xi5 a<5> b<5> net2 net3 out<5> FA_nb
xi4 a<4> b<4> net7 net2 out<4> FA_nb
xi3 a<3> b<3> net6 net7 out<3> FA_nb
xi2 a<2> b<2> net5 net6 out<2> FA_nb
xi1 a<1> b<1> net8 net5 out<1> FA_nb
xi0 a<0> b<0> net8 out<0> HA_nb
.ends add_8bit
** End of subcircuit definition.

** Library name: IC2_project
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
** Cell name: and
** View name: schematic
.subckt and a b out
xi0 a b net4 nand_schematic
xi1 net4 out Inverter
.ends and
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: xor
** View name: schematic
.subckt xor a b out
m3 net17 b__ 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 out a__ net17 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net16 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 out a net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net12 b vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 net12 a vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 out b__ net12 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 out a__ net12 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi3 b b__ Inverter
xi2 a a__ Inverter
.ends xor
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: half_sub
** View name: schematic
.subckt half_sub b d x y
xi0 x net1 Inverter
xi1 net1 y b and
xi2 x y d xor
.ends half_sub
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
** Cell name: full_sub
** View name: schematic
.subckt full_sub bi bo d x y
xi1 net08 d net11 bi half_sub
xi0 net12 net11 x y half_sub
xi2 net08 net12 bo or
.ends full_sub
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: sub_8bit
** View name: schematic
.subckt sub_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi10 net09 net03 out<1> a<1> b<1> full_sub
xi11 net03 net04 out<2> a<2> b<2> full_sub
xi12 net04 net05 out<3> a<3> b<3> full_sub
xi13 net05 net06 out<4> a<4> b<4> full_sub
xi14 net06 net07 out<5> a<5> b<5> full_sub
xi15 net07 net08 out<6> a<6> b<6> full_sub
xi16 net08 net1 out<7> a<7> b<7> full_sub
xi9 net09 out<0> a<0> b<0> half_sub
.ends sub_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: demux
** View name: schematic
.subckt demux d s0 s1 y0 y1 y2 y3
xi15 s0 net21 Inverter
xi14 s1 net20 Inverter
xi13 s1 net19 Inverter
xi12 s0 net22 Inverter
xi25 s0 d net023 nand_schematic
xi24 d s1 net022 nand_schematic
xi21 d s1 net09 nand_schematic
xi20 net21 d net010 nand_schematic
xi19 s0 d net012 nand_schematic
xi18 d net20 net011 nand_schematic
xi16 d net19 net17 nand_schematic
xi0 net22 d net18 nand_schematic
xi23 net023 net022 y3 nor
xi22 net010 net09 y2 nor
xi17 net012 net011 y1 nor
xi2 net18 net17 y0 nor
.ends demux
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: demux_8bit
** View name: schematic
.subckt demux_8bit d<7> d<6> d<5> d<4> d<3> d<2> d<1> d<0> s0 s1 y0<7> y0<6> y0<5> y0<4> y0<3> y0<2> y0<1> y0<0> y1<7> y1<6> y1<5> y1<4> y1<3> y1<2> y1<1> y1<0> y2<7> y2<6> y2<5> y2<4> y2<3> y2<2> y2<1> y2<0> y3<7> y3<6> y3<5> y3<4> y3<3> y3<2> y3<1> y3<0>
xi7 d<4> s0 s1 y0<4> y1<4> y2<4> y3<4> demux
xi6 d<5> s0 s1 y0<5> y1<5> y2<5> y3<5> demux
xi5 d<6> s0 s1 y0<6> y1<6> y2<6> y3<6> demux
xi4 d<7> s0 s1 y0<7> y1<7> y2<7> y3<7> demux
xi3 d<3> s0 s1 y0<3> y1<3> y2<3> y3<3> demux
xi2 d<2> s0 s1 y0<2> y1<2> y2<2> y3<2> demux
xi1 d<1> s0 s1 y0<1> y1<1> y2<1> y3<1> demux
xi0 d<0> s0 s1 y0<0> y1<0> y2<0> y3<0> demux
.ends demux_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: and_8bit
** View name: schematic
.subckt and_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi17 a<0> b<0> out<0> and
xi24 a<7> b<7> out<7> and
xi23 a<6> b<6> out<6> and
xi22 a<5> b<5> out<5> and
xi21 a<4> b<4> out<4> and
xi20 a<3> b<3> out<3> and
xi19 a<2> b<2> out<2> and
xi18 a<1> b<1> out<1> and
.ends and_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: xor_8bit
** View name: schematic
.subckt xor_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi17 a<0> b<0> out<0> xor
xi24 a<7> b<7> out<7> xor
xi23 a<6> b<6> out<6> xor
xi22 a<5> b<5> out<5> xor
xi21 a<4> b<4> out<4> xor
xi20 a<3> b<3> out<3> xor
xi19 a<2> b<2> out<2> xor
xi18 a<1> b<1> out<1> xor
.ends xor_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: or_8bit
** View name: schematic
.subckt or_8bit a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b<7> b<6> b<5> b<4> b<3> b<2> b<1> b<0> out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b<7> out<7> or
xi6 a<6> b<6> out<6> or
xi5 a<5> b<5> out<5> or
xi4 a<4> b<4> out<4> or
xi3 a<3> b<3> out<3> or
xi2 a<2> b<2> out<2> or
xi1 a<1> b<1> out<1> or
xi0 a<0> b<0> out<0> or
.ends or_8bit
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: alu_bonus
** View name: schematic
.subckt alu_bonus alu_opcode_i<1> alu_opcode_i<0> alu_result_o<7> alu_result_o<6> alu_result_o<5> alu_result_o<4> alu_result_o<3> alu_result_o<2> alu_result_o<1> alu_result_o<0> operand0_i<7> operand0_i<6> operand0_i<5> operand0_i<4> operand0_i<3> operand0_i<2> operand0_i<1> operand0_i<0> operand1_i<7> operand1_i<6> operand1_i<5> operand1_i<4> operand1_i<3> operand1_i<2> operand1_i<1> operand1_i<0>
xi0 add_0<7> add_0<6> add_0<5> add_0<4> add_0<3> add_0<2> add_0<1> add_0<0> add_1<7> add_1<6> add_1<5> add_1<4> add_1<3> add_1<2> add_1<1> add_1<0> add_out<7> add_out<6> add_out<5> add_out<4> add_out<3> add_out<2> add_out<1> add_out<0> add_8bit
xi19 sub_0<7> sub_0<6> sub_0<5> sub_0<4> sub_0<3> sub_0<2> sub_0<1> sub_0<0> sub_1<7> sub_1<6> sub_1<5> sub_1<4> sub_1<3> sub_1<2> sub_1<1> sub_1<0> sub_out<7> sub_out<6> sub_out<5> sub_out<4> sub_out<3> sub_out<2> sub_out<1> sub_out<0> sub_8bit
xi17 operand0_i<7> operand0_i<6> operand0_i<5> operand0_i<4> operand0_i<3> operand0_i<2> operand0_i<1> operand0_i<0> alu_opcode_i<0> alu_opcode_i<1> add_0<7> add_0<6> add_0<5> add_0<4> add_0<3> add_0<2> add_0<1> add_0<0> sub_0<7> sub_0<6> sub_0<5> sub_0<4> sub_0<3> sub_0<2> sub_0<1> sub_0<0> xor_0<7> xor_0<6> xor_0<5> xor_0<4> xor_0<3> xor_0<2> xor_0<1> xor_0<0> and_0<7> and_0<6> and_0<5> and_0<4> and_0<3> and_0<2> and_0<1> and_0<0> demux_8bit
xi18 operand1_i<7> operand1_i<6> operand1_i<5> operand1_i<4> operand1_i<3> operand1_i<2> operand1_i<1> operand1_i<0> alu_opcode_i<0> alu_opcode_i<1> add_1<7> add_1<6> add_1<5> add_1<4> add_1<3> add_1<2> add_1<1> add_1<0> sub_1<7> sub_1<6> sub_1<5> sub_1<4> sub_1<3> sub_1<2> sub_1<1> sub_1<0> xor_1<7> xor_1<6> xor_1<5> xor_1<4> xor_1<3> xor_1<2> xor_1<1> xor_1<0> and_1<7> and_1<6> and_1<5> and_1<4> and_1<3> and_1<2> and_1<1> and_1<0> demux_8bit
xi22 and_0<7> and_0<6> and_0<5> and_0<4> and_0<3> and_0<2> and_0<1> and_0<0> and_1<7> and_1<6> and_1<5> and_1<4> and_1<3> and_1<2> and_1<1> and_1<0> and_out<7> and_out<6> and_out<5> and_out<4> and_out<3> and_out<2> and_out<1> and_out<0> and_8bit
xi20 xor_0<7> xor_0<6> xor_0<5> xor_0<4> xor_0<3> xor_0<2> xor_0<1> xor_0<0> xor_1<7> xor_1<6> xor_1<5> xor_1<4> xor_1<3> xor_1<2> xor_1<1> xor_1<0> xor_out<7> xor_out<6> xor_out<5> xor_out<4> xor_out<3> xor_out<2> xor_out<1> xor_out<0> xor_8bit
xi23 add_out<7> add_out<6> add_out<5> add_out<4> add_out<3> add_out<2> add_out<1> add_out<0> sub_out<7> sub_out<6> sub_out<5> sub_out<4> sub_out<3> sub_out<2> sub_out<1> sub_out<0> net8<0> net8<1> net8<2> net8<3> net8<4> net8<5> net8<6> net8<7> or_8bit
xi24 xor_out<7> xor_out<6> xor_out<5> xor_out<4> xor_out<3> xor_out<2> xor_out<1> xor_out<0> and_out<7> and_out<6> and_out<5> and_out<4> and_out<3> and_out<2> and_out<1> and_out<0> net7<0> net7<1> net7<2> net7<3> net7<4> net7<5> net7<6> net7<7> or_8bit
xi25 net8<0> net8<1> net8<2> net8<3> net8<4> net8<5> net8<6> net8<7> net7<0> net7<1> net7<2> net7<3> net7<4> net7<5> net7<6> net7<7> alu_result_o<7> alu_result_o<6> alu_result_o<5> alu_result_o<4> alu_result_o<3> alu_result_o<2> alu_result_o<1> alu_result_o<0> or_8bit
.ends alu_bonus
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
** Cell name: buffer_mem
** View name: schematic
.subckt buffer_mem in out
xi1 net5 out Inverter_mem
xi0 in net5 Inverter_mem
.ends buffer_mem
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: and_mem
** View name: schematic
.subckt and_mem a b out
xi0 a b net4 nand_schematic
xi1 net4 out Inverter
.ends and_mem
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
xi250 net0340 d_out buffer_mem
xi236 pec sram_ren ren nand_mem
xi261 wl<7> pec wl_in<7> and_mem
xi268 wl<14> pec wl_in<14> and_mem
xi260 wl<6> pec wl_in<6> and_mem
xi269 wl<15> pec wl_in<15> and_mem
xi259 wl<5> pec wl_in<5> and_mem
xi258 wl<4> pec wl_in<4> and_mem
xi257 wl<3> pec wl_in<3> and_mem
xi256 wl<2> pec wl_in<2> and_mem
xi254 wl<0> pec wl_in<0> and_mem
xi255 wl<1> pec wl_in<1> and_mem
xi263 wl<9> pec wl_in<9> and_mem
xi265 wl<11> pec wl_in<11> and_mem
xi264 wl<10> pec wl_in<10> and_mem
xi251 net372 wen bl1_switch and_mem
xi252 d wen bl0_switch and_mem
xi253 sram_wen pec wen and_mem
xi267 wl<13> pec wl_in<13> and_mem
xi262 wl<8> pec wl_in<8> and_mem
xi266 wl<12> pec wl_in<12> and_mem
xi103 d net372 Inverter_mem
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
xi38 addr<0> net50 Inverter_mem
xi37 addr<1> net49 Inverter_mem
xi36 addr<1> net48 Inverter_mem
xi35 addr<0> net47 Inverter_mem
xi30 addr<2> net46 Inverter_mem
xi29 addr<3> net45 Inverter_mem
xi28 addr<3> net44 Inverter_mem
xi27 addr<2> net43 Inverter_mem
xi54 s4 d4 wl<15> and_mem
xi53 s4 d3 wl<14> and_mem
xi52 s4 d2 wl<13> and_mem
xi51 s4 d1 wl<12> and_mem
xi50 s3 d4 wl<11> and_mem
xi49 s3 d3 wl<10> and_mem
xi48 s3 d2 wl<9> and_mem
xi47 s3 d1 wl<8> and_mem
xi46 s2 d4 wl<7> and_mem
xi45 s2 d3 wl<6> and_mem
xi44 s2 d2 wl<5> and_mem
xi43 s2 d1 wl<4> and_mem
xi42 s1 d4 wl<3> and_mem
xi41 s1 d3 wl<2> and_mem
xi40 s1 d2 wl<1> and_mem
xi39 s1 d1 wl<0> and_mem
xi34 addr<0> addr<1> d4 and_mem
xi33 net50 addr<1> d3 and_mem
xi32 addr<0> net49 d2 and_mem
xi31 net47 net48 d1 and_mem
xi26 addr<2> addr<3> s4 and_mem
xi25 net46 addr<3> s3 and_mem
xi24 addr<2> net45 s2 and_mem
xi23 net43 net44 s1 and_mem
.ends IC2_project_16_8bit_SRAM_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 1_bit_flip_flop
** View name: schematic
.subckt IC2_project_1_bit_flip_flop_schematic clk d q
m6 net17 clk net22 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 net18 net19 net22 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net8 clk net13 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net7 net19 net13 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net17 net19 net22 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net18 clk net22 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net8 net19 net13 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net7 clk net13 vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi8 q net18 Inverter_mem
xi7 net22 q Inverter_mem
xi6 qm net17 Inverter_mem
xi5 clk net19 Inverter_mem
xi2 qm net8 Inverter_mem
xi1 d net7 Inverter_mem
xi0 net13 qm Inverter_mem
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
** Cell name: or_mem
** View name: schematic
.subckt or_mem a b out
xi0 net4 out Inverter
xi1 a b net4 nor
.ends or_mem
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: and_8_1bits_mem
** View name: schematic
.subckt and_8_1bits_mem a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b out<7> and_mem
xi6 a<6> b out<6> and_mem
xi5 a<5> b out<5> and_mem
xi4 a<4> b out<4> and_mem
xi3 a<3> b out<3> and_mem
xi2 a<2> b out<2> and_mem
xi1 a<1> b out<1> and_mem
xi0 a<0> b out<0> and_mem
.ends and_8_1bits_mem
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 4x1_mux_8_bit_opt
** View name: schematic
.subckt IC2_project_4x1_mux_8_bit_opt_schematic reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr<1> raddr<0> rdata<7> rdata<6> rdata<5> rdata<4> rdata<3> rdata<2> rdata<1> rdata<0>
xi10 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> net15<0> net15<1> net15<2> net15<3> net15<4> net15<5> net15<6> net15<7> raddr<1> net011<0> net011<1> net011<2> net011<3> net011<4> net011<5> net011<6> net011<7> IC2_project_8_bit_mux2_schematic
xi9 reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr<0> net15<0> net15<1> net15<2> net15<3> net15<4> net15<5> net15<6> net15<7> IC2_project_8_bit_mux2_schematic
xi14 raddr<0> raddr<1> net010 or_mem
xi15 net011<0> net011<1> net011<2> net011<3> net011<4> net011<5> net011<6> net011<7> net010 rdata<7> rdata<6> rdata<5> rdata<4> rdata<3> rdata<2> rdata<1> rdata<0> and_8_1bits_mem
.ends IC2_project_4x1_mux_8_bit_opt_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: 2_4_decoder
** View name: schematic
.subckt IC2_project_2_4_decoder_schematic out<3> out<2> out<1> out<0> waddr<1> waddr<0>
xi19 waddr<1> net018 Inverter_mem
xi20 waddr<0> net017 Inverter_mem
xi10 waddr<1> net17 Inverter_mem
xi9 waddr<0> net16 Inverter_mem
xi16 waddr<0> waddr<1> out<3> and_mem
xi15 net017 waddr<1> out<2> and_mem
xi14 waddr<0> net018 out<1> and_mem
xi13 net16 net17 out<0> and_mem
.ends IC2_project_2_4_decoder_schematic
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: REGFILE
** View name: schematic
.subckt REGFILE clk raddr0<1> raddr0<0> raddr1<1> raddr1<0> rdata0<7> rdata0<6> rdata0<5> rdata0<4> rdata0<3> rdata0<2> rdata0<1> rdata0<0> rdata1<7> rdata1<6> rdata1<5> rdata1<4> rdata1<3> rdata1<2> rdata1<1> rdata1<0> rf_wen src0_en src1_en waddr<1> waddr<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0>
xi14 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en2 reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> IC2_project_8_bit_reg_mux_schematic
xi15 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en3 reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> IC2_project_8_bit_reg_mux_schematic
xi16 clk wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> en1 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> IC2_project_8_bit_reg_mux_schematic
xi9 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr1_final_in<1> raddr1_final_in<0> rdata1<7> rdata1<6> rdata1<5> rdata1<4> rdata1<3> rdata1<2> rdata1<1> rdata1<0> IC2_project_4x1_mux_8_bit_opt_schematic
xi8 reg1_out<7> reg1_out<6> reg1_out<5> reg1_out<4> reg1_out<3> reg1_out<2> reg1_out<1> reg1_out<0> reg2_out<7> reg2_out<6> reg2_out<5> reg2_out<4> reg2_out<3> reg2_out<2> reg2_out<1> reg2_out<0> reg3_out<7> reg3_out<6> reg3_out<5> reg3_out<4> reg3_out<3> reg3_out<2> reg3_out<1> reg3_out<0> raddr0_final_in<1> raddr0_final_in<0> rdata0<7> rdata0<6> rdata0<5> rdata0<4> rdata0<3> rdata0<2> rdata0<1> rdata0<0> IC2_project_4x1_mux_8_bit_opt_schematic
xi13 raddr1<1> src1_en raddr1_final_in<1> and_mem
xi12 raddr1<0> src1_en raddr1_final_in<0> and_mem
xi11 raddr0<1> src0_en raddr0_final_in<1> and_mem
xi10 raddr0<0> src0_en raddr0_final_in<0> and_mem
xi5 out<3> rf_wen en3 and_mem
xi4 out<2> rf_wen en2 and_mem
xi3 out<1> rf_wen en1 and_mem
xi1 out<3> out<2> out<1> out<0> waddr<1> waddr<0> IC2_project_2_4_decoder_schematic
.ends REGFILE
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
** Cell name: fetch
** View name: schematic
.subckt fetch clk pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr jump_data<7> jump_data<6> jump_data<5> jump_data<4> jump_data<3> jump_data<2> jump_data<1> jump_data<0> jump_en
xi0 next_pc<7> next_pc<6> next_pc<5> next_pc<4> next_pc<3> next_pc<2> next_pc<1> next_pc<0> jump_data<7> jump_data<6> jump_data<5> jump_data<4> jump_data<3> jump_data<2> jump_data<1> jump_data<0> jump_en net29<0> net29<1> net29<2> net29<3> net29<4> net29<5> net29<6> net29<7> IC2_project_8_bit_mux2_schematic
xi1 clk net30<0> net30<1> net30<2> net30<3> net30<4> net30<5> net30<6> net30<7> pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> IC2_project_8_bit_reg_schematic
xi13 net29<0> net29<1> net29<2> net29<3> net29<4> net29<5> net29<6> net29<7> net31 net30<0> net30<1> net30<2> net30<3> net30<4> net30<5> net30<6> net30<7> and_8_1bits_mem
xi14 pc_clr net31 Inverter
xi16 vdd! net027 buffer
xi11 net027 pc<0> net26 next_pc<0> HA_nb
xi10 net26 pc<1> net25 next_pc<1> HA_nb
xi9 net25 pc<2> net24 next_pc<2> HA_nb
xi8 net24 pc<3> net23 next_pc<3> HA_nb
xi7 net20 pc<7> net32 next_pc<7> HA_nb
xi6 net21 pc<6> net20 next_pc<6> HA_nb
xi5 net22 pc<5> net21 next_pc<5> HA_nb
xi4 net23 pc<4> net22 next_pc<4> HA_nb
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
** Cell name: and_8_1bits_inst
** View name: schematic
.subckt and_8_1bits_inst a<7> a<6> a<5> a<4> a<3> a<2> a<1> a<0> b out<7> out<6> out<5> out<4> out<3> out<2> out<1> out<0>
xi7 a<7> b out<7> and_mem
xi6 a<6> b out<6> and_mem
xi5 a<5> b out<5> and_mem
xi4 a<4> b out<4> and_mem
xi3 a<3> b out<3> and_mem
xi2 a<2> b out<2> and_mem
xi1 a<1> b out<1> and_mem
xi0 a<0> b out<0> and_mem
.ends and_8_1bits_inst
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: inst_decoder_opt_bonus
** View name: schematic
.subckt inst_decoder_opt_bonus id_wb_addr<1> id_wb_addr<0> id_wb_en id_wb_sel inst_i<3> inst_i<2> inst_i<1> inst_i<0> inst_i<15> inst_i<14> inst_i<13> inst_i<12> inst_i<11> inst_i<10> inst_i<9> inst_i<8> jump_en mem_data<7> mem_data<6> mem_data<5> mem_data<4> mem_data<3> mem_data<2> mem_data<1> mem_data<0> mem_ren mem_wen operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> src0_addr<1> src0_addr<0> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src0_en src1_addr<1> src1_addr<0> src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> src1_en
xi275 net029 ls_type mem_wen and
xi163 inst_i<0> inst_i<1> inst_jal and
xi282 r_type ls_type src1_en or
xi274 src0_en mem_ren Inverter
xi260 inst_i<1> net0102 Inverter
xi264 inst_i<0> net0100 Inverter
xi266 inst_i<2> net085 Inverter
xi277 inst_i<3> net028 Inverter
xi273 src0_en id_wb_sel Inverter
xi143 inst_jal jump_en buffer
xi268 net084 ls_type src0_en nand_schematic
xi286 inst_i<0> net0102 ls_type nor
xi288 net085 inst_i<3> net084 nor
xi271 ls_type inst_jal oprand_rstn nor
xi284 inst_i<0> inst_i<1> r_type nor
xi283 mem_wen inst_jal id_wb_en nor
xi287 inst_i<2> net028 net029 nor
xi285 net0100 inst_i<1> i_type nor
xi278 src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> oprand_rstn operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> and_8_1bits_inst
xi279 src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> r_type net012<0> net012<1> net012<2> net012<3> net012<4> net012<5> net012<6> net012<7> and_8_1bits_inst
xi280 inst_i<15> inst_i<14> inst_i<13> inst_i<12> inst_i<11> inst_i<10> inst_i<9> inst_i<8> i_type net011<0> net011<1> net011<2> net011<3> net011<4> net011<5> net011<6> net011<7> and_8_1bits_inst
xi281 net012<0> net012<1> net012<2> net012<3> net012<4> net012<5> net012<6> net012<7> net011<0> net011<1> net011<2> net011<3> net011<4> net011<5> net011<6> net011<7> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> or_8bit
.ends inst_decoder_opt_bonus
** End of subcircuit definition.

** Library name: IC2_project
** Cell name: cpu_bonus
** View name: schematic
.subckt cpu_bonus clk inst<15> inst<14> inst<13> inst<12> inst<11> inst<10> inst<9> inst<8> inst<7> inst<6> inst<5> inst<4> inst<3> inst<2> inst<1> inst<0> pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr sram_pec waddr<7> waddr<6> waddr<5> waddr<4> waddr<3> waddr<2> waddr<1> waddr<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> wen
xi5 alu_result<7> alu_result<6> alu_result<5> alu_result<4> alu_result<3> alu_result<2> alu_result<1> alu_result<0> wb_sel mem_result<7> mem_result<6> mem_result<5> mem_result<4> mem_result<3> mem_result<2> mem_result<1> mem_result<0> reg_data<7> reg_data<6> reg_data<5> reg_data<4> reg_data<3> reg_data<2> reg_data<1> reg_data<0> write_back_bonus
xi6 inst<3> inst<2> alu_result<7> alu_result<6> alu_result<5> alu_result<4> alu_result<3> alu_result<2> alu_result<1> alu_result<0> operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> alu_bonus
xi8 src1_data<3> src1_data<2> src1_data<1> src1_data<0> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> mem_result<7> mem_result<6> mem_result<5> mem_result<4> mem_result<3> mem_result<2> mem_result<1> mem_result<0> sram_pec mem_ren wen IC2_project_16_8bit_SRAM_schematic
xi9 clk inst<7> inst<6> inst<9> inst<8> src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> wb_en src0_en src1_en inst<5> inst<4> reg_data<7> reg_data<6> reg_data<5> reg_data<4> reg_data<3> reg_data<2> reg_data<1> reg_data<0> REGFILE
xi10 clk pc<7> pc<6> pc<5> pc<4> pc<3> pc<2> pc<1> pc<0> pc_clr src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> jump_en fetch
xi13 src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> wdata<7> wdata<6> wdata<5> wdata<4> wdata<3> wdata<2> wdata<1> wdata<0> buffer_8bits
xi14 src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> waddr<7> waddr<6> waddr<5> waddr<4> waddr<3> waddr<2> waddr<1> waddr<0> buffer_8bits
xi0 net14 net14 wb_en wb_sel inst<3> inst<2> inst<1> inst<0> inst<15> inst<14> inst<13> inst<12> inst<11> inst<10> inst<9> inst<8> jump_en net13 net13 net13 net13 net13 net13 net13 net13 mem_ren wen operand0<7> operand0<6> operand0<5> operand0<4> operand0<3> operand0<2> operand0<1> operand0<0> operand1<7> operand1<6> operand1<5> operand1<4> operand1<3> operand1<2> operand1<1> operand1<0> net12 net12 src0_data<7> src0_data<6> src0_data<5> src0_data<4> src0_data<3> src0_data<2> src0_data<1> src0_data<0> src0_en net11 net11 src1_data<7> src1_data<6> src1_data<5> src1_data<4> src1_data<3> src1_data<2> src1_data<1> src1_data<0> src1_en inst_decoder_opt_bonus
.ends cpu_bonus
** End of subcircuit definition.


