use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Dancer::Template::MicroTemplate',
    AUTHOR              => q{Franck Cuny <franck@lumberjaph.net>},
    VERSION_FROM        => 'lib/Dancer/Template/MicroTemplate.pm',
    ABSTRACT            => 'Dancer template engine for Text::MicroTemplate',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'          => 0,
        'Dancer'              => 1.150,
        'Text::MicroTemplate' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Dancer-Template-MicroTemplate-*' },
);
