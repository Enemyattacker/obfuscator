`chcp 65001`;

use List::MoreUtils qw/uniq/;

open F1,"input.html" or die "Ошибка открытия файла input.java:$!";
open F2,">output.html" or die "Ошибка открытия файла output.java:$!";

$_ = join " " ,@_ =<F1>;
$outline = join" ",  @array = /\b([a-z_]+\w*)\b/gi;

@excIden =  ("byte ","short","int","long","char","float","double","boolean","if","else"
,"switch","case","default","while","do","break","continue","for","try","catch","finally",
"throw","throws","protected","public","import","package","class","interface","extends",
"implements","static", "final","void","abstract","native","new","return","this","super",
"synchronized","volatile","const","goto","instanceof","enum","assert", "transient","strictfp");

@litRand = ('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');

print "INPUT: @_\n";
close F1 or die $!;

foreach $i (@excIden){	
	$outline=~ s/\b$i\b//;
}

@identificator = split " ", $outline;

foreach $j (@identificator){	
	$newIden = join ('',map((@litRand)[ rand(26) ], (1..2)));
	$_=~ s/\b$j\b/$newIden/gi;
}	
	
print "OUTPUT: $_\n";
print F2 "$_\n";
close F2 or die $!;