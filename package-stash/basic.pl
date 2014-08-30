use strict;
use warnings;
use utf8;

use feature qw/say/;

use Package::Stash;

my $stash = Package::Stash->new('ABC');
$stash->add_symbol('&name', sub { sprintf 'My name is %s.', $_[0] });
$stash->add_symbol('$msg',  'Hello.');
my $method = $stash->get_symbol('&name');

say 'ABC->name:    ', ABC->name;
say 'ABC->$method: ', ABC->$method;

no warnings qw/once/;
say '$ABC::msg:    ', $ABC::msg;
