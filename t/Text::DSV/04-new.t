# Modules.
use Text::DSV;
use Test::More 'tests' => 2;

# Test.
my $obj = Text::DSV->new;
ok(defined $obj, 'Defined object.');
ok($obj->isa('Text::DSV'), 'Right object.');
