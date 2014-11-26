use strict;
use warnings;
use WebService::Rakuten::API;
use Encode;

my $rakuten = new WebService::Rakuten::API->new();

use Data::Dumper;

my $rakuten = $rakuten->response;

print Dumper $rakuten;


