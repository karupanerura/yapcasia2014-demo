package XXX {
    use constant CONST => 1;

    sub name { 'My name is XXX.' }
}

package main {
    use strict;
    use warnings;
    use utf8;

    use feature qw/say/;

    say 'Original: ', XXX->name;
    {
        no warnings qw/redefine once/;
        local *XXX::name = sub { 'My name is evil.' };
        say 'Evil: ', XXX->name;
    }
    say 'Original: ', XXX->name;
}
