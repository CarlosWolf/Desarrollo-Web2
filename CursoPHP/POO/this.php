<?php

class Persona {
	public $nombre;
	public $edad;
	public $pais;

	public function mostrarInformacion(){
		echo $this->nombre . ' tiene ' . $this->edad . ' años de edad y es de ' . $this->pais;
	}
}

$carlos = new Persona;
$carlos->nombre = 'Carlos Montero';
$carlos->edad = 21;
$carlos->pais = 'Mexico';
$carlos->mostrarInformacion();

echo '<br />';

$alejandro = new Persona;
$alejandro->nombre = 'Alejandra';
$alejandro->edad = 15;
$alejandro->pais = 'Francia';
$alejandro->mostrarInformacion();