
# $Id: Makefile.PL,v 1.2 2003/02/22 08:42:15 sherzodr Exp $

use strict;
use File::Spec;
use Fcntl;
use ExtUtils::MakeMaker;
use Config;

# path to bin/google
my $google = File::Spec->catfile('bin', 'google');

# defining prerequisites
my %prereq = (
  'Net::Google'     => undef,
  'Config::Simple'  => '4.3',
  'Pod::Usage'      => undef,
);


WriteMakefile(
  NAME		    => 'google',
  VERSION_FROM=> $google,
  PREREQ_PM		=> \%prereq,
  EXE_FILES   => [ $google ]
);
