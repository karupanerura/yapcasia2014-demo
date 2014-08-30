use strict;
use warnings;
use utf8;
use feature qw/say/;
use Parallel::Async;

use B;

sub foo { 'foo' }

my $v = B::svref_2object(\&async);
say $v->STASH->NAME;
say $v->GV->NAME;
