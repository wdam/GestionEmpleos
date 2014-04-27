<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Login
 *
 * @author WDAM
 */
class Login extends Modelo {
    
    Private $identificacion;
    private $Clave;
    private $Nivel;
    private $Email;
    
    // CONTRUCTOR 
    public function __construct() {
        parent::__construct();
    }
    
    // GETTER Y SETTER
    public function getIdentificacion() {
        return $this->identificacion;
    }

    public function getClave() {
        return $this->Clave;
    }

    public function getNivel() {
        return $this->Nivel;
    }

    public function getEmail() {
        return $this->Email;
    }

    public function setIdentificacion($identificacion) {
        $this->identificacion = $identificacion;
    }

    public function setClave($Clave) {
        $this->Clave = $Clave;
    }

    public function setNivel($Nivel) {
        $this->Nivel = $Nivel;
    }

    public function setEmail($Email) {
        $this->Email = $Email;
    }

      
    // MAPEO Y OBTENCION DE PARAMETROS 
     private function mapearLogin(Login $Logi, array $props) {
        if (array_key_exists('Identificacion', $props)) {
            $Logi->setIdentificacion($props['Identificacion']);
        }
        if (array_key_exists('Clave', $props)) {
            $Logi->setClave($props['Clave']);
        }
        if (array_key_exists('Nivel', $props)) {
            $Logi->setNivel($props['Nivel']);
        }
        if (array_key_exists('Email', $props)) {
            $Logi->setEmail($props['Email']);
        }
    }

    private function getParametros(Login $login) {

        $parametros = array(
            ':Identificacion' => $login->getIdentificacion(),
            ':Clave' => $login->getClave(),
            ':Nivel' => $login->getNivel(),
            ':Email' => $login->getEmail()
        );
        return $parametros;
    }
    
    // FUNCIONES CRUD
    public function buscarLogin($cod, $pas) {
        $sql =  "SELECT  Nivel, Identificacion, Clave FROM persona WHERE Identificacion='$cod' and Clave='$pas'"; 
        $param = array($cod, $pas);
        $this->__setSql($sql);
        $resultado = $this->consultar($sql, $param);
        $logueado= NULL ; 
     foreach ($resultado as $fila){
         $logueado = new Login();
         $this->mapearLogin($logueado, $fila);
     }
     return $logueado;
    }

}
