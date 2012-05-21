package DBIx::IntrospectDBH::Sybase::ASE;
use Moo::Role;

has server_version => (
  is => 'ro',
  lazy => 1,
  default => sub { 4.9 },
);

1;
