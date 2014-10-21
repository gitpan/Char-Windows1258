# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use Char::Windows1258 qw(getc);
print "1..1\n";

my $__FILE__ = __FILE__;

if ($] < 5.006) {
    print qq{ok - 1 # SKIP $^X $] $__FILE__\n};
    exit;
}

open(FILE,">$__FILE__.txt") || die;
print FILE <DATA>;
close(FILE);
open(my $fh,"<$__FILE__.txt") || die;

my @getc = ();
while (my $c = getc($fh)) {
    last if $c eq "\n";
    push @getc, $c;
}
close($fh);
unlink("$__FILE__.txt");

my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(�)(�)') {
    print "ok - 1 $^X $__FILE__ 12�� --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12�� --> $result.\n";
}

__END__
12��
