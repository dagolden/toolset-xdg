package XDG;

our $VERSION = '0.06';

use base 'ToolSet';

# too annoying for command line stuff
#ToolSet->use_pragma( 'strict' );
ToolSet->use_pragma( 'warnings' );

ToolSet->export(
    'Carp' => 'carp croak confess',
    'Data::Dump::Streamer' => 'Dump',
    'File::Spec' => undef,
    'Path::Class' => 'file dir',
    'Scalar::Util' => 'refaddr reftype blessed', 
    'File::Slurp' => 'slurp read_file write_file',
);

if ( $] >= 5.010 ) {
  ToolSet->use_pragma( 'feature', ':5.10' );
}
else {
  ToolSet->export( 'Perl6::Say' => 'say' );
}

1; # true
__END__

=begin wikidoc

= NAME

XDG - ToolSet with common features for DAGOLDEN

= SYNOPSIS

    use XDG;
    
    # strict is on
    # warnings are on
    
    carp "We know how to carp";
    say "boo";
  
= DESCRIPTION

This is a custom [ToolSet].  It imports the following functions from 
various modules:

* Carp: {carp, croak, confess}
* Scalar::Util: {blessed refaddr reftype}
* Path::Class: {file dir}
* Data::Dump::Streamer: {Dump}
* File::Spec

{strict} and {warnings} are automatically enabled. 

On Perl 5.10, all features are enabled.  If not on Perl 5.10, imports {say()} 
from Perl6::Say.

= BUGS AND LIMITATIONS

Report any bugs to the author

= AUTHOR

David A Golden  {<dagolden@cpan.org>}

= LICENCE AND COPYRIGHT

Copyright (c) 2006-2008 David A Golden {<dagolden@cpan.org>}. 
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See the {LICENSE} file included with this
module.

= DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=end wikidoc
