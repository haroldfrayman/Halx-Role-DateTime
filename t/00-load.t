#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Halx::Role::DateTime' ) || print "Bail out!\n";
}

my $version = $Halx::Role::DateTime::VERSION||'';
diag( "Testing Halx::Role::DateTime $version, Perl $], $^X" );
