package XXX {
    use Moo;
    sub xxx { 1 }
    sub yyy { 2 }
};

package YYY {
    use Moo;
    use feature qw/say/;

    extends qw/XXX/;

    sub zzz { 3 }

    before qw/xxx/ => sub {
        my ($self) = @_;
        say 'before xxx';
    };

    after qw/xxx/ => sub {
        my ($self) = @_;
        say 'after xxx';
    };

    around qw/yyy/ => sub {
        my ($orig, $self) = @_;
        return $self->$orig() * 2;
    };

    around qw/zzz/ => sub {
        my ($orig, $self) = @_;
        return $self->$orig() * 3;
    };
};

package main {
    use strict;
    use warnings;
    use utf8;
    use feature qw/say/;

    my $obj = YYY->new;
    say 'xxx: ', $obj->xxx;
    say 'yyy: ', $obj->yyy;
    say 'zzz: ', $obj->zzz;
};
