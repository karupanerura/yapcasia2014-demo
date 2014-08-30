package A {
    # empty
}

package main {
    use strict;
    use warnings;
    use utf8;

    use feature qw/say/;

    my $name = <STDIN>;
    chomp $name;

    no strict qw/refs/;
    *{"A::${name}"} = sub { "this is $name method." };
    say A->sake;
}
