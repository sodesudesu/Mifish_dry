#!/usr/bin/perl
use v5.10;

foreach (<STDIN>) {
  chomp;

  tr/ATCGatcg/TAGCtagc/;
  my $rev_comp = reverse $_;

  say $rev_comp;
}
