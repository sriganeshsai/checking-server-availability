#!/usr/bin/perl -w 
 
use Net::Ping;

 
my @ip_array = qw( 127.0.0.1 152.0.3.145 192.168.177.162);

chomp(@ip_array);
$p = Net::Ping->new();

while(){ 

foreach (@ip_array) {
    if ($_ =~ /\d+.\d+.\d+.\d+/) {
        if ($p->ping($&)) {
             print(" Server $& is in working state \n");
            
        } else {
            print "***Server $& is Down*** \n";

for( $a = 1; $a < 4; $a = $a + 1 ){
   print " Trying to ping the failed server $& for $a time \n";

 
        if ($p->ping($&)) {
            print(" Server $& is in working state \n");
		break;
            
        } else {
            print "*** Pinging to Server $& is failed *** \n";

}

}            
        }
    } else {
        print " ip address $_ is not valid \n";
        
    }
  }
}
