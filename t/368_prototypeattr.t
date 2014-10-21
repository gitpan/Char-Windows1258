# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use Char::Windows1258;

BEGIN {
    print "1..1\n";
    if ($] < 5.020) {
        print qq{ok - 1 SKIP $^X @{[__FILE__]}\n};
        exit;
    }
}

sub foo : prototype($$$) { join('.',$_[0],$_[1],$_[2]) }
if (foo(5,20,0) eq "5.20.0") {
    print qq{ok - 1 sub foo : prototype(\$\$\$) $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 sub foo : prototype(\$\$\$) $^X @{[__FILE__]}\n};
}

__END__
