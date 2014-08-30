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
    use feature qw/say/;

    XXX->meta->add_method(say => sub {
        my $self = shift;
        say sprintf 'hello. foo: %d, bar: %d', $self->foo, $self->bar;
    });
    XXX->new(foo => 1, bar => 2)->say;
};
