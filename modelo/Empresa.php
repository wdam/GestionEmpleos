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
    private  $Departamento;
    private  $Direccion;
    private  $Celular;
    private  $Ciudad;




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

   public function getDepartamento() {
       return $this->Departamento;
   }

   public function getDireccion() {
       return $this->Direccion;
   }

   public function getCelular() {
       return $this->Celular;
   }

   public function getCiudad() {
       return $this->Ciudad;
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

   public function setDepartamento($Departamento) {
       $this->Departamento = $Departamento;
   }

   public function setDireccion($Direccion) {
       $this->Direccion = $Direccion;
   }

   public function setCelular($Celular) {
       $this->Celular = $Celular;
   }

   public function setCiudad($Ciudad) {
       $this->Ciudad = $Ciudad;
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
        if (array_key_exists('Departamento', $props)) {
            $empr->setDepartamento($props['Departamento']);
        }
        if (array_key_exists('Direccion', $props)) {
            $empr->setDireccion($props['Direccion']);
        }
        if (array_key_exists('Celular', $props)) {
            $empr->setCelular($props['Celular']);
        }
        if (array_key_exists('Ciudad', $props)) {
            $empr->setCiudad($props['Ciudad']);
        }
    }

    private function getParametros(Empresa $empr) {

        $parametros = array(
            ':Codigo' => $empr->getCodigo(),
            ':Nombre' => $empr->getNombre(),
            ':Telefono' => $empr->getTelefono(),
            ':Email' => $empr->getEmail(),
            ':Departamento' => $empr->getDepartamento(),
            ':Direccion' => $empr->getDireccion(),
            ':Celular' => $empr->getCelular(),
            ':Ciudad' => $empr->getCiudad()                
                
        );
        return $parametros;
    }
    // FUNCIONES
    public function registrarEmpresa(Empresa $empr){
        $sql = "INSERT INTO empresa (Codigo, Nombre, Telefono, Email, Departamento, Direccion, Celular, Ciudad) ";
        $sql.= "VALUES (:Codigo, :Nombre, :Telefono, :Email, :Departamento, :Direccion, :Celular, :Ciudad)";
        $this->__setSql($sql);
        $this->ejecutar($this->getParametros($empr));
        
    }
    public function contar() {
       $sql = "SELECT MAX(codigo) as total FROM empresa";
       $this->__setSql($sql);
       $resultado= $this->consultar($sql);
       $regi="001";
      foreach ($resultado as $fila) {
       $nreg= $fila['total']+1;
      }
      if ($nreg < '10') {
          $regi = date('Y') .'-'. '0000'. $nreg;
       }
       elseif (($nreg >= '10' ) && ($nreg <='99')){
           $regi = date('Y') .'-'. '000'. $nreg; 
       }
        elseif (($nreg > '99' ) && ($nreg <='999')){
           $regi = date('Y') .'-'. '00'. $nreg; 
       }
        elseif (($nreg > '999' ) && ($nreg <='9999')){
           $regi = date('Y') .'-'. '0'. $nreg; 
       }
      else {
            $regi = date('Y') ."-". $nreg; 
       }
      return $regi;
  }
    
    
}
