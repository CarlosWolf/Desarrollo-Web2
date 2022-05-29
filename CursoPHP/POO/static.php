<?php

class Persona {
	public static $dia = '30 de Mayo';

	public static function saludo($nombre = null){
		if($nombre){
			return 'Hola, buen dia ' . $nombre;
		} else {
			return 'Hola, buen dia.';
		}
	}
}

$carlos = new Persona;
// echo Persona::saludo('Wolf');
echo $carlos->saludo('Wolf');