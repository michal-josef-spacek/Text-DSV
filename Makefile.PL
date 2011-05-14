# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'NAME' => 'Text::DSV',
	'PREREQ_PM' => {
		'File::Object' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/Text::DSV/*.t',
	},
);
