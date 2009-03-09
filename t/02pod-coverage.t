use Test;
eval "use Test::Pod::Coverage 1.04";
if ($@) {
    plan( tests => 1 );
    skip( "Test::Pod::Coverage 1.04 required for testing POD coverage", 1 );
}
else {
    all_pod_coverage_ok();
}
