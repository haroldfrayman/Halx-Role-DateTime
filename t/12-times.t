#!/usr/bin/env perl #-T

use 5.016;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 6;
# should contain lots more tests
package TimesTest {
  use Moose;

  with 'Halx::Role::DateTime::StartTime', 'Halx::Role::DateTime::EndTime';

  __PACKAGE__->meta->make_immutable;
  no Moose;
};

my ($S, $M, $H, $d, $m, $y) = (localtime(time + 10*24*60*60))[0..5];
$y += 1900; # count from 1900
$m++;
my @start = (
  sprintf ("%4d-%02d-%02d %02d:%02d:%02d", $y, $m, $d, $H, $M, $S),
  sprintf ("%4d-%02d-%02dT%02d:%02d:%02d", $y, $m, $d, $H, $M, $S),
);

my @end  = (
  sprintf ("%4d-%02d-%02d %02d:%02d:%02d", $y, $m, $d + 1, $H, ($M + 30)%60, $S),
  sprintf ("%4d-%02d-%02dT%02d:%02d:%02d", $y, $m, $d + 1, $H, ($M + 30)%60, $S),
);

for (0..1) {
  my $start = $start[$_];
  my $end   = $end[$_];
  my $test  = TimesTest->new(
    start => $start,
    end   => $end,
  );
  my $T = $_ == 0 ? ' ' : 'T';
  is($test->start->strftime("%F$T%T"), $start);
  is($test->end->strftime("%F$T%T"), $end);
  my $diff = $test->end - $test->start;
  is($diff->minutes, 30);
}

diag( "Testing Halx::Role::DateTime::StartTime and Halx::Role::DateTime::EndTime" );

