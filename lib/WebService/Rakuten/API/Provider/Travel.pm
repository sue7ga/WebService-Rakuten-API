package WebService::Rakuten::API::Provider::Travel;
use strict;
use warnings;

use constant BASEHOTELURL => 'https://app.rakuten.co.jp/services/api/Travel/SimpleHotelSearch/20131024?';

sub call{
  my ($class,$context,$arg) = @_;
  my $url = URI->new(BASEHOTELURL);
  $url->query_form(applicationId=> $context->appid,format=>'json',largeClassCode => $arg->{largeClassCode},middleClassCode=>$arg->{middleClassCode},smallClassCode=>$arg->{smallClassCode});
 my $res =$context->furl->get($url);
 return $res;
}


1;
