package DBIx::IntrospectDBH::Sybase;
use Moo::Role;

around BUILD => sub {
  my $orig = shift;
  my $self = shift;
  #Moo::Role->apply_roles_to_object($self, qw(DBIx::IntrospectDBH::Sybase::ASE));
  $self->$orig(@_);
};

1;
