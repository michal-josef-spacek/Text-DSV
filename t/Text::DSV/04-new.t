# Pragmas.
use strict;
use warnings;

# Modules.
use Text::DSV;
use Test::More 'tests' => 1;

# Test.
my $obj = Text::DSV->new;
isa_ok($obj, 'Text::DSV');
