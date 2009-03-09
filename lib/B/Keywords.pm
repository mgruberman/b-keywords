package B::Keywords;

use strict;
use vars qw(
    $VERSION @Scalars @Arrays @Hashes @Filehandles @Symbols @Functions
    @Barewords);

=head1 NAME

B::Keywords - Lists of reserved barewords and symbol names

=head1 VERSION

Version 1.00

=cut

$VERSION = '1.00';

=head1 SYNOPSIS

  use B::Keywords;
  print join "\n", @B::Keywords::Symbols,
                   @B::Keywords::Barewords;

=head1 DESCRIPTION

B::Keywords supplies seven arrays of keywords: @Scalars, @Arrays,
@Hashes, @Filehandles, @Symbols, @Functions and @Barewords. The
@Symbols array includes the contents of each of @Scalars, @Arrays,
@Hashes and @Filehandles.  Similarly, @Barewords adds a few
non-function keywords (like __DATA__, NULL) to the @Functions array.

All additions and modifications are welcome.

=cut

@Scalars = split ' ', <<'SCALAR';
    $a
    $b
    $_
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
    $^L $FORMAT_FORMFEED
    $^A $ACCUMULATOR
    $? $CHILD_ERROR
    $! $ERRNO $OS_ERROR
    $^E $EXTENDED_OS_ERROR
    $@ $EVAL_ERROR
    $$ $PROCESS_ID $PID
    $< $REAL_USER_ID $UID
    $> $EFFECTIVE_USER_ID $EUID
    $( $REAL_GROUP_ID $GID
    $) $EFFECTIVE_GROUP_ID $EGID
    $0 $PROGRAM_NAME
    $[
    $]
    $^C $COMPILING
    $^D $DEBUGGING
    $^F $SYSTEM_FD_MAX
    $^H
    $^I $INPLACE_EDIT
    $^M
    $^O $OSNAME
    $^P $PERLDB
    $^R $LAST_REGEXP_CODE_RESULT
    $^S $EXCEPTIONS_BEING_CAUGHT
    $^T $BASETIME
    $^V $PERL_VERSION
    $^W $WARNING
    ${^WARNING_BITS}
    ${^WIDE_SYSTEM_CALLS}
    $^X $EXECUTABLE_NAME
    $ARGV
SCALAR

@Arrays = split ' ', <<'ARRAY';
    @+ $LAST_MATCH_END
    @- @LAST_MATCH_START
    @ARGV
    @INC
    @_
ARRAY

@Hashes = split ' ', <<HASH;
    %OVERLOAD
    %!
    %^H
    %INC
    %ENV
    %SIG
HASH

@Filehandles = split ' ', <<FILEHANDLE;
    *ARGV ARGV
    ARGVOUT
    STDIN
    STDOUT
    STDERR
FILEHANDLE

@Functions = split ' ', <<FUNCTION;
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
FUNCTION

@Barewords = split ' ', <<BAREWORD;
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

Copyright 2005, Joshua ben Jore. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of either:

a) the GNU General Public License as published by the Free Software
   Foundation; version 2, or

b) the "Artistic License" which comes with Perl.

=cut

<<ErrantStory_dot_Com;
You know, when you stop and think about it, Cthulhu is a bit a Mary Sue isn't he?
ErrantStory_dot_Com
