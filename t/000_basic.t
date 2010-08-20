#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 0.88;

our $r = eval "require Test::NoWarnings; 1";

BEGIN {
    use_ok ('App::Bitly') or
        BAIL_OUT ("Loading of 'App::Bitly' failed");
}

ok defined $App::Bitly::VERSION, "VERSION is set";

Test::NoWarnings::had_no_warnings () if $r;

done_testing;
