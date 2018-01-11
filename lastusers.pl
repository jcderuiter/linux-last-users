#!/usr/bin/perl
use strict;

my @passwd  = `cat /etc/passwd`;
my %name    = map { split(/:/); $_[0] => $_[4] } @passwd;
my %homedir = map { split(/:/); $_[0] => $_[5] } @passwd;

foreach (`last`)
{
   my ($last, $uid) = (/((\S+).*)$/);
   my $homedir      = $homedir{$uid} || '';
   my $name         = $name{$uid}    || sprintf $uid if ($homedir);
   printf "$last\t%-40s\t$homedir\n", $name;
}
