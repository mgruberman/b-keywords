#!perl
use Test;
eval "use Test::Pod";
if ($@) {
    plan( tests => 1 );
    skip( "Test::Pod required for testing POD", 1 );
}
else {
    all_pod_files_ok();
}
