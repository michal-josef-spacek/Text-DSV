use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Text::DSV;

# Test.
is($Text::DSV::VERSION, 0.12, 'Version.');
