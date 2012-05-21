use Test::More;
use DBIx::IntrospectDBH 'introspect';
use FindBin qw($Bin);
use lib "$Bin/lib";

{
  use MyDBH::Sybase;
  my $dbh = MyDBH::Sybase->new;
  my $result = introspect($dbh);

  ok($result->does('DBIx::IntrospectDBH::Sybase'));
  is($result->driver->{Name}, 'Sybase');
  is($result->server_version, '4.9');
}

{
  use MyDBH::Sybase::ASE;
  my $dbh = MyDBH::Sybase::ASE->new;
  my $result = introspect($dbh);

  ok($result->does('DBIx::IntrospectDBH::Sybase::ASE'));
  is($result->driver->{Name}, 'Sybase');
  is($result->server_version, '4.9');
}

{
  use MyDBH::Sybase::Microsoft_SQL_Server;
  my $dbh = MyDBH::Sybase::Microsoft_SQL_Server->new;
  my $result = introspect($dbh);

  ok($result->does('DBIx::IntrospectDBH::Sybase::Microsoft_SQL_Server'));
  is($result->driver->{Name}, 'Sybase');
  is($result->server_version, '4.9');
}

done_testing;
