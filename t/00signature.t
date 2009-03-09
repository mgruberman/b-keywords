#!perl
eval "use Test::Signature";
if ($@) {
    eval "use Test";
    plan( tests => 1 );
    skip( "Test::Signature required to test signature", 1 );
}
else {
    eval "use Test::More";
    plan( tests => 1 );
    signature_ok();
}
