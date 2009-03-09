# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 7; $^W = 1; }
use B::Keywords;

#########################

ok( @B::Keywords::Scalars );
ok( @B::Keywords::Arrays );
ok( @B::Keywords::Hashes );
ok( @B::Keywords::Filehandles );
ok( @B::Keywords::Symbols );
ok( @B::Keywords::Functions );
ok( @B::Keywords::Barewords );

