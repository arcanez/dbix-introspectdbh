use ExtUtils::MakeMaker;
WriteMakefile(
    NAME      => 'DBIx::IntrospectDBH',
    AUTHOR    => 'Justin Hunter <justin.d.hunter@gmail.com>',
    LICENSE => 'perl',
    VERSION_FROM => 'lib/DBIx/IntrospectDBH.pm',
    ABSTRACT_FROM => 'lib/DBIx/IntrospectDBH.pm',
    MIN_PERL_VERSION => '5.008001',
    PREREQ_PM => {
        'Exporter::Declare' => 0,
        'Moo' => 0,
    },
    BUILD_REQUIRES => {
	'Test::More' => 0,
    },
    META_MERGE      => {
        resources => {
            license     => 'http://dev.perl.org/licenses/',
        },
    },
);
