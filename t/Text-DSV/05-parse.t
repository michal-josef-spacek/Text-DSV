# Pragmas.
use strict;
use warnings;

# Modules.
use Text::DSV;
use Test::More 'tests' => 5;

# Test.
my $obj = Text::DSV->new;
my @ret = $obj->parse(<<'END');
1:2:3
4:5:6
END
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
	'Parse data.',
);

# Test.
@ret = $obj->parse(<<'END');
1:2:3

4:5:6
END
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
	'Parse data with blank data.',
);

# Test.
@ret = $obj->parse(<<"END");
1:2:3
\t
4:5:6
END
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
	'Parse data with blank data (tabelator).',
);

# Test.
@ret = $obj->parse(<<'END');
1:2:3
# Comment.
4:5:6
END
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
	'Parse data with comment from begin of line.',
);

# Test.
@ret = $obj->parse(<<'END');
1:2:3
   # Comment.
4:5:6
END
is_deeply(
	\@ret,
	[
		[1, 2, 3],
		[4, 5, 6],
	],
	'Parse data with comment with blank space.',
);
