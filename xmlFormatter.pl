#!/usr/bin/perl

use strict;
use warnings;

use XML::Twig;

my $file = $ARGV[0] if $#ARGV + 1 > 0;
local $/;

open my $DATA, "<", $file or die "could not open $file: $!";

my $twig = XML::Twig->new(
  pretty_print => 'indented_a',
);
$twig->parse(<$DATA>);
$twig->print;
