package Halx::Role::DateTime;


use 5.016;
use warnings;
use Moose;
use namespace::autoclean;

=head1 NAME

Halx::Role::DateTime - uses the DateTime roles for testing

=cut

use Halx::Role::DateTime::EndDate;
use Halx::Role::DateTime::EndTime;
use Halx::Role::DateTime::ParamEndDate;
use Halx::Role::DateTime::ParamStartDate;
use Halx::Role::DateTime::StartDate;
use Halx::Role::DateTime::StartTime;



__PACKAGE__->meta->make_immutable;
no Moose;

__END__


=head1 VERSION

$Id$

=head1 AUTHOR

Harold Frayman, C<< <harold.frayman at gmail.com> >>

=head1 LICENCE AND COPYRIGHT

Copyright 2012-2018 Harold Frayman.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut
