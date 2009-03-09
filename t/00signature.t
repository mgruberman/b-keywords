#!perl
# $Id: /B-Keywords/trunk/t/00signature.t 75 2006-08-17T14:35:42.213094Z josh  $
use Test::More;

if ( not $ENV{AUTHOR_TESTS} ) {
    plan skip_all => 'Skipping author tests';
}
else {
    plan tests => 1;
    require Test::Signature;
    Test::Signature->import;
    signature_ok();
}
