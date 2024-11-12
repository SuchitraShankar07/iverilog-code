#! /usr/bin/vvp
:ivl_version "13.0 (devel)" "(s20221226-533-g676b36e45)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/usr/lib/ivl/system.vpi";
:vpi_module "/usr/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/lib/ivl/va_math.vpi";
S_0x62399cd174c0 .scope module, "fulladdR" "fulladdR" 2 1;
 .timescale 0 0;
    .port_info 0 /INPUT 4 "a";
    .port_info 1 /INPUT 4 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 4 "sum";
    .port_info 4 /OUTPUT 1 "cout";
o0x73578efb6d08 .functor BUFZ 4, c4<zzzz>; HiZ drive
v0x62399cd72e10_0 .net "a", 3 0, o0x73578efb6d08;  0 drivers
o0x73578efb6d38 .functor BUFZ 4, c4<zzzz>; HiZ drive
v0x62399cd72f10_0 .net "b", 3 0, o0x73578efb6d38;  0 drivers
o0x73578efb61f8 .functor BUFZ 1, c4<z>; HiZ drive
v0x62399cd72ff0_0 .net "cin", 0 0, o0x73578efb61f8;  0 drivers
v0x62399cd730c0_0 .net "cout", 0 0, L_0x62399cd753e0;  1 drivers
v0x62399cd73190_0 .net "cout0", 0 0, L_0x62399cd73580;  1 drivers
v0x62399cd73280_0 .net "cout1", 0 0, L_0x62399cd73f60;  1 drivers
v0x62399cd73370_0 .net "cout2", 0 0, L_0x62399cd74a20;  1 drivers
v0x62399cd73460_0 .net "sum", 3 0, L_0x62399cd75e90;  1 drivers
L_0x62399cd73d80 .part o0x73578efb6d08, 0, 1;
L_0x62399cd73e70 .part o0x73578efb6d38, 0, 1;
L_0x62399cd747a0 .part o0x73578efb6d08, 1, 1;
L_0x62399cd748e0 .part o0x73578efb6d38, 1, 1;
L_0x62399cd751c0 .part o0x73578efb6d08, 2, 1;
L_0x62399cd752b0 .part o0x73578efb6d38, 2, 1;
L_0x62399cd75b90 .part o0x73578efb6d08, 3, 1;
L_0x62399cd75d10 .part o0x73578efb6d38, 3, 1;
L_0x62399cd75e90 .concat8 [ 1 1 1 1], L_0x62399cd73620, L_0x62399cd74000, L_0x62399cd74ac0, L_0x62399cd754d0;
S_0x62399cd17650 .scope module, "u0" "fulladd" 2 10, 2 44 0, S_0x62399cd174c0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 1 "sum";
    .port_info 4 /OUTPUT 1 "cout";
L_0x73578ef6d060 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd4b4f0_0 .net *"_ivl_10", 0 0, L_0x73578ef6d060;  1 drivers
v0x62399cd48780_0 .net *"_ivl_11", 1 0, L_0x62399cd73980;  1 drivers
v0x62399cd45a10_0 .net *"_ivl_13", 1 0, L_0x62399cd73ac0;  1 drivers
L_0x73578ef6d0a8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd42c70_0 .net *"_ivl_16", 0 0, L_0x73578ef6d0a8;  1 drivers
v0x62399cd6fab0_0 .net *"_ivl_17", 1 0, L_0x62399cd73c40;  1 drivers
v0x62399cd6fbe0_0 .net *"_ivl_3", 1 0, L_0x62399cd73710;  1 drivers
L_0x73578ef6d018 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd6fcc0_0 .net *"_ivl_6", 0 0, L_0x73578ef6d018;  1 drivers
v0x62399cd6fda0_0 .net *"_ivl_7", 1 0, L_0x62399cd73800;  1 drivers
v0x62399cd6fe80_0 .net "a", 0 0, L_0x62399cd73d80;  1 drivers
v0x62399cd6ff40_0 .net "b", 0 0, L_0x62399cd73e70;  1 drivers
v0x62399cd70000_0 .net "cin", 0 0, o0x73578efb61f8;  alias, 0 drivers
v0x62399cd700c0_0 .net "cout", 0 0, L_0x62399cd73580;  alias, 1 drivers
v0x62399cd70180_0 .net "sum", 0 0, L_0x62399cd73620;  1 drivers
L_0x62399cd73580 .part L_0x62399cd73c40, 1, 1;
L_0x62399cd73620 .part L_0x62399cd73c40, 0, 1;
L_0x62399cd73710 .concat [ 1 1 0 0], L_0x62399cd73d80, L_0x73578ef6d018;
L_0x62399cd73800 .concat [ 1 1 0 0], L_0x62399cd73e70, L_0x73578ef6d060;
L_0x62399cd73980 .arith/sum 2, L_0x62399cd73710, L_0x62399cd73800;
L_0x62399cd73ac0 .concat [ 1 1 0 0], o0x73578efb61f8, L_0x73578ef6d0a8;
L_0x62399cd73c40 .arith/sum 2, L_0x62399cd73980, L_0x62399cd73ac0;
S_0x62399cd702e0 .scope module, "u1" "fulladd" 2 18, 2 44 0, S_0x62399cd174c0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 1 "sum";
    .port_info 4 /OUTPUT 1 "cout";
