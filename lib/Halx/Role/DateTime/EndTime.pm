package Halx::Role::DateTime::EndTime;

use Moose::Role;
use Moose::Util::TypeConstraints;

use Halx::DateFormat;
use Halx::Type::DateTime;

has 'end' => (
  is => 'rw',
  isa => 'Halx::IsoDate',
  coerce => 1,
#   traits => [qw/Getopt/],
#   cmd_aliases => [qw/e/],
  documentation => 'An end datetime in iso format yyyy-mm-dd[T| ]HH:MM::SS',
);

no Moose::Role;
1;

__END__

=head1 NAME

Halx::Role::DateTime::EndDate - a Halx::DateTime with getopt alias 's'

=head1 USAGE

with 'Halx::Role::DateTime::EndDate';

=head1 VERSION

$Id: EndDate.pm 1782 2015-07-31 11:25:13Z harold_frayman $

=cut
