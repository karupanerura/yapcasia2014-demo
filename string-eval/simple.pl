#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature qw/say/;

my $src = sprintf q{
    sub {
        my $name = shift;
        my $msg  = "hello $name.";
        %s
        return $msg;
    };
}, (int rand 2) ? q{
    sleep 3;
} : q{};

my $code = eval $src;
say $code->("yusukebe");
