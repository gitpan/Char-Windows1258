# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Windows1258;
print "1..8\n";

my $__FILE__ = __FILE__;

if ('p{L}' =~ /(\p{L})/) {
    if ($1 eq 'p{L}') {
        print qq{ok - 1 'p{L}' =~ /(\\p{L})/ ($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 'p{L}' =~ /(\\p{L})/ ($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 'p{L}' =~ /(\\p{L})/ $^X $__FILE__\n};
}

if ('p{^L}' =~ /(\p{^L})/) {
    print qq{not ok - 2 'p{^L}' =~ /(\\p{^L})/ ($1) $^X $__FILE__\n};
}
else {
    print qq{ok - 2 'p{^L}' =~ /(\\p{^L})/ $^X $__FILE__\n};
}

if ('p{^L}' =~ /(\p{\^L})/) {
    print qq{ok - 3 'p{^L}' =~ /(\\p{\\^L})/ ($1) $^X $__FILE__\n};
}
else {
    print qq{not ok - 3 'p{^L}' =~ /(\\p{\\^L})/ $^X $__FILE__\n};
}

if ('pL' =~ /(\pL)/) {
    if ($1 eq 'pL') {
        print qq{ok - 4 'pL' =~ /(\\pL)/ ($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 4 'pL' =~ /(\\pL)/ ($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 4 'pL' =~ /(\\pL)/ $^X $__FILE__\n};
}

if ('P{L}' =~ /(\P{L})/) {
    if ($1 eq 'P{L}') {
        print qq{ok - 5 'P{L}' =~ /(\\P{L})/ ($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 5 'P{L}' =~ /(\\P{L})/ ($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 5 'P{L}' =~ /(\\P{L})/ $^X $__FILE__\n};
}

if ('P{^L}' =~ /(\P{^L})/) {
    print qq{not ok - 6 'P{^L}' =~ /(\\P{^L})/ ($1) $^X $__FILE__\n};
}
else {
    print qq{ok - 6 'P{^L}' =~ /(\\P{^L})/ $^X $__FILE__\n};
}

if ('P{^L}' =~ /(\P{\^L})/) {
    print qq{ok - 7 'P{^L}' =~ /(\\P{\\^L})/ ($1) $^X $__FILE__\n};
}
else {
    print qq{not ok - 7 'P{^L}' =~ /(\\P{\\^L})/ $^X $__FILE__\n};
}

if ('PL' =~ /(\PL)/) {
    if ($1 eq 'PL') {
        print qq{ok - 8 'PL' =~ /(\\PL)/ ($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 8 'PL' =~ /(\\PL)/ ($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 8 'PL' =~ /(\\PL)/ $^X $__FILE__\n};
}

__END__
