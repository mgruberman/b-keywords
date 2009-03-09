use strict;
BEGIN { $^W = 1 }
use Test;
BEGIN { plan tests => 1 }

use Config;
use File::Spec;
use lib qw( ../lib lib );
use B::Keywords qw( @Symbols @Functions @Barewords );

my $keywords = File::Spec->catfile( $Config{archlibexp}, 'CORE', 'keywords.h' );
open FH, "< $keywords\0" or die "Can't open $keywords: $!";
local $/;
chomp( my @keywords = <FH> =~ /^\#define \s+ KEY_(\S+) /xmsg );
close FH;

my %covered;
@covered{ @Symbols } = ();
@covered{ @Functions } = ();
@covered{ @Barewords } = ();

my @missing = grep { ! exists $covered{$_} } @keywords;

ok( ! @missing );
if ( @missing ) {
    diag( "Missing: @missing" );
}
