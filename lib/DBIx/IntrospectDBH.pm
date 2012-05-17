package DBIx::IntrospectDBH;
use Moo;
use Moo::Role ();
use Exporter::Declare;
use Try::Tiny;
use DBI::Const::GetInfoType ();

exports qw(introspect);

sub introspect {
  print "foobar\n";
}

1;
