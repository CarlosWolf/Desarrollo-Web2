<?php 

# Los arreglos asosiativos nos permiten acceder a sus valore de una forma mas explicita.

$carlos = array('telefono' => '9831408998', 'edad' => 21, 'apellido' => 'Montero', 'pais' => 'mexico');

# Al igual que en los arreglos indexados, en los asosiativos tambien podemos modificar sus valores simplemente accediendo a ellos.
$carlos['telefono'] = '9831075057';

echo 'El telefono de Carlos es: ' . $carlos['telefono'];

?>