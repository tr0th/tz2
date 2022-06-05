package Task2::View::Cat;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

Task2::View::Cat - TT View for Task2

=head1 DESCRIPTION

TT View for Task2.

=head1 SEE ALSO

L<Task2>

=head1 AUTHOR

tr0th,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
