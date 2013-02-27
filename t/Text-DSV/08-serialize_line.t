# Pragmas.
use strict;
use warnings;

# Modules.
use Text::DSV;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Text::DSV->new;
my $ret = $obj->serialize_line(1, 2, 3);
is($ret, '1:2:3', 'Serialize line data.');

# Test.
$ret = $obj->serialize_line(1, 'text:text');
is($ret, '1:text\:text', 'Serialize line data with \':\'.');

# Test.
$ret = $obj->serialize_line(1, "text\ntext");
is($ret, '1:text\ntext', 'Serialize line data with newline.');
