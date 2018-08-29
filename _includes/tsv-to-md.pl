#!/usr/bin/perl

while(<>) {
    s/\s+$//;
    s/\"//g;
    @f = split /\t/;
    if($f[0] eq "Title") {
	pop @f;
	print join("|", @f), "\n";
    } else {
	print join("|", @f[0..2], sprintf("[%s](%s)", @f[3..4])), "\n";
    }
}

