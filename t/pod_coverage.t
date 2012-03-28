use Test::Most;
use Test::Pod::Coverage 1.00;
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
pod_coverage_ok('Test::WWW::Selenium::More');
done_testing;