L_0x73578ef6d138 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd70540_0 .net *"_ivl_10", 0 0, L_0x73578ef6d138;  1 drivers
v0x62399cd70620_0 .net *"_ivl_11", 1 0, L_0x62399cd743b0;  1 drivers
v0x62399cd70700_0 .net *"_ivl_13", 1 0, L_0x62399cd744f0;  1 drivers
L_0x73578ef6d180 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd707c0_0 .net *"_ivl_16", 0 0, L_0x73578ef6d180;  1 drivers
v0x62399cd708a0_0 .net *"_ivl_17", 1 0, L_0x62399cd74660;  1 drivers
v0x62399cd709d0_0 .net *"_ivl_3", 1 0, L_0x62399cd740f0;  1 drivers
L_0x73578ef6d0f0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd70ab0_0 .net *"_ivl_6", 0 0, L_0x73578ef6d0f0;  1 drivers
v0x62399cd70b90_0 .net *"_ivl_7", 1 0, L_0x62399cd741e0;  1 drivers
v0x62399cd70c70_0 .net "a", 0 0, L_0x62399cd747a0;  1 drivers
v0x62399cd70dc0_0 .net "b", 0 0, L_0x62399cd748e0;  1 drivers
v0x62399cd70e80_0 .net "cin", 0 0, L_0x62399cd73580;  alias, 1 drivers
v0x62399cd70f20_0 .net "cout", 0 0, L_0x62399cd73f60;  alias, 1 drivers
v0x62399cd70fc0_0 .net "sum", 0 0, L_0x62399cd74000;  1 drivers
L_0x62399cd73f60 .part L_0x62399cd74660, 1, 1;
L_0x62399cd74000 .part L_0x62399cd74660, 0, 1;
L_0x62399cd740f0 .concat [ 1 1 0 0], L_0x62399cd747a0, L_0x73578ef6d0f0;
L_0x62399cd741e0 .concat [ 1 1 0 0], L_0x62399cd748e0, L_0x73578ef6d138;
L_0x62399cd743b0 .arith/sum 2, L_0x62399cd740f0, L_0x62399cd741e0;
L_0x62399cd744f0 .concat [ 1 1 0 0], L_0x62399cd73580, L_0x73578ef6d180;
L_0x62399cd74660 .arith/sum 2, L_0x62399cd743b0, L_0x62399cd744f0;
S_0x62399cd71120 .scope module, "u2" "fulladd" 2 26, 2 44 0, S_0x62399cd174c0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 1 "sum";
    .port_info 4 /OUTPUT 1 "cout";
