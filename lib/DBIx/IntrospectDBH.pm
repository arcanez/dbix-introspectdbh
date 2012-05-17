package DBIx::IntrospectDBH;
use Moo;
use Moo::Role ();
use Exporter::Declare;

exports qw(introspect);

sub introspect {
  print "foobar\n";
}

1;
