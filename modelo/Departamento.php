<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Departamento
 *
 * @author WDAM
 */
class Departamento  extends Modelo {
        
    Private $CodDepart;
    Private $Nombre;
    
    // CONSTRUCTOR
    public function __construct() {
        parent::__construct();
    }
    
    // GETTER Y SETTER
    public function getCodDepart() {
        return $this->CodDepart;
    }

    public function getNombre() {
        return $this->Nombre;
    }

    public function setCodDepart($CodDepart) {
        $this->CodDepart = $CodDepart;
    }

    public function setNombre($Nombre) {
        $this->Nombre = $Nombre;
    }

   // OBTENCION DE PARAMETROS Y MAPEO
    
    private function mapearDepartamento(Departamento $Depart, array $props) {
        if (array_key_exists('CodDepart', $props)) {
            $Depart->setCodDepart($props['CodDepart']);
        }
        if (array_key_exists('Nombre', $props)) {
            $Depart->setNombre($props['Nombre']);
        }
      
    }  
       
    private function  getParametros (Departamento $Depart ){
       
        $parametros = array(
            ':CodDepart' =>$Depart ->setCodDepart(),
            ':Nombre'  =>$Depart->setNombre(),
                );
        return $parametros;
    }
        
    public function leerDepartamentos() {
        $sql = "SELECT CodDepart, Nombre FROM departamentos";
        $this->__setSql($sql);
        $resultado = $this->consultar($sql);
        $Departamentos= array();
        foreach ($resultado as $fila) {
            $depart = new Departamento();
            $this->mapearDepartamento($depart, $fila);
            $Departamentos[$depart->getCodDepart()] = $depart;
        }
        return $Departamentos;
    }    
    
}
