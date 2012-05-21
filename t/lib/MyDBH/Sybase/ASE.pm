package MyDBH::Sybase::ASE;
use base 'MyDBH::Sybase';

sub new {
  my $self = shift->SUPER::new;
  bless $self;
}

sub selectrow_arrayref {
  return [ 'foo', 'bar', 'SQL Server' ];
}

1;
