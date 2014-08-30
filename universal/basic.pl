package XXX {
};

package UNIVERSAL {
    sub hello { 'hello!!!!' }
}

package main {
    use strict;
    use warnings;
    use utf8;
    use feature qw/say/;

    say XXX->hello;
}
