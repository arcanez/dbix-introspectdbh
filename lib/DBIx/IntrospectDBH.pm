package DBIx::IntrospectDBH;
use Moo;
use Moo::Role ();
use Exporter::Declare;
use Try::Tiny;
use DBI::Const::GetInfoType ();

exports qw(introspect);

has dbh => (
  is => 'ro',
  required => 1,
);

has driver => (
  is => 'ro',
  lazy => 1,
  default => sub { $_[0]->dbh->{Driver} },
);

has engine => (
  is => 'ro',
  lazy => 1,
  default => sub { 'foo' }
);

has separator => (
  is => 'ro',
  lazy => 1,
  default => sub { $_[0]->_dbh_get_info('SQL_QUALIFIER_NAME_SEPARATOR') },
);

has server_version => (
  is => 'ro',
  lazy => 1,
  default => sub { $_[0]->_dbh_get_info('SQL_DBMS_VER') },
);

sub _dbh_get_info {
  my ($self, $info) = @_;

  if ($info =~ /[^0-9]/) {
    $info = $DBI::Const::GetInfoType::GetInfoType{$info};
    die "Info type '$_[1]' not provided by DBI::Const::GetInfoType" unless defined $info;
  }

  return try { $self->dbh->get_info($info) } || undef;
}

sub introspect {
  Moo::Role->create_class_with_roles(__PACKAGE__, "DBIx::IntrospectDBH::$_[0]->{Driver}{Name}")->new( dbh => $_[0] );
}

sub BUILD {}

1;
