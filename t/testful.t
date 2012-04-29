use Test::Most;
use Test::WWW::Selenium::More;
use WWW::Selenium::Util qw/server_is_running/;

use lib 'lib';

plan skip_all => "No Selenium server found!" 
    unless server_is_running;

my $s = Test::WWW::Selenium::More->new(
    host           => "localhost",
    browser        => "*firefox",
    browser_url    => "http://localhost:5000",
);
$s->open_ok('/');
$s->is_text_present_ok('Smells like dinosaurs');
$s->stop;

done_testing;
