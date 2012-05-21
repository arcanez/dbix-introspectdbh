package MyDBH::Sybase;

sub new {
  my $self = { Driver => { Name => 'Sybase' } };
  bless $self;
}

my %INFO = ( 18 => '4.9' );

sub get_info { $INFO{$_[1]} }

sub selectrow_arrayref {
  return [ 'foo', 'bar', '' ];
}

1;
