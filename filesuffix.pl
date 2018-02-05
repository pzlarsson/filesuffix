# Script to change the file suffix for all files in a directory
# perl filesuffix.pl C:\directory txt xml
use strict;

print "Start\n";

# TODO: Use parameter
my $directory = "C:\\pgm\\perl\\filesuffix\\test";

my @filelist = glob($directory . "\\*");

foreach my $filename (@filelist){
  # TODO: rename file
  print "File: " . $filename . "\n";
}

print "End";
