<?php

class Persona {
	public $nombre;
	public $edad;
	public $pais;

	public function mostrarInformacion(){
		echo 'Hola Mundo';
	}
}

$carlos = new Persona;
$carlos->nombre = 'Carlos Montero';
$carlos->edad = 21;
$carlos->pais = 'Mexico';

$carlos->mostrarInformacion();

echo $carlos->nombre . ' tiene ' . $carlos->edad . ' años de edad';

$alejandro = new Persona;
$alejandro->nombre = 'Alejandra';
$alejandro->edad = 15;
$alejandro->pais = 'Francia';