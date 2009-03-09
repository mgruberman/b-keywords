#!perl
# $Id: /B-Keywords/trunk/t/01pod.t 75 2006-08-17T14:35:42.213094Z josh  $
use Test::More;

if ( not $ENV{AUTHOR_TESTS} ) {
    plan skip_all => 'Skipping author tests';
}
else {
    eval "use Test::Pod 1.14";
    die $@ if $@;
    all_pod_files_ok();
}
