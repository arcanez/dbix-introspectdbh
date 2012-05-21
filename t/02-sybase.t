use Test::More;
use DBIx::IntrospectDBH 'introspect';
use FindBin qw($Bin);
use lib "$Bin/lib";
use MyDBH::Sybase;

my $dbh = MyDBH::Sybase->new;
my $result = introspect($dbh);

ok($result->does('DBIx::IntrospectDBH::Sybase'));
is($result->driver->{Name}, 'Sybase');
is($result->server_version, '4.9');

done_testing;
