#!/usr/bin/env perl #-T

use 5.016;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

package EndTest {
use Moose;

with 'Halx::Role::DateTime::ParamEndDate', {default => 10};

__PACKAGE__->meta->make_immutable;
no Moose;

};

my ($d, $m, $y) = (localtime(time + 10*24*60*60))[3..5];
# $d += 10; # the default end
$m += 1; # count from zero
$y += 1900; # count from 1900
my $ds_expected  = sprintf '%d-%02d-%02d', $y, $m, $d;
my $test = EndTest->new;
is($test->end->date, $ds_expected);

diag( "Testing Halx::Role::DateTime::ParamEndDate" );

