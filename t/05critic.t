#!perl
# $Id: /src/B-Keywords/trunk/t/05critic.t 188 2006-08-17T14:35:42.213094Z josh  $
use Test::More;

if ( not $ENV{AUTHOR_TESTS} ) {
    plan skip_all => 'Skipping author tests';
}
else {
    require Test::Perl::Critic;
    Test::Perl::Critic->import( -severity => 1 );
    all_critic_ok();
}
