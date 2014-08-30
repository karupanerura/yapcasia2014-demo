#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature qw/say/;

my $src = q{
    sub {
        my $name = shift;
        return "hello $name.";
    };
};

my $code = eval $src;
say $code->("yusukebe");
