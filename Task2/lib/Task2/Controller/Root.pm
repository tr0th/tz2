package Task2::Controller::Root;
use Moose;
use namespace::autoclean;
use FindBin;                     
use lib "$FindBin::RealBin/.."; 
use Modules::Cat;

BEGIN { extends 'Catalyst::Controller' }

__PACKAGE__->config(namespace => '');

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    # $c->response->body( $c->welcome_message );
    $c->res->redirect('/my_cat');
}

my $pet = new Modules::Cat("Pussvila", "Short", "Carnivorous", "female");

sub my_cat :Local {
    my ($self, $c) = @_;

    $c->stash(

        nme => $pet->get_name(),
        gender => $pet->get_gender(),
        sound => $pet->make_sound(),
        eat => $pet->eat(),
        template => 'index.tt',        
    );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

sub end : ActionClass('RenderView') {}

__PACKAGE__->meta->make_immutable;

1;
