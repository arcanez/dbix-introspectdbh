package DBIx::IntrospectDBH::Sybase;
use Moo::Role;
use Try::Tiny;

around BUILD => sub {
  my $orig = shift;
  my $self = shift;
  my $dbh = $self->dbh;
  my $dbtype = @{$dbh->selectrow_arrayref()}[2];
  if ($dbtype) {
    $dbtype =~ s/\W/_/gi;
    $dbtype = 'ASE' if $dbtype eq 'SQL_Server';
    my $role = "DBIx::IntrospectDBH::Sybase::$dbtype";
    try { Moo::Role->apply_roles_to_object($self, $role); }
  }
  $self->$orig(@_);
};

1;
