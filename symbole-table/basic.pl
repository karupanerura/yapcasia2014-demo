package XXX {
    sub foo { 1 }
}

package main {
    use strict;
    use warnings;
    use utf8;

    use feature qw/say/;

    sub XXX::name { 'My name is XXX.' }
    say 'Simple:            ', XXX->name;

    use Data::Dumper;
    say Dumper \%XXX::;
    say 'From symbol table: ', *{$XXX::{name}}{CODE}->();
    say 'From glob:         ', *XXX::name{CODE}->();
}
