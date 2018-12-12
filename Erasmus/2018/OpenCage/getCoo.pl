#!/usr/bin/perl
while (<>) {
  chomp();
  if (/====/) { $co = $_;  };$co =~ s/=//g;
  if (/geometry/) {
     # wrong the order is not fixed !
     #$lat = <>; chomp($lat); $lat =~ s/[^0-9\.\-\+]//g;
     #$lon = <>; chomp($lon); $lon =~ s/[^0-9\.\-\+]//g;
     #
     for ($c=0;$c<2;$c++) { 
        $coord = <> ; chomp($coord);
        #print STDERR "$coord\n";
        if ( $coord =~ /lat/ ) {$lat = $coord }
        else { $lon =  $coord }
     }
     $lat =~ s/[^0-9\.\-\+]//g;
     $lon =~ s/[^0-9\.\-\+]//g;
     $line = "$co;$lat $lon";
     #$line =~ s/[ \t\n]+//g;
     #$line =~ s/##/ /g;
     print "$line\n";
  }
}
