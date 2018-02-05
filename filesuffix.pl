use strict;

print "Start\n";

my $directory = "C:\\pgm\\perl\\filesuffix\\test";

my @filelist = glob($directory . "\\*");

foreach my $filename (@filelist){
  print $filename . "\n";
}

print "End";