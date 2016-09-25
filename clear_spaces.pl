`chcp 65001`;
$text = "BufferedReader     bufferedReader = new BufferedReader(new FileReader('text.txt'));
        BufferedWriter           bufferedWriter = new BufferedWriter(new FileWriter('tickets.txt'));

        String string =     bufferedReader.readLine();
        String[]      strings = string.split(' ');
        System.out.println('Исходные билетики ' + '\n'    + Arrays.toString(strings));";
$text =~ tr/" "\n/ /s;
print "Код без лишних пробелов и переходов на новую строку: \n"."$text \n";