use strict;
use warnings;
use utf8;
use FindBin;
use lib "$FindBin::Bin/../lib";
use WebService::Rakuten::API;
use Data::Dumper;

my $rakuten = WebService::Rakuten::API->new(
  appid => '1094713744828153190',
);




print Dumper $rakuten->travel({apiname => 'hotel',largeClassCode=> 'japan',middleClassCode => 'akita',smallClassCode => 'tazawa'})
