#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature qw/say/;

eval sprintf q{
package %s;
sub name { sprintf 'My name is %%s.', __PACKAGE__ }
}, "Acme::Kobaken";

say Acme::Kobaken->name;
