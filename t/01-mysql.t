use Test::More;
use DBIx::IntrospectDBH 'introspect';
use FindBin qw($Bin);
use lib "$Bin/lib";
use MyDBH::mysql;

my $dbh = MyDBH::mysql->new;
my $result = introspect($dbh);

ok($result->does('DBIx::IntrospectDBH::mysql'));
is($result->driver->{Name}, 'mysql');
is($result->server_version, '5.5.23-2');

done_testing;
