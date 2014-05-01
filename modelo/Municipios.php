<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Municipios
 *
 * @author WDAM
 */
class Municipios extends Modelo {
    private $idMuni;
    private $idDepart;
    private $munic;
    private $depto;
    
    // CONSTRUCTOR 
    public function __construct() {
        parent::__construct();
    }
    
    // GETTER Y SETTER
    
    public function getIdMuni() {
        return $this->idMuni;
    }

    public function getIdDepart() {
        return $this->idDepart;
    }

    public function getMunic() {
        return $this->munic;
    }

    public function getDepto() {
        return $this->depto;
    }

    public function setIdMuni($idMuni) {
        $this->idMuni = $idMuni;
    }

    public function setIdDepart($idDepart) {
        $this->idDepart = $idDepart;
    }

    public function setMunic($munic) {
        $this->munic = $munic;
    }

    public function setDepto($depto) {
        $this->depto = $depto;
    }
    
    // OBTENCION DE PARAMETROS Y MAPEO
    
    private function mapearMunicipios(Municipios $Muni, array $props) {
        if (array_key_exists('idMuni', $props)) {
            $Muni->setIdMuni($props['idMuni']);
        }
        if (array_key_exists('CodDepart', $props)) {
            $Muni->setIdDepart($props['CodDepart']);
        }
        if (array_key_exists('munic', $props)) {
            $Muni->setMunic($props['munic']);
        }
        if (array_key_exists('departamento', $props)) {
            $Muni->setDepto($props['departamento']);
        }
    }
    private function  getParametros (Municipios $muni ){  
        $parametros = array(
            ':idMuni' =>$muni ->getIdMunicipios(),
            ':munic'  =>$muni ->getMunic(),
            ':CodDepart' =>$muni ->getIdDepart(),
            ':depto' =>$muni ->getIdDepart()    
            );
        return $parametros;
    }           
    // FUNCIONES 
    
    public function leerMunicipios($departamento='') {
        $sql = "SELECT m.idMuni, m.CodDepart, m.Nombre as munic, d.Nombre as depto FROM municipios m, departamentos d WHERE m.CodDepart=$departamento";
       // $sql.= empty($departamento) ? $departamento : 'AND d.CodDepart= '.$departamento;
        $this->__setSql($sql);
        $resultado = $this->consultar($sql);
        $municipios = array();
        foreach ($resultado as $fila) {
            $Muni = new Municipios();
            $this->mapearMunicipios($Muni, $fila);
            $municipios[$Muni->getIdMuni()] = $Muni;
        } 
        return $municipios;
    }
}
