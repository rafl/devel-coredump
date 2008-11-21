use strict;
use warnings;

package Devel::CoreDump;

use XSLoader;
use IO::Handle;

our $VERSION = '0.01';

XSLoader::load(__PACKAGE__, $VERSION);

1;

__END__

=head1 NAME

Devel::CoreDump - create core dumps of the running perl interpreter, without terminating

=head1 SYNOPSIS

    use Devel::CoreDump;

    Devel::CoreDump->write($path);

=head1 AUTHOR

Florian Ragwitz E<lt>rafl@debian.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2008  Florian Ragwitz

This software is distributed under the terms of the BSD License

=cut
