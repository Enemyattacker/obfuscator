
`chcp 65001`;


open output, ">output.html" or die "Ошибка открытия файла output.html:$!";


close input or die $!;




print output "@array ";

