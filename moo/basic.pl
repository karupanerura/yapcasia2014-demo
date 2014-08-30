package XXX::Role {
    use Moo::Role;

    requires 'foo';

    has bar => (
        is => 'ro',
    );
};

package XXX {
    use Moo;

    has foo => (
        is => 'ro',
    );

    with 'XXX::Role';
};

package main {
    use strict;
    use warnings;
    use utf8;

    use Data::Dumper;
    my $xxx = XXX->new(foo => 1, bar => 2);
    warn Dumper $xxx;
};
