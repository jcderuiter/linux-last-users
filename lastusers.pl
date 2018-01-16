#!/usr/bin/perl
use strict;

my %group = map { reverse(/(.+?):.*?:(\d+)/) } `cat /etc/group`;
my %gecos;
my %gid;
my %directory;
for (`cat /etc/passwd`)
{
   next unless (/(.+?):.*?:.*?:(\d+):(.*?):(.*?):/);
   $gecos{$1}     = $3;
   $gid{$1}       = $2;
   $directory{$1} = $4;
}

foreach (reverse(`last -i`))
{
   my ($last, $uid) = (/((\S+).*)$/);
   print "$last";
   printf("\t%-40s\t%-8s\t%s", $gecos{$uid}, $group{$gid{$uid}}, $directory{$uid}) if (defined($gid{$uid}));
   print "\n";
}
