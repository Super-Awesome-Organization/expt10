function [out] = subByte(in)
%SUBBYTE Summary of this function goes here
%   Detailed explanation goes here

switch (in)
    case 0x00
	out = 0x63;
case 0x01
	out = 0x7c;
case 0x02
	out = 0x77;
case 0x03
	out = 0x7b;
case 0x04
	out = 0xf2;
case 0x05
	out = 0x6b;
case 0x06
	out = 0x6f;
case 0x07
	out = 0xc5;
case 0x08
	out = 0x30;
case 0x09
	out = 0x01;
case 0x0a
	out = 0x67;
case 0x0b
	out = 0x2b;
case 0x0c
	out = 0xfe;
case 0x0d
	out = 0xd7;
case 0x0e
	out = 0xab;
case 0x0f
	out = 0x76;
case 0x10
	out = 0xca;
case 0x11
	out = 0x82;
case 0x12
	out = 0xc9;
case 0x13
	out = 0x7d;
case 0x14
	out = 0xfa;
case 0x15
	out = 0x59;
case 0x16
	out = 0x47;
case 0x17
	out = 0xf0;
case 0x18
	out = 0xad;
case 0x19
	out = 0xd4;
case 0x1a
	out = 0xa2;
case 0x1b
	out = 0xaf;
case 0x1c
	out = 0x9c;
case 0x1d
	out = 0xa4;
case 0x1e
	out = 0x72;
case 0x1f
	out = 0xc0;
case 0x20
	out = 0xb7;
case 0x21
	out = 0xfd;
case 0x22
	out = 0x93;
case 0x23
	out = 0x26;
case 0x24
	out = 0x36;
case 0x25
	out = 0x3f;
case 0x26
	out = 0xf7;
case 0x27
	out = 0xcc;
case 0x28
	out = 0x34;
case 0x29
	out = 0xa5;
case 0x2a
	out = 0xe5;
case 0x2b
	out = 0xf1;
case 0x2c
	out = 0x71;
case 0x2d
	out = 0xd8;
case 0x2e
	out = 0x31;
case 0x2f
	out = 0x15;
case 0x30
	out = 0x04;
case 0x31
	out = 0xc7;
case 0x32
	out = 0x23;
case 0x33
	out = 0xc3;
case 0x34
	out = 0x18;
case 0x35
	out = 0x96;
case 0x36
	out = 0x05;
case 0x37
	out = 0x9a;
case 0x38
	out = 0x07;
case 0x39
	out = 0x12;
case 0x3a
	out = 0x80;
case 0x3b
	out = 0xe2;
case 0x3c
	out = 0xeb;
case 0x3d
	out = 0x27;
case 0x3e
	out = 0xb2;
case 0x3f
	out = 0x75;
case 0x40
	out = 0x09;
case 0x41
	out = 0x83;
case 0x42
	out = 0x2c;
case 0x43
	out = 0x1a;
case 0x44
	out = 0x1b;
case 0x45
	out = 0x6e;
case 0x46
	out = 0x5a;
case 0x47
	out = 0xa0;
case 0x48
	out = 0x52;
case 0x49
	out = 0x3b;
case 0x4a
	out = 0xd6;
case 0x4b
	out = 0xb3;
case 0x4c
	out = 0x29;
case 0x4d
	out = 0xe3;
case 0x4e
	out = 0x2f;
case 0x4f
	out = 0x84;
case 0x50
	out = 0x53;
case 0x51
	out = 0xd1;
case 0x52
	out = 0x00;
case 0x53
	out = 0xed;
case 0x54
	out = 0x20;
case 0x55
	out = 0xfc;
case 0x56
	out = 0xb1;
case 0x57
	out = 0x5b;
case 0x58
	out = 0x6a;
case 0x59
	out = 0xcb;
case 0x5a
	out = 0xbe;
case 0x5b
	out = 0x39;
case 0x5c
	out = 0x4a;
case 0x5d
	out = 0x4c;
case 0x5e
	out = 0x58;
case 0x5f
	out = 0xcf;
case 0x60
	out = 0xd0;
case 0x61
	out = 0xef;
case 0x62
	out = 0xaa;
case 0x63
	out = 0xfb;
case 0x64
	out = 0x43;
case 0x65
	out = 0x4d;
case 0x66
	out = 0x33;
case 0x67
	out = 0x85;
case 0x68
	out = 0x45;
case 0x69
	out = 0xf9;
case 0x6a
	out = 0x02;
case 0x6b
	out = 0x7f;
case 0x6c
	out = 0x50;
case 0x6d
	out = 0x3c;
case 0x6e
	out = 0x9f;
case 0x6f
	out = 0xa8;
case 0x70
	out = 0x51;
case 0x71
	out = 0xa3;
case 0x72
	out = 0x40;
case 0x73
	out = 0x8f;
case 0x74
	out = 0x92;
case 0x75
	out = 0x9d;
case 0x76
	out = 0x38;
case 0x77
	out = 0xf5;
case 0x78
	out = 0xbc;
case 0x79
	out = 0xb6;
case 0x7a
	out = 0xda;
case 0x7b
	out = 0x21;
case 0x7c
	out = 0x10;
case 0x7d
	out = 0xff;
case 0x7e
	out = 0xf3;
