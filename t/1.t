# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 8;
BEGIN { use_ok('B::Keywords') };

#########################

ok( @B::Keywords::Scalars );
ok( @B::Keywords::Arrays );
ok( @B::Keywords::Hashes );
ok( @B::Keywords::Filehandles );
ok( @B::Keywords::Symbols );
ok( @B::Keywords::Functions );
ok( @B::Keywords::Barewords );

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

