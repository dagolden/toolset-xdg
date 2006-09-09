#!perl -T
use strict;
use Test::More;
use lib '.';

my @exported;

BEGIN {
    @exported = qw( 
        carp croak
        say
        blessed refaddr reftype
    );
    plan tests => 1 + @exported;
}

BEGIN { use_ok( "XDG" ); }


for (@exported) {
    can_ok( "main", $_ );
}
