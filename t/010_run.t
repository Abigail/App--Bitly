#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 0.88;

SKIP: {
    skip "Environment variable BITLY_LOGIN not set",   1
          unless $ENV {BITLY_LOGIN};
    skip "Environment variable BITLY_API_KEY not set", 1
          unless $ENV {BITLY_API_KEY};

    my $result = `bin/bitly http://www.perl.com`;

    ok $result && $result =~ m{^http://bit.ly/[a-zA-Z0-9]+$}, "Shorten a URL";
}

done_testing;
