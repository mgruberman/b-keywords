package B::Keywords;

$VERSION = '0.01';

@Symbols = qw[
 %OVERLOAD
 %!
 $_
 $& $MATCH
 $` $PREMATCH
 $' $POSTMATCH
 $+ $LAST_PAREN_MATCH
 @+ $LAST_MATCH_END
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
 @- @LAST_MATCH_START
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
 %^H
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
 @ARGV
 @INC
 @_
 %INC
 %ENV
 %SIG
 *ARGV ARGV
 ARGVOUT
 STDIN
 STDOUT
 STDERR];

@Barewords = qw[
 NULL
 __FILE__
 __LINE__
 __PACKAGE__
 __DATA__
 __END__
AUTOLOAD
BEGIN
CORE
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
lock
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
while
write
x
xor
y];

1;

__END__

=head1 NAME

B::Keywords - Lists of reserved barewords and symbol names

=head1 SYNOPSIS

  use B::Keywords;
  print join "\n", @B::Keywords::Symbols,
                   @B::Keywords::Barewords;

=head1 DESCRIPTION

B::Keywords supplies the two arrays - @Symbols and @Barewords. The barewords
list is copied right from the source file keywords.pl with the addition of
'lock'. @Symbols was created by reading L<perlvar> and the delta
documentation. All additions and modifications are welcome.

=head1 AUTHOR

Joshua b. Jore <jjore@cpan.org>

=head1 SEE ALSO

L<perlvar>
L<perlfunc>
L<perldelta>

=cut



