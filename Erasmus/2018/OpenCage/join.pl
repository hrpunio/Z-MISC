open (N, "NamesCC.csv");

while (<N>) { chomp();
 ($n, $c) = split /;/, $_;
 $NN{$n} = $c;
}

close (N);

## ## ##
#eventid;investigationtype;accidentnumber;eventdate;location;country;latitude;longitude;airport code;airport name;injury severity;aircraft damage;aircraft category;registration number;make;model;amateur built;number of engines;engine type;far description;schedule;purpose of flight;air carrier;total fatal injuries;total serious injuries;total minor injuries;total uninjured;weather condition;broad phase of flight;report status;publication date;year;month;day
open (B, "AvData_USA_1982F_lc.csv");

while (<B>) { chomp();
 @tmp = split /;/, $_;
 $lat = $tmp[6];
 $lon = $tmp[7];
 print STDERR "#### $lat / $lon \n";
 if ($lat =~ /[0-9]/ && $lon =~ /[0-9]/ ) {
   print STDERR "#### used original: $lat $lon\n";
   $coord = "$lat $lon"}
 else {

  print STDERR "#### used geocoded: $tmp[4]\n";
  $coord = $NN{$tmp[4]}
 }
 print "$_;$coord\n"
}

close (B);
