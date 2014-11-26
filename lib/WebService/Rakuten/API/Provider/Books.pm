package WebService::Rakuten::API::Provider::Books;
use strict;
use warnings;

use constant BASEBOOKSURL => 'https://app.rakuten.co.jp/services/api/BooksTotal/Search/20130522?';

sub call{
 my($class,$context,$arg) = @_;
 my $url = URI->new(BASEBOOKSURL);
 $url->query_form(applicationId => $context->appid,format=> $arg->{format},keyword=>$arg->{keyword});
 my $res = $context->furl->get($url);
}


1;
