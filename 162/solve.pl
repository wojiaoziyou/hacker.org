#!/usr/bin/perl

use strict;
use warnings;

# k = {unknown byte}
# for (i = 0; i < len(txt); i++)
#   c = txt[i] ^ k
#   print c
#   k = c

my @crypt = (0x75, 0x1a, 0x6f, 0x1d, 0x3d, 0x5c, 0x32,
             0x41, 0x36, 0x53, 0x21, 0x01, 0x6c, 0x05,
             0x62, 0x0a, 0x7e, 0x5e, 0x34, 0x41, 0x32,
             0x46, 0x66, 0x04, 0x61, 0x41, 0x2e, 0x5a,
             0x2e, 0x41, 0x2c, 0x49, 0x25, 0x4a, 0x24);

my @msg = ();

for(my $i = (@crypt - 1); $i > 0; $i--) {
    push(@msg, $crypt[$i] ^ $crypt[$i - 1]);
}

foreach(reverse(@msg)) {
    print(chr($_));
}

print "\n";
