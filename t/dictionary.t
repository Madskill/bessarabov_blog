use strict;
use warnings FATAL => 'all';
use utf8;
use open qw(:std :utf8);

use Test::More;
use File::Slurp;
use lib::abs;
use Test::Differences;

sub main_in_test {

    $ENV{DIFF_OUTPUT_UNICODE} = 1;

    binmode Test::More->builder->output, ":utf8";
    binmode Test::More->builder->failure_output, ":utf8";

    pass('Loaded ok');

    my $original_text = read_file(
        lib::abs::path('../dictionary'),
        {
            binmode => ':utf8',
        },
    );

    my @words = sort map { s/^(\s*)//; $_; } split /\n/, $original_text;
    my $expected_text = join("\n", @words) . "\n";

    eq_or_diff(
        $original_text,
        $expected_text,
        'File "dictionary" is correct',
    );

    done_testing();
}
main_in_test();
