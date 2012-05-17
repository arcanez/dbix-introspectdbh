package MyDBH::mysql;

sub new {
  my $self = { Driver => { Name => 'mysql' } };
  bless $self;
  return $self;
}

my %INFO = ( 18 => '5.5.23-2' );

sub get_info { $INFO{$_[1]} }

1;
