package Monkey::Patch::Context::Handle::Class;

use strict;
use warnings;

use base 'Monkey::Patch::Context::Handle';
use SUPER;

# VERSION

sub call_default {
    my $self  = shift;
    my $class = $self->{package};
    my ($super) = SUPER::find_parent($class, $self->{subname});
    goto &$super if $super;
    return;
}

1;

=pod

=begin Pod::Coverage

.*

=end Pod::Coverage
