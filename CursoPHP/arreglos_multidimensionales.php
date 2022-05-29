<?php 

# Los arreglos multidimensionales nos permiten tener arreglos dentro de otros arreglos.

$amigos = array(
	array('Juan', 25),
	array('Perez', 23),
	array('Lopez', 15)
);

# En este ejemplo accedemos primero al arreglo amigos y luego al primer elemento dentro de amigos, despues accedemos al primer valor del arreglo.

# Puedes llegar a tener cuantos niveles quieras.
echo $amigos[0][0] . '<br />';
echo $amigos[1][0] . '<br />';
echo $amigos[2][0] . '<br />';

?>