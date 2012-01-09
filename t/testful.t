use Test::Most;
use Test::WWW::Selenium::More;
use WWW::Selenium::Util qw/server_is_running/;

plan skip_all => "No Selenium server found!" unless server_is_running;

my $s = Test::WWW::Selenium->new(
    host           => "localhost",
    browser        => "*firefox",
    browser_url    => "http://google.com",
);
$s->open_ok('http://google.com/');
$s->is_text_present_ok('Google');
$s->stop;

done_testing;
