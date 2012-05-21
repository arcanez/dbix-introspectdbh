package DBIx::IntrospectDBH::Sybase::Microsoft_SQL_Server;
use Moo::Role;

has server_version => (
  is => 'ro',
  lazy => 1,
  default => sub { 4.9 },
);

1;
