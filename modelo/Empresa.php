<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Empresa
 *
 * @author WDAM
 */
class Empresa extends Modelo{
    //put your code here
    private  $Codigo;
    private  $Nombre;
    private  $Telefono;
    private  $Email;
    
    
    // Constructor
    public function __construct() {
        parent::__construct();
    }
        
   // GETTER Y SETTER
   public function getCodigo() {
       return $this->Codigo;
   }

   public function getNombre() {
       return $this->Nombre;
   }

   public function getTelefono() {
       return $this->Telefono;
   }

   public function getEmail() {
       return $this->Email;
   }

   public function setCodigo($Codigo) {
       $this->Codigo = $Codigo;
   }

   public function setNombre($Nombre) {
       $this->Nombre = $Nombre;
   }

   public function setTelefono($Telefono) {
       $this->Telefono = $Telefono;
   }

   public function setEmail($Email) {
       $this->Email = $Email;
   }



// MAPEO Y OBTENCION DE PARAMETROS 
     private function mapearLogin(Empresa $empr, array $props) {
        if (array_key_exists('Codigo', $props)) {
            $empr->setCodigo($props['Codigo']);
        }
        if (array_key_exists('Nombre', $props)) {
            $empr->setNombre($props['Nombre']);
        }
        if (array_key_exists('Telefono', $props)) {
            $empr->setTelefono($props['Telefono']);
        }
        if (array_key_exists('Email', $props)) {
            $empr->setEmail($props['Email']);
        }
    }

    private function getParametros(Empresa $empr) {

        $parametros = array(
            ':Codigo' => $empr->getCodigo(),
            ':Nombre' => $empr->getNombre(),
            ':Telefono' => $empr->getTelefono(),
            ':Email' => $empr->getEmail()
        );
        return $parametros;
    }
    
}
