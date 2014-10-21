# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::Windows1258;

my $__FILE__ = __FILE__;

my %lc = ();
@lc{qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)} =
    qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
%lc = (%lc,
    "\x8C" => "\x9C", # LATIN LIGATURE OE
    "\x9F" => "\xFF", # LATIN LETTER Y WITH DIAERESIS
    "\xC0" => "\xE0", # LATIN LETTER A WITH GRAVE
    "\xC1" => "\xE1", # LATIN LETTER A WITH ACUTE
    "\xC2" => "\xE2", # LATIN LETTER A WITH CIRCUMFLEX
    "\xC3" => "\xE3", # LATIN LETTER A WITH BREVE
    "\xC4" => "\xE4", # LATIN LETTER A WITH DIAERESIS
    "\xC5" => "\xE5", # LATIN LETTER A WITH RING ABOVE
    "\xC6" => "\xE6", # LATIN LETTER AE
    "\xC7" => "\xE7", # LATIN LETTER C WITH CEDILLA
    "\xC8" => "\xE8", # LATIN LETTER E WITH GRAVE
    "\xC9" => "\xE9", # LATIN LETTER E WITH ACUTE
    "\xCA" => "\xEA", # LATIN LETTER E WITH CIRCUMFLEX
    "\xCB" => "\xEB", # LATIN LETTER E WITH DIAERESIS
    "\xCD" => "\xED", # LATIN LETTER I WITH ACUTE
    "\xCE" => "\xEE", # LATIN LETTER I WITH CIRCUMFLEX
    "\xCF" => "\xEF", # LATIN LETTER I WITH DIAERESIS
    "\xD0" => "\xF0", # LATIN LETTER D WITH STROKE
    "\xD1" => "\xF1", # LATIN LETTER N WITH TILDE
    "\xD3" => "\xF3", # LATIN LETTER O WITH ACUTE
    "\xD4" => "\xF4", # LATIN LETTER O WITH CIRCUMFLEX
    "\xD5" => "\xF5", # LATIN LETTER O WITH HORN
    "\xD6" => "\xF6", # LATIN LETTER O WITH DIAERESIS
    "\xD8" => "\xF8", # LATIN LETTER O WITH STROKE
    "\xD9" => "\xF9", # LATIN LETTER U WITH GRAVE
    "\xDA" => "\xFA", # LATIN LETTER U WITH ACUTE
    "\xDB" => "\xFB", # LATIN LETTER U WITH CIRCUMFLEX
    "\xDC" => "\xFC", # LATIN LETTER U WITH DIAERESIS
    "\xDD" => "\xFD", # LATIN LETTER U WITH HORN
);

printf("1..%d\n", scalar(keys %lc));

my $tno = 1;
for my $char (sort keys %lc){
    if (lc($char) eq $lc{$char}) {
        printf(qq{ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    else {
        printf(qq{not ok - $tno lc("\\x%02X") eq "\\x%02X" $^X $__FILE__\n}, ord($char), ord($lc{$char}));
    }
    $tno++;
}

__END__