L_0x73578ef6d210 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd71360_0 .net *"_ivl_10", 0 0, L_0x73578ef6d210;  1 drivers
v0x62399cd71440_0 .net *"_ivl_11", 1 0, L_0x62399cd74d90;  1 drivers
v0x62399cd71520_0 .net *"_ivl_13", 1 0, L_0x62399cd74ed0;  1 drivers
L_0x73578ef6d258 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd715e0_0 .net *"_ivl_16", 0 0, L_0x73578ef6d258;  1 drivers
v0x62399cd716c0_0 .net *"_ivl_17", 1 0, L_0x62399cd750d0;  1 drivers
v0x62399cd717f0_0 .net *"_ivl_3", 1 0, L_0x62399cd74bb0;  1 drivers
L_0x73578ef6d1c8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd718d0_0 .net *"_ivl_6", 0 0, L_0x73578ef6d1c8;  1 drivers
v0x62399cd719b0_0 .net *"_ivl_7", 1 0, L_0x62399cd74ca0;  1 drivers
v0x62399cd71a90_0 .net "a", 0 0, L_0x62399cd751c0;  1 drivers
v0x62399cd71be0_0 .net "b", 0 0, L_0x62399cd752b0;  1 drivers
v0x62399cd71ca0_0 .net "cin", 0 0, L_0x62399cd73f60;  alias, 1 drivers
v0x62399cd71d40_0 .net "cout", 0 0, L_0x62399cd74a20;  alias, 1 drivers
v0x62399cd71de0_0 .net "sum", 0 0, L_0x62399cd74ac0;  1 drivers
L_0x62399cd74a20 .part L_0x62399cd750d0, 1, 1;
L_0x62399cd74ac0 .part L_0x62399cd750d0, 0, 1;
L_0x62399cd74bb0 .concat [ 1 1 0 0], L_0x62399cd751c0, L_0x73578ef6d1c8;
L_0x62399cd74ca0 .concat [ 1 1 0 0], L_0x62399cd752b0, L_0x73578ef6d210;
L_0x62399cd74d90 .arith/sum 2, L_0x62399cd74bb0, L_0x62399cd74ca0;
L_0x62399cd74ed0 .concat [ 1 1 0 0], L_0x62399cd73f60, L_0x73578ef6d258;
L_0x62399cd750d0 .arith/sum 2, L_0x62399cd74d90, L_0x62399cd74ed0;
S_0x62399cd71f70 .scope module, "u3" "fulladd" 2 34, 2 44 0, S_0x62399cd174c0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 1 "sum";
    .port_info 4 /OUTPUT 1 "cout";
L_0x73578ef6d2e8 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd721b0_0 .net *"_ivl_10", 0 0, L_0x73578ef6d2e8;  1 drivers
v0x62399cd722b0_0 .net *"_ivl_11", 1 0, L_0x62399cd757a0;  1 drivers
v0x62399cd72390_0 .net *"_ivl_13", 1 0, L_0x62399cd758e0;  1 drivers
L_0x73578ef6d330 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd72480_0 .net *"_ivl_16", 0 0, L_0x73578ef6d330;  1 drivers
v0x62399cd72560_0 .net *"_ivl_17", 1 0, L_0x62399cd75a50;  1 drivers
v0x62399cd72690_0 .net *"_ivl_3", 1 0, L_0x62399cd755c0;  1 drivers
L_0x73578ef6d2a0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x62399cd72770_0 .net *"_ivl_6", 0 0, L_0x73578ef6d2a0;  1 drivers
v0x62399cd72850_0 .net *"_ivl_7", 1 0, L_0x62399cd756b0;  1 drivers
v0x62399cd72930_0 .net "a", 0 0, L_0x62399cd75b90;  1 drivers
v0x62399cd72a80_0 .net "b", 0 0, L_0x62399cd75d10;  1 drivers
v0x62399cd72b40_0 .net "cin", 0 0, L_0x62399cd74a20;  alias, 1 drivers
v0x62399cd72be0_0 .net "cout", 0 0, L_0x62399cd753e0;  alias, 1 drivers
v0x62399cd72c80_0 .net "sum", 0 0, L_0x62399cd754d0;  1 drivers
L_0x62399cd753e0 .part L_0x62399cd75a50, 1, 1;
L_0x62399cd754d0 .part L_0x62399cd75a50, 0, 1;
L_0x62399cd755c0 .concat [ 1 1 0 0], L_0x62399cd75b90, L_0x73578ef6d2a0;
L_0x62399cd756b0 .concat [ 1 1 0 0], L_0x62399cd75d10, L_0x73578ef6d2e8;
L_0x62399cd757a0 .arith/sum 2, L_0x62399cd755c0, L_0x62399cd756b0;
L_0x62399cd758e0 .concat [ 1 1 0 0], L_0x62399cd74a20, L_0x73578ef6d330;
L_0x62399cd75a50 .arith/sum 2, L_0x62399cd757a0, L_0x62399cd758e0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "rca.v";
