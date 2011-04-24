# Modules.
use Text::DSV;
use Test::More 'tests' => 1;

# Test.
my $obj = Text::DSV->new;
my @ret = $obj->parse('1:2:3', '4:5:6');
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
);
