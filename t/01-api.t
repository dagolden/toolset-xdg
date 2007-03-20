#!perl -T
use strict;
use Test::More;
use lib '.';

my (@exported, @OO_modules);

BEGIN {
    @exported = qw( 
        carp croak
        say
        blessed refaddr reftype
        Dump
    );
    @OO_modules = qw(
        File::Spec
    );
    plan tests => 1 + @exported + @OO_modules;
}

BEGIN { use_ok( "XDG" ); }


for my $f (@exported) {
    can_ok( "main", $f );
}

for my $m (@OO_modules) {
    my $m_path = $m;
    $m_path =~ s{::}{/};
    ok( $INC{$m_path . ".pm"}, "$m loaded" );
}
