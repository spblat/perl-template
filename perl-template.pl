#!/usr/bin/perl

use strict;
use Getopt::Std;

sub HELP_MESSAGE {
##############################################################################
# ABOUT THIS SCRIPT ##########################################################
##############################################################################
	print <<EOF;

Copyright (C) 2015 or not

This script does stuff. I guess.

Usage:

$0 [tbd]

Optional Flags:

    -v              Verbose. Lots of debugging information.
    -h              This message.

This is $0 version 0.0.

VERSION HISTORY
2013-09-12	Will Irace	First Version.

EOF
	exit();
}

##############################################################################
# TO DO/BUGS #################################################################
##############################################################################
# ...


##############################################################################
# MAIN CODE ##################################################################
##############################################################################

# getopts('vhi:') means v and h are flags, and i is a parameter
getopts('vh');
HELP_MESSAGE() if ($main::opt_h);
$main::DEBUG = 1 if ($main::opt_v);
debug("well hi there");

##############################################################################
##### SUBROUTINES ############################################################
##############################################################################

sub debug {
	my $info = shift;
	print "DEBUG: " . $info . "\n" if $main::DEBUG;
}
