`chcp 65001`;

open input,"Circle.java" or die "Ошибка открытия файла input.java:$!";
open output,">output.java" or die "Ошибка открытия файла output.java:$!";


@_ = <input>;
close input or die $!;

$_=join"", @_;
$identificators = join" ",  @array = /\b([a-z_]+\w*)\b/gi;

@reserved =  ("abstract","assert","boolean","break","byte","case","catch","char","class","const"
,"continue","default","do","double","else","enum","extends","final","finally","float","for",
"goto","if","implements","import","instanceof","int","interface","long","native",
"new","package", "private","protected","public","return","short","static","strictfp","super",
"switch","synchronized","this","throw","throws","transient","try", "void","volatile", "while", "true", "false", "null");

@symbols = ('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');

foreach $i (@reserved){	
	$identificators=~ s/\b$i\b//g;
}

@identificator = split " ", $identificators;

foreach $j (@identificator){	
	$newIden = join ('',map((@symbols)[ rand(26) ], (1..2)));
	$_=~ s/\b$j\b/$newIden/gi;
	$_=~s/\/\*.*?\*\///gis;
	$_=~s/\/\/.*//gi;
	$_=~tr/ +\n/ /s;
}
	
print output "$_";
close output or die $!;