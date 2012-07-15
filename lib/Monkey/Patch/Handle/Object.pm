package Monkey::Patch::Handle::Object;
use strict;
use warnings;

use base 'Monkey::Patch::Handle::Class';

# VERSION

sub should_call_code {
    my ($self, $invocant) = @_;
    no warnings 'numeric';
    return $self->{object} == $invocant;
}

1;

=pod

=begin Pod::Coverage

.*

=end Pod::Coverage
