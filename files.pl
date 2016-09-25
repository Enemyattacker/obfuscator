
`chcp 65001`;

open input, "input.html" or die "Ошибка открытия файла index.html:$!";
open output, ">output.html" or die "Ошибка открытия файла output.html:$!";

@_ = <input>;
close input or die $!;

$_=join"", @_;

@array =  /#[a-z_]+[a-z0-9_]*/gi;
print output "@array ";

close output or die $!;
