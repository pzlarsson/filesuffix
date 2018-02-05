# Script to change the file suffix for all files in a directory
# perl filesuffix.pl C:\directory txt xml
use strict;

my $count = 0;

# Fetch command line parameters
my $directory = $ARGV[0];
my $from      = "." . $ARGV[1];
my $to        = "\"." . $ARGV[2] . '"';

# List files in directory
my @filelist = glob($directory . "\\*");

# Rename files
foreach my $filename (@filelist){
  my $newname = $filename;
  $newname =~ s/$from/$to/ee;
  if($filename ne $newname){
    rename($filename, $newname);
	++$count;
  }
}

# Print number of files renamed
if($count == 1){
  print "Renamed 1 file";
} else{
  print "Renamed " . $count . " files"
}