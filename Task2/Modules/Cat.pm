package Modules::Cat;
use Modules::Animal;
use strict;
use Moose;
our @ISA = qw(Modules::Animal);

sub new {
    my ($class) = @_;

    my $self = $class->SUPER::new($_[1], $_[2], $_[3], $_[4]);
    $self->{_breed} = undef;

    bless $self, $class;
    return $self;
}

sub make_sound {
    my ($self) = shift;
    my $parent_meth = $self->SUPER::make_sound();
    return "Meow $parent_meth";
}
1;