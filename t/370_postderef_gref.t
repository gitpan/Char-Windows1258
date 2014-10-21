# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use Char::Windows1258;

BEGIN {
    print "1..4\n";
    if ($] >= 5.020) {
        require feature;
        feature->import('postderef');
        require warnings;
        warnings->unimport('experimental::postderef');
    }
    else{
            for my $tno (1..4) {
            print qq{ok - $tno SKIP $^X @{[__FILE__]}\n};
        }
        exit;
    }
}

$g = 'a scalar value';
@g = (qw(5 20 0));
%g = (qw(���� 1 ���� 2 �� 3 �ނ炳������ 4));
open(g,$0);
sub g { '�͂�Ȃ�' }
format g =
.
$gref = *g;

# same as *{$gref}{SCALAR}
if (${$gref->*{SCALAR}} eq ${*{$gref}{SCALAR}}) {
    print qq{ok - 1 \${\$gref->*{SCALAR}} eq \${*{\$gref}{SCALAR}} $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 \${\$gref->*{SCALAR}} eq \${*{\$gref}{SCALAR}} $^X @{[__FILE__]}\n};
}

# same as *{$gref}{ARRAY}
if (join('.',@{$gref->*{ARRAY}}) eq join('.',@{*{$gref}{ARRAY}})) {
    print qq{ok - 2 join('.',\@{\$gref->*{ARRAY}}) eq join('.',\@{*{\$gref}{ARRAY}}) $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 join('.',\@{\$gref->*{ARRAY}}) eq join('.',\@{*{\$gref}{ARRAY}}) $^X @{[__FILE__]}\n};
}

# same as *{$gref}{HASH}
if (join(',',%{$gref->*{HASH}}) eq join(',',%{*{$gref}{HASH}})) {
    print qq{ok - 3 join(',',%{\$gref->*{HASH}}) eq join(',',%{*{\$gref}{HASH}}) $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 join(',',%{\$gref->*{HASH}}) eq join(',',%{*{\$gref}{HASH}}) $^X @{[__FILE__]}\n};
}

# same as *{$gref}{CODE}
if (&{$gref->*{CODE}} eq &{*{$gref}{CODE}}) {
    print qq{ok - 4 &{\$gref->*{CODE}} eq &{*{\$gref}{CODE}} $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 &{\$gref->*{CODE}} eq &{*{\$gref}{CODE}} $^X @{[__FILE__]}\n};
}

__END__
