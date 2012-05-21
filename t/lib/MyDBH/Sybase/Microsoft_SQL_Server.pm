package MyDBH::Sybase::Microsoft_SQL_Server;
use base 'MyDBH::Sybase';

sub new {
  my $self = shift->SUPER::new;
  bless $self;
}

sub selectrow_arrayref {
  return [ 'foo', 'bar', 'Microsoft SQL Server' ];
}

1;