case 0x7f
	out = 0xd2;
case 0x80
	out = 0xcd;
case 0x81
	out = 0x0c;
case 0x82
	out = 0x13;
case 0x83
	out = 0xec;
case 0x84
	out = 0x5f;
case 0x85
	out = 0x97;
case 0x86
	out = 0x44;
case 0x87
	out = 0x17;
case 0x88
	out = 0xc4;
case 0x89
	out = 0xa7;
case 0x8a
	out = 0x7e;
case 0x8b
	out = 0x3d;
case 0x8c
	out = 0x64;
case 0x8d
	out = 0x5d;
case 0x8e
	out = 0x19;
case 0x8f
	out = 0x73;
case 0x90
	out = 0x60;
case 0x91
	out = 0x81;
case 0x92
	out = 0x4f;
case 0x93
	out = 0xdc;
case 0x94
	out = 0x22;
case 0x95
	out = 0x2a;
case 0x96
	out = 0x90;
case 0x97
	out = 0x88;
case 0x98
	out = 0x46;
case 0x99
	out = 0xee;
case 0x9a
	out = 0xb8;
case 0x9b
	out = 0x14;
case 0x9c
	out = 0xde;
case 0x9d
	out = 0x5e;
case 0x9e
	out = 0x0b;
case 0x9f
	out = 0xdb;
case 0xa0
	out = 0xe0;
case 0xa1
	out = 0x32;
case 0xa2
	out = 0x3a;
case 0xa3
	out = 0x0a;
case 0xa4
	out = 0x49;
case 0xa5
	out = 0x06;
case 0xa6
	out = 0x24;
case 0xa7
	out = 0x5c;
case 0xa8
	out = 0xc2;
case 0xa9
	out = 0xd3;
case 0xaa
	out = 0xac;
case 0xab
	out = 0x62;
case 0xac
	out = 0x91;
case 0xad
	out = 0x95;
case 0xae
	out = 0xe4;
case 0xaf
	out = 0x79;
case 0xb0
	out = 0xe7;
case 0xb1
	out = 0xc8;
case 0xb2
	out = 0x37;
case 0xb3
	out = 0x6d;
case 0xb4
	out = 0x8d;
case 0xb5
	out = 0xd5;
case 0xb6
	out = 0x4e;
case 0xb7
	out = 0xa9;
case 0xb8
	out = 0x6c;
case 0xb9
	out = 0x56;
case 0xba
	out = 0xf4;
case 0xbb
	out = 0xea;
case 0xbc
	out = 0x65;
case 0xbd
	out = 0x7a;
case 0xbe
	out = 0xae;
case 0xbf
	out = 0x08;
case 0xc0
	out = 0xba;
case 0xc1
	out = 0x78;
case 0xc2
	out = 0x25;
case 0xc3
	out = 0x2e;
case 0xc4
	out = 0x1c;
case 0xc5
	out = 0xa6;
case 0xc6
	out = 0xb4;
case 0xc7
	out = 0xc6;
case 0xc8
	out = 0xe8;
case 0xc9
	out = 0xdd;
case 0xca
	out = 0x74;
case 0xcb
	out = 0x1f;
case 0xcc
	out = 0x4b;
case 0xcd
	out = 0xbd;
case 0xce
	out = 0x8b;
case 0xcf
	out = 0x8a;
case 0xd0
	out = 0x70;
case 0xd1
	out = 0x3e;
case 0xd2
	out = 0xb5;
case 0xd3
	out = 0x66;
case 0xd4
	out = 0x48;
case 0xd5
	out = 0x03;
case 0xd6
	out = 0xf6;
case 0xd7
	out = 0x0e;
case 0xd8
	out = 0x61;
case 0xd9
	out = 0x35;
case 0xda
	out = 0x57;
case 0xdb
	out = 0xb9;
case 0xdc
	out = 0x86;
case 0xdd
	out = 0xc1;
case 0xde
	out = 0x1d;
case 0xdf
	out = 0x9e;
case 0xe0
	out = 0xe1;
case 0xe1
	out = 0xf8;
case 0xe2
	out = 0x98;
case 0xe3
	out = 0x11;
case 0xe4
	out = 0x69;
case 0xe5
	out = 0xd9;
case 0xe6
	out = 0x8e;
case 0xe7
	out = 0x94;
case 0xe8
	out = 0x9b;
case 0xe9
	out = 0x1e;
case 0xea
	out = 0x87;
case 0xeb
	out = 0xe9;
case 0xec
	out = 0xce;
case 0xed
	out = 0x55;
case 0xee
	out = 0x28;
case 0xef
	out = 0xdf;
case 0xf0
	out = 0x8c;
case 0xf1
	out = 0xa1;
case 0xf2
	out = 0x89;
case 0xf3
	out = 0x0d;
case 0xf4
	out = 0xbf;
case 0xf5
	out = 0xe6;
case 0xf6
	out = 0x42;
case 0xf7
	out = 0x68;
case 0xf8
	out = 0x41;
case 0xf9
	out = 0x99;
case 0xfa
	out = 0x2d;
case 0xfb
	out = 0x0f;
case 0xfc
	out = 0xb0;
case 0xfd
	out = 0x54;
case 0xfe
	out = 0xbb;
case 0xff
	out = 0x16;
end    



end
