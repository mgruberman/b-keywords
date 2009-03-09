package B::Keywords;

use strict;
use vars qw(
    @EXPORT_OK %EXPORT_TAGS $VERSION
    @Scalars @Arrays @Hashes @Filehandles @Symbols
    @Functions @Barewords);

require Exporter;
*import    = \&Exporter::import;
@EXPORT_OK = qw( @Scalars @Arrays @Hashes @FileHandles @Symbols
    @Functions @Barewords );
%EXPORT_TAGS = ( all => \@EXPORT_OK );

=head1 NAME

B::Keywords - Lists of reserved barewords and symbol names

=head1 VERSION

Version 1.02

=cut

$VERSION = '1.02';

=head1 SYNOPSIS

  use B::Keywords qw( @Symbols Barewords );
  print join "\n", @Symbols,
                   @Barewords;

=head1 DESCRIPTION

C<B::Keywords> supplies seven arrays of keywords: C<@Scalars>,
C<@Arrays>, C<@Hashes>, C<@Filehandles>, C<@Symbols>, C<@Functions>,
and C<@Barewords>. The C<@Symbols> array includes the contents of each
of C<@Scalars>, C<@Arrays>, C<@Hashes>, and C<@Filehandles>.
Similarly, C<@Barewords> adds a few non-function keywords (like
C<__DATA__> and C<NULL>) to the C<@Functions> array.

All additions and modifications are welcome.

=head1 EXPORT

Anything can be exported if you desire. Use the :all tag to get
everything.

=cut

