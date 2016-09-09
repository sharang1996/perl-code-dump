#!/usr/bin/perl
my $username = getpwuid( $< );
print "$username\n";
if($username ne "root"){
	print "please run this script as root.\nsudo perl automation.pl\n";
	exit;
}else{
	chdir("/etc");
	unless(-d "Automation"){
		print "\n in etc\n";
		mkdir("Automation");
		chdir("Automation");
			open(CRONTABFILE,">crontab");
			flock(CRONTABFILE,2);
			$cronjob = "0 12 * * * /usr/bin/perl /etc/Automation/aptscript.pl";
			print CRONTABFILE "$cronjob";
			close(CRONTABFILE);
		
			open(APTSCRIPT,">aptscript.pl");
			flock(APTSCRIPT,2);
			print APTSCRIPT <<'EOF';
				#!/usr/bin/perl
				print "replace this script with the logic of the download of the deb file";
EOF
			close(APTSCRIPT);
		
			
	}
}
