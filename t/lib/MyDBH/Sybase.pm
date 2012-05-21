package MyDBH::Sybase;

sub new {
  my $self = { Driver => { Name => 'Sybase' } };
  bless $self;
  return $self;
}

my %INFO = ( 18 => '4.9' );

sub get_info { $INFO{$_[1]} }

1;
