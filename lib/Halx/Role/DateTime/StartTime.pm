package Halx::Role::DateTime::StartTime;

use Moose::Role;
use Moose::Util::TypeConstraints;

use Halx::DateFormat;
use Halx::Type::DateTime;

# with 'MooseX::Getopt';
# MooseX::Getopt::OptionTypeMap->add_option_type_to_map(
#       'Halx::DateTime' => '=s'
#   );
#
has 'start' => (
  is => 'rw',
  isa => 'Halx::IsoDate',
  coerce => 1,
#   traits => [qw/Getopt/],
#   cmd_aliases => [qw/s/],
  documentation => 'A start datetime in iso format yyyy-mm-dd[T| ]HH:MM::SS',
);

no Moose::Role;
1;

__END__

=head1 NAME

Halx::Role::DateTime::StartDate - a Halx::DateTime with getopt alias 's'

=head1 USAGE

with 'Halx::Role::DateTime::StartDate';

=head1 VERSION

$Id: StartDate.pm 1782 2015-07-31 11:25:13Z harold_frayman $

=cut
