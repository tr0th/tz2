use strict;
use warnings;
use Moose;

package Modules::Animal;

sub new {
    my $class = shift;
    my $self = {
        _name => shift,
        _wool => shift,
        _detachment => shift,
        _gender => shift
    };

    bless $self, $class;
    return $self;
}

sub make_sound {
    return "Sound!";
}

sub eat {
    my ($self) = shift;
    if($self->{_detachment} eq "Carnivorous") {
        return "eating meat";
    }
    elsif($self->{_detachment} eq "Herbivore") {
        return "eating plant";
    }
    else {
        return "eating what was found";
    }
}

sub get_gender {
    my ($self) = shift;
    return $self->{_gender};
}

sub get_name {
    my ($self) = shift;
    return $self->{_name};
}

1;