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
SKIP: {
skip 'No parsing with escapes.', 1;
@ret = $obj->parse_line('1:text\:text');
is_deeply(
	\@ret,
	[1, 'text:text'],
	'Parse line data with \':\'.',
);
}
