package XXX {
    use strict;
    use warnings;
    use utf8;
    use feature qw/say/;

    our $AUTOLOAD;
    sub AUTOLOAD {
        my $self = shift;
        say 'AUTOLOAD: ', $AUTOLOAD;
        say 'method:   ', $AUTOLOAD =~ s/^.*://r;
    }
}

package main {
    use strict;
    use warnings;
    use utf8;

    XXX->abc;
    XXX->def;
    XXX->xxxxxxx;

    my $method = 'abcdse"%gDvDS4etwR t4"gRgsdgsgE W$WE';
    XXX->$method;
}
