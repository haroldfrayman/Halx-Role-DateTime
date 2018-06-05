package Halx::Role::DateTime::ParamStartDate;

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


role {
  my $p = shift;

  has 'start' => (
    is => 'rw',
    isa => 'Halx::DateTime',
    coerce => 1,
    traits => [qw/Getopt/],
    cmd_aliases => [qw/s/],
    documentation => 'A start date [[[YY]YY]MM]DD] or days from now, N < 400',
    default => sub { $p->default },
  );

};

no MooseX::Role::Parameterized;
1;

__END__

=head1 NAME

Halx::Role::DateTime::ParamStartDate - a Halx::DateTime with parameter default and getopt alias 's'

=head1 USAGE

with 'Halx::Role::DateTime::ParamStartDate' => {default => <default_value_string>};

=head1 VERSION

$Id: ParamStartDate.pm 2036 2016-01-01 20:20:24Z harold_frayman $

=cut
