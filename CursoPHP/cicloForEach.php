<?php 

$meses = array(
	'Enero', 'Febrero', 'Marzo', 'Abril',
	'Mayo', 'Junio', 'Julio', 'Agosto',
	'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
);


$Carlos = array('telefono' => 9831075057, 'edad' => 21, 'pais' => 'mexico');

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<ul>
		<?php
			# Con el ciclo foreach podemos recorrer arreglos de una manera muy facil.
			// foreach($meses as $mes){
			// 	echo '<li>' . $mes . '</li>';
			// }

			# El ciclo foreach tambien nos permite recorrer arreglos asosiativos.
			foreach($Carlos as $dato => $valores){
				echo '<li>' . $dato . ' : ' . $valor . '</li>';
			}
		?>
	</ul>
</body>
</html>