#!/usr/bin/perl

# Title, Date, Location, Job Details, URL
while(<>) {
    s/\s+$//;
    s/\"//g;
    @f = split /\t/;
    if($f[0] eq "Title") {
	push @jobs, [ map { "**$_**" } @f ];
    } else {
	push @jobs, [ @f[0..2], sprintf("[%s](%s)", @f[3..4]), @f[4] ];
    }
}

print map { join(" | ", @{$_}[0,2,3]) . "\n" } @jobs
