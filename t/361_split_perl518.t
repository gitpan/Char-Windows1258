# This file is encoded in Windows-1258.
die "This file is not encoded in Windows-1258.\n" if q{��} ne "\x82\xa0";

use Char::Windows1258;
print "1..2\n";

my $__FILE__ = __FILE__;

my $input = '  My name is Yamada Taro';

my $space = ' ';
my $a = join '_', split $space, $input;
if ($a eq 'My_name_is_Yamada_Taro') {
    print qq{ok - 1 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 $^X $__FILE__\n};
}

my $b = join '_', split ' ', $input;
if ($b eq 'My_name_is_Yamada_Taro') {
    print qq{ok - 2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 $^X $__FILE__\n};
}

__END__
http://d.hatena.ne.jp/syohex/20130613/1371103504

�ύX�_

split�̑������ɋ󔒈�̕����񃊃e������^�����Ƃ���

�󔒈��������ꂽ�ϐ����w�肵���Ƃ��̋��������܂ň����

�����̂������ɂȂ����悤�ł��B

Perl 5.16.3�ł̌���
  a = __My_name_is_Yamada_Taro
  b = My_name_is_Yamada_Taro

Perl 5.18.0�ł̌���
  a = My_name_is_Yamada_Taro
  b = My_name_is_Yamada_Taro

�ނ��� 5.18.0���O�͂���ȋ����������̂��Ƃ��������ł����A

�ꉞ�m���Ă����������ǂ������ł��B
