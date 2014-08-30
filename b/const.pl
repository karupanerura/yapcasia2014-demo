use strict;
use warnings;
use utf8;
use feature qw/say/;

use B;
use constant bar => 'bar';

sub foo { 'foo' }

{say 'foo():';
    my $v = B::svref_2object(\&foo);
    say 'package:   ', $v->STASH->NAME;
    say 'subname:   ', $v->GV->NAME;
    say 'const_sv:  ', $v->const_sv;
}

say '';

{say 'bar():';
    my $v = B::svref_2object(\&bar);
    say 'package:   ', $v->STASH->NAME;
    say 'subname:   ', $v->GV->NAME;
    say 'const_sv:  ', $v->const_sv;
    say 'constname: ', $v->const_sv->PV;
}
