#!/usr/bin/perl

use strict;
use warnings;

my @bytes = (0x87,0x76,0x45,0x9c,0xf3,0x7d,0x45,0x9f,0xbb,0x7b,0x5e,0xcf,0xbb,
             0x7f,0x5f,0xcf,0xb2,0x3e,0x47,0x8a,0xaa,0x3e,0x43,0x89,0xf3,0x78,
             0x43,0x9a,0xa1,0x3e,0x4e,0x96,0xa7,0x7b,0x5f,0xc1,0xf3,0x58,0x43,
             0x9d,0xf3,0x6a,0x44,0x86,0xa0,0x3e,0x43,0x81,0xb6,0x3e,0x55,0x80,
             0xa6,0x6c,0x0c,0x8e,0xbd,0x6d,0x5b,0x8a,0xa1,0x3e,0x45,0x9c,0xf3,
             0x4e,0x4d,0x9f,0xa6,0x7f,0x02,0xcf,0x90,0x71,0x42,0x88,0xa1,0x7f,
             0x58,0x9a,0xbf,0x7f,0x58,0x86,0xbc,0x70,0x5f,0xcf,0xbc,0x70,0x0c,
             0x96,0xbc,0x6b,0x5e,0xcf,0xb7,0x77,0x5f,0x8c,0xbc,0x68,0x49,0x9d,
             0xaa,0x3f);

my $a = 211;
my $b = 30;
my $c = 44;
my $d = 239;

my $msg = "";
for(my $i = 0; $i < @bytes; $i += 4) {
    my $byte_a = $a ^ $bytes[$i];
    my $byte_b = $b ^ $bytes[$i+1];
    
    last unless($bytes[$i+2]);
    my $byte_c = $c ^ $bytes[$i+2];
    my $byte_d = $d ^ $bytes[$i+3];
    $msg .= chr($byte_a) . chr($byte_b) . chr($byte_c) . chr($byte_d);
}

print("$msg\n");