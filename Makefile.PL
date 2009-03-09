#!perl -w
# $Id: /src/B-Keywords/trunk/Makefile.PL 189 2006-08-17T14:36:23.798783Z josh  $

use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'          => 'B::Keywords',
    'VERSION_FROM'  => 'lib/B/Keywords.pm',
    'ABSTRACT_FROM' => 'lib/B/Keywords.pm',
    'AUTHOR'        => 'Joshua ben Jore <jjore@cpan.org>',
);
