#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
use Encode qw/encode decode/;
use Unicode::Normalize qw/compose/;
use File::Copy;
use URI::Escape;

#my $string = "애플스크립트를";
my $string = $ENV{KMVAR_CLIP};
my $from = decode('utf8', $string);
my $to = compose($from);
my $encode = uri_escape_utf8($to);
print "$to";