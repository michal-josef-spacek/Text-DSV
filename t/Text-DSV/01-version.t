# Pragmas.
use strict;
use warnings;

# Modules.
use Text::DSV;
use Test::More 'tests' => 1;

# Test.
is($Text::DSV::VERSION, 0.06, 'Version.');
