# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use Char::Windows1258;
print "1..8\n";

my $__FILE__ = __FILE__;

if ("\x0A" =~ /\v/) {
    print qq{ok - 1 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 $^X $__FILE__\n};
}

if ("\x0B" =~ /\v/) {
    print qq{ok - 2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 $^X $__FILE__\n};
}

if ("\x0C" =~ /\v/) {
    print qq{ok - 3 $^X $__FILE__\n};
}
else {
    print qq{not ok - 3 $^X $__FILE__\n};
}

if ("\x0D" =~ /\v/) {
    print qq{ok - 4 $^X $__FILE__\n};
}
else {
    print qq{not ok - 4 $^X $__FILE__\n};
}

if ("\x0A" =~ /\V/) {
    print qq{not ok - 5 $^X $__FILE__\n};
}
else {
    print qq{ok - 5 $^X $__FILE__\n};
}

if ("\x0B" =~ /\V/) {
    print qq{not ok - 6 $^X $__FILE__\n};
}
else {
    print qq{ok - 6 $^X $__FILE__\n};
}

if ("\x0C" =~ /\V/) {
    print qq{not ok - 7 $^X $__FILE__\n};
}
else {
    print qq{ok - 7 $^X $__FILE__\n};
}

if ("\x0D" =~ /\V/) {
    print qq{not ok - 8 $^X $__FILE__\n};
}
else {
    print qq{ok - 8 $^X $__FILE__\n};
}

__END__
