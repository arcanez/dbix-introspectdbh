package DBIx::IntrospectDBH::Sybase;
use Moo::Role;

has server_version => (
  is => 'ro',
  lazy => 1,
  default => sub { 'sybase' },
);

around BUILD => sub {
  my $orig = shift;
  my $self = shift;
Moo::Role->apply_roles_to_object($self, qw(DBIx::IntrospectDBH::Sybase::ASE));
  warn 'foobar';
  $self->$orig(@_);
};

1;
