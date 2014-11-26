package WebService::Rakuten::API::Travel;

use strict;
use warnings;
use utf8;
use Carp;
use Encode;

use constant BASEURL => 'https://app.rakuten.co.jp/services/api/Travel/SimpleHotelSearch/20131024';

sub url{
 my($self)= @_;
 my $ua = LWP::UserAgent->new;
 my $url = URI->new(BASEURL);
 $url->query_form(applicationId => '1094713744828153190',format=>'json',largeClassCode=> 'japan',middleClassCode => 'akita',smallClassCode => 'tazawa');
 return $url;
}

1;
