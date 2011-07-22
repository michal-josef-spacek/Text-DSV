# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'DSV parser and serializer.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Text-DSV';
resources 'repository' => {
	'url' => 'git://github.com/tupinek/Text-DSV',
	'web' => 'https://github.com/tupinek/Text-DSV',
	'type' => 'git',
};
test_requires 'English' => 0;
test_requires 'File::Object' => 0.01;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
