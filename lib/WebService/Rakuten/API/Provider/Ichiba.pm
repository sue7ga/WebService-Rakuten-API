package WebService::Rakuten::API::Provider::Ichiba;
use strict;
use warnings;

use constant BASEICHIBAURL => 'https://app.rakuten.co.jp/services/api/IchibaItem/Search/20140222?';

sub call{
 my($class,$context,$arg) = @_;
 my $url = URI->new(BASEICHIBAURL);
 $url->query_form(applicationId => $context->appid,format=>'json',keyword=>$arg->{keyword});
 my $res = $context->furl->get($url);
}

1;
