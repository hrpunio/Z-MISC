#!/usr/bin/perl
# API Key 5fca6a1671524befb1c76a6305ec235a 
#
use Geo::Coder::OpenCage;
use Data::Dumper;
open (LOG, ">openCage.log");

#my @places = ('London', 'Paris', 'Berlin');
#my %results;

while (<>) { chomp(); 
($p, $c) = split (/;/, $_);
print STDERR ">> [$p]\n";
push @places, $p; }

my $Geocoder = Geo::Coder::OpenCage->new(
    api_key => '5fca6a1671524befb1c76a6305ec235a',
);


# loop through the list, geocoding each individually
foreach my $place (@places){
    $NN++;

    my $result = $Geocoder->geocode(
	location => $place,
	limit => 1,
        countrycode => 'us',
    );
    my $msg = $result->{status}->{message};
    if ($msg eq 'OK'){
           $results{$place} = $result;
           #for $r (keys %{$result} ) { print "$r ${$result}{$r}\n" }
           print STDERR "$NN\n";
           print "==== $place =====\n";
           print Dumper($result);
	   #print LOG "$place = $result\n";
	   #print STDERR "$place = $result\n";
       } else {
	   warn "failed to geocode $place : $msg";
       }
}

#for $r (keys %results) {#
#	print "$r $results{$r}\n";
#    }

close (LOG);
