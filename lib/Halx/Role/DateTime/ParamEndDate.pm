package Halx::Role::DateTime::ParamEndDate;

use MooseX::Role::Parameterized;
use Moose::Util::TypeConstraints;

use Halx::DateFormat;
use Halx::Type::DateTime;

with 'MooseX::Getopt';
MooseX::Getopt::OptionTypeMap->add_option_type_to_map(
      'Halx::DateTime' => '=s'
  );

parameter 'default' => (
  isa       => 'Str',
  required => 1,
);

# should also include a param for aliases

role {
  my $p = shift;

  has 'end' => (
    is => 'rw',
    isa => 'Halx::DateTime',
    coerce => 1,
    traits => [qw/Getopt/],
    cmd_aliases => [qw/e/],
    documentation => 'An end date [[[YY]YY]MM]DD] or days from now, N < 400',
    default => sub { $p->default },
  );
};

no MooseX::Role::Parameterized;
1;

__END__

=head1 NAME

Halx::Role::DateTime::EndDatew - a Halx::DateTime with parameter default and getopt alias 's'

=head1 USAGE

with 'Halx::Role::DateTime::EndDate';

=head1 VERSION

$Id: ParamEndDate.pm 2036 2016-01-01 20:20:24Z harold_frayman $

=cut
