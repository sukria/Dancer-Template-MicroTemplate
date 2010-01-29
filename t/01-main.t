use strict;
use warnings;
use Test::More tests => 4;
use Dancer::FileUtils 'path';

use Dancer::Template::MicroTemplate;

my $engine;
eval { $engine = Dancer::Template::MicroTemplate->new };
is $@, '',
  "Dancer::Template::MicroTemplate engine created";

my $template = path('t', 'index.mt');
my $result = $engine->render(
    $template,
    {   var1 => 1,
        var2 => 2,
        foo  => 'one',
        bar  => 'two',
        baz  => 'three'
    }
);

my $expected =
  'this is var1="1" and var2=2' . "\n\nanother line\n\n one two three\n";
is $result, $expected, "processed a template given as a file name";

$template = '% my $one=1; one=<%= $one %>';

eval { $engine->render($template, {one => 1, two => 2, three => 3}) };
like $@, qr/is not a regular file/, "prorotype failure detected";

eval { $engine->render(\$template, {one => 1, two => 2, three => 3}) };
like $@, qr/is not a regular file/, "prototype failure detected";
