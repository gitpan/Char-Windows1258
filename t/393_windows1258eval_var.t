# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{ } ne "\x82\xa0";

use Char::Windows1258;

print "1..12\n";

my $var = '';

# Char::Windows1258::eval $var has Char::Windows1258::eval "..."
$var = <<'END';
Char::Windows1258::eval " if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } "
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval qq{...}
$var = <<'END';
Char::Windows1258::eval qq{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval '...'
$var = <<'END';
Char::Windows1258::eval ' if (qq{้ม} =~ /[แ]/i) { return 1 } else { return 0 } '
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval q{...}
$var = <<'END';
Char::Windows1258::eval q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval $var
$var = <<'END';
Char::Windows1258::eval $var2
END
my $var2 = q{ if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } };
if (Char::Windows1258::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval (omit)
$var = <<'END';
Char::Windows1258::eval
END
$_ = "if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 }";
if (Char::Windows1258::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has Char::Windows1258::eval {...}
$var = <<'END';
Char::Windows1258::eval { if ('้ม' =~ /[แ]/i) { return 1 } else { return 0 } }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has "..."
$var = <<'END';
if ('้ม' =~ /[แ]/i) { return "1" } else { return "0" }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has qq{...}
$var = <<'END';
if ('้ม' =~ /[แ]/i) { return qq{1} } else { return qq{0} }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has '...'
$var = <<'END';
if ('้ม' =~ /[แ]/i) { return '1' } else { return '0' }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has q{...}
$var = <<'END';
if ('้ม' =~ /[แ]/i) { return q{1} } else { return q{0} }
END
if (Char::Windows1258::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Windows1258::eval $var has $var
$var = <<'END';
if ('้ม' =~ /[แ]/i) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::Windows1258::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