@Scalars = split q' ', <<'SCALAR';
    $a
    $b
    $_ $ARG
    $& $MATCH
    $` $PREMATCH
    $' $POSTMATCH
    $+ $LAST_PAREN_MATCH
    $* $MULTILINE_MATCHING
    $. $INPUT_LINE_NUMBER $NR
    $/ $INPUT_RECORD_SEPARATOR $RS
    $| $OUTPUT_AUTO_FLUSH
    $, $OUTPUT_FIELD_SEPARATOR $OFS
    $\ $OUTPUT_RECORD_SEPARATOR $ORS
    $" $LIST_SEPARATOR
    $; $SUBSCRIPT_SEPARATOR $SUBSEP
    $# $OFMT
    $% $FORMAT_PAGE_NUMBER
    $= $FORMAT_LINES_PER_PAGE
    $- $FORMAT_LINES_LEFT
    $~ $FORMAT_NAME
    $^ $FORMAT_TOP_NAME
    $: $FORMAT_LINE_BREAK_CHARACTERS
    $? $CHILD_ERROR $^CHILD_ERROR_NATIVE
    $! $ERRNO $OS_ERROR
    $@ $EVAL_ERROR
    $$ $PROCESS_ID $PID
    $< $REAL_USER_ID $UID
    $> $EFFECTIVE_USER_ID $EUID
    $( $REAL_GROUP_ID $GID
    $) $EFFECTIVE_GROUP_ID $EGID
    $0 $PROGRAM_NAME
    $[
    $]
    $^A $ACCUMULATOR
    $^C $COMPILING
    $^D $DEBUGGING
    $^E $EXTENDED_OS_ERROR
    $^ENCODING
    $^F $SYSTEM_FD_MAX
    $^H
    $^I $INPLACE_EDIT
    $^L $FORMAT_FORMFEED
    $^M
    $^N
    $^O $OSNAME
    $^OPEN
    $^P $PERLDB
    $^R $LAST_REGEXP_CODE_RESULT
    $^RE_DEBUG_FLAGS
    $^RE_TRIE_MAXBUF
    $^S $EXCEPTIONS_BEING_CAUGHT
    $^T $BASETIME
    $^TAINT
    $^UNICODE
    $^UTF8LOCALE
    $^V $PERL_VERSION
    $^W $WARNING $^WARNING_BITS
    $^WIDE_SYSTEM_CALLS
    $^X $EXECUTABLE_NAME
    $ARGV
SCALAR

@Arrays = split q' ', <<'ARRAY';
    @+ $LAST_MATCH_END
    @- @LAST_MATCH_START
    @ARGV
    @INC
    @_
ARRAY

@Hashes = split q' ', <<'HASH';
    %OVERLOAD
    %!
    %^H
    %INC
    %ENV
    %SIG
HASH

@Filehandles = split q' ', <<'FILEHANDLE';
    *ARGV ARGV
    ARGVOUT
    STDIN
    STDOUT
    STDERR
FILEHANDLE

@Functions = split q' ', <<'FUNCTION';
    AUTOLOAD
    BEGIN
    DESTROY
    END
    INIT
    CHECK
    abs
    accept
    alarm
    and
    atan2
    bind
    binmode
    bless
    break
    caller
    chdir
    chmod
    chomp
    chop
    chown
    chr
    chroot
    close
    closedir
    cmp
    connect
    continue
    cos
    crypt
    dbmclose
    dbmopen
    default
    defined
    delete
    die
    do
    dump
    each
    else
    elsif
    endgrent
    endhostent
    endnetent
    endprotoent
    endpwent
    endservent
    eof
    eq
    err
    eval
    exec
    exists
    exit
    exp
    fcntl
    fileno
    flock
    for
    foreach
    fork
    format
    formline
    ge
    getc
    getgrent
    getgrgid
    getgrnam
    gethostbyaddr
    gethostbyname
    gethostent
    getlogin
    getnetbyaddr
    getnetbyname
    getnetent
    getpeername
    getpgrp
    getppid
    getpriority
    getprotobyname
    getprotobynumber
    getprotoent
    getpwent
    getpwnam
    getpwuid
    getservbyname
    getservbyport
    getservent
    getsockname
    getsockopt
    given
    glob
    gmtime
    goto
    grep
    gt
    hex
    if
    index
    int
    ioctl
    join
    keys
    kill
    last
    lc
    lcfirst
    le
    length
    link
    listen
    local
    localtime
    log
    lstat
    lt
    m
    map
    mkdir
    msgctl
    msgget
    msgrcv
    msgsnd
    my
    ne
    next
    no
    not
    oct
    open
    opendir
    or
    ord
    our
    pack
    package
    pipe
    pop
    pos
    print
    printf
    prototype
    push
    q
    qq
    qr
    quotemeta
    qw
    qx
    rand
    read
    readdir
    readline
    readlink
    readpipe
    recv
    redo
    ref
    rename
    require
    reset
    return
    reverse
    rewinddir
    rindex
    rmdir
    s
    say
    scalar
    seek
    seekdir
    select
    semctl
    semget
    semop
    send
    setgrent
    sethostent
    setnetent
    setpgrp
    setpriority
    setprotoent
    setpwent
    setservent
    setsockopt
    shift
    shmctl
    shmget
    shmread
    shmwrite
    shutdown
    sin
    sleep
    socket
    socketpair
    sort
    splice
    split
    sprintf
    sqrt
    srand
    stat
    state
    study
    sub
    substr
    symlink
    syscall
    sysopen
    sysread
    sysseek
    system
    syswrite
    tell
    telldir
    tie
    tied
    time
    times
    tr
    truncate
    uc
    ucfirst
    umask
    undef
    unless
    unlink
    unpack
    unshift
    untie
    until
    use
    utime
    values
    vec
    wait
    waitpid
    wantarray
    warn
    when
    while
    write
    x
    xor
    y

    -r -w -x -o
    -R -W -X -O -e -z -s
    -f -d -l -p -S -b -c -t
    -u -g -k
    -T -B
    -M -A -C
FUNCTION

@Barewords = split q' ', <<'BAREWORD';
    NULL
    __FILE__
    __LINE__
    __PACKAGE__
    __DATA__
    __END__
    CORE
    lock
BAREWORD

@Symbols = ( @Scalars, @Arrays, @Hashes, @Filehandles );

=head1 SEE ALSO

keywords.pl from the perl source, L<perlvar>, L<perlfunc>,
L<perldelta>.

=head1 AUTHOR

Joshua ben Jore <jjore@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2006, Joshua ben Jore. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of either:

a) the GNU General Public License as published by the Free Software
   Foundation; version 2, or

b) the "Artistic License" which comes with Perl.

=cut

# This quote is blatantly copied from ErrantStory.com, Michael Poe's
# excellent web comic.
"You know, when you stop and think about it, Cthulhu is a bit a Mary Sue isn't he?"
