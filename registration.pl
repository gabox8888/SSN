#!/usr/bin/perl -w

use CGI;

$cgi = new CGI;

$file = 'members.csv';
open(INFO, ">>$file");

my $name = $cgi->param( 'newName' );
my $user = $cgi->param( 'newUser' );
my $pass = $cgi->param( 'newPassword' );

my $line = $name . "," . $user . "," . $pass . "\n";

print INFO $line;

close(INFO);

$file = 'index.html';
open(HEY, "<$file");
@lines=<HEY>;
close(HEY);
print "Content-Type: text/html\n\n";
foreach $line (@lines)
{
  print $line;
}
