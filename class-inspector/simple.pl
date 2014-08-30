package XXX {
    sub foo { 1 }
    sub bar { 2 }
}

package YYY {
    our @ISA = qw/XXX/;

    sub bar  { 3 }
    sub _foo { 4 }
}

package main {
    use strict;
    use warnings;
    use utf8;
    use feature qw/say/;

    use Class::Inspector;

    use Data::Dumper;
    say '[methods]   XXX, full, public: ', "\n", Dumper+Class::Inspector->methods('XXX', 'full', 'public' );
    say '[methods]   XXX, public:       ', "\n", Dumper+Class::Inspector->methods('XXX', 'public');
    say '[methods]   XXX:               ', "\n", Dumper+Class::Inspector->methods('XXX');
    say '[functions] XXX, full, public: ', "\n", Dumper+Class::Inspector->functions('XXX', 'full', 'public' );
    say '[functions] XXX, public:       ', "\n", Dumper+Class::Inspector->functions('XXX', 'public');
    say '[functions] XXX:               ', "\n", Dumper+Class::Inspector->functions('XXX');
    say '[methods]   YYY, full, public: ', "\n", Dumper+Class::Inspector->methods('YYY', 'full', 'public' );
    say '[methods]   YYY, public:       ', "\n", Dumper+Class::Inspector->methods('YYY', 'public');
    say '[methods]   YYY:               ', "\n", Dumper+Class::Inspector->methods('YYY');
    say '[functions] YYY, full, public: ', "\n", Dumper+Class::Inspector->functions('YYY', 'full', 'public' );
    say '[functions] YYY, public:       ', "\n", Dumper+Class::Inspector->functions('YYY', 'public');
    say '[functions] YYY:               ', "\n", Dumper+Class::Inspector->functions('YYY');
}
