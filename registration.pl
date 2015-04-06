#! usr/bin/perl

use CGI:'standard';

$file = 'members.csv';
open(INFO, "<$file");
@users = <INFO>;

my $name = param('newName');
my $user = param('newUser');
my $pass = param('newPassword');

my $line = sprintf("%s,%s,%s /n",$name, $user, $pass);

print $file $line;

close($file);


