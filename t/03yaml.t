use Test;
plan( tests => 1 );

eval "use YAML qw( LoadFile )";
if ($@) {
    skip( "YAML required to test META.yml's syntax", 1 );
}
else {
    ok( LoadFile("META.yml") );
}
