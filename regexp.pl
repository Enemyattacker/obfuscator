`chcp 65001`;
  $('#test').style('color','red');
  $('#button').onClick(function(){
     alert('something');
     $('#_12s').display('none');
   });
});" =~ /#[a-z_]+[a-z0-9_]*/gi;
print "Идентификаторы в коде: "."@code \n";
