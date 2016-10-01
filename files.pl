
`chcp 65001`;

open input, "input.java" or die "Ошибка открытия файла index.html:$!";
open output, ">output.html" or die "Ошибка открытия файла output.html:$!";

@_ = <input>;
close input or die $!;

$_=join"", @_;

@array =  /\b([a-z_]+\w*)\b/gi;
print output "@array ";

close output or die $!;
