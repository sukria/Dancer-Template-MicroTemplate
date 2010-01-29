#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Dancer::Template::MicroTemplate' ) || print "Bail out!
";
}

diag( "Testing Dancer::Template::MicroTemplate $Dancer::Template::MicroTemplate::VERSION, Perl $], $^X" );
