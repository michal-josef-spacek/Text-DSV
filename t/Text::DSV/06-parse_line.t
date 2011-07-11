# Pragmas.
use strict;
use warnings;

# Modules.
use Text::DSV;
use Test::More 'tests' => 2;

# Test.
my $obj = Text::DSV->new;
my @ret = $obj->parse_line('1:2:3');
is_deeply(
	\@ret,
	[1, 2, 3],
	'Parse line data',
);

# Test.
@ret = $obj->parse_line('1:text\:text');
is_deeply(
	\@ret,
	[1, 'text:text'],
	'Parse line data with \':\'.',
);
