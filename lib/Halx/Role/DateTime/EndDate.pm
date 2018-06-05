package Halx::Role::DateTime::EndDate;

use Moose::Role;
use Moose::Util::TypeConstraints;

use Halx::DateFormat;
use Halx::Type::DateTime;

with 'MooseX::Getopt';
MooseX::Getopt::OptionTypeMap->add_option_type_to_map(
      'Halx::DateTime' => '=s'
  );

has 'end' => (
  is => 'rw',
  isa => 'Halx::DateTime',
  coerce => 1,
  traits => [qw/Getopt/],
  cmd_aliases => [qw/e/],
  documentation => 'An end date [[[YY]YY]MM]DD] or days from now, N < 400',
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
