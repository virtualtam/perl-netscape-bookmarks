# $Id: visitor.t,v 1.3 2004/09/02 05:20:53 comdog Exp $
use strict;

use Test::More tests => 2;

use Netscape::Bookmarks;

require "examples/Visitor.pm";

my $visitor = Visitor->new();
isa_ok( $visitor, 'Visitor' );

my $netscape = Netscape::Bookmarks->new( "bookmark_files/Bookmarks.html" );
isa_ok( $netscape, 'Netscape::Bookmarks::Category' );

$netscape->introduce( $visitor );
