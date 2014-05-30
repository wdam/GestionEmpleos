<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Persona
 *
 * @author WDAM
 */
class Persona extends Modelo {
  
  
  private $Identificacion;
  private $Nombre;
  private $Apellidos;
  private $FecNac;
  private $sexo;
  private $Email;
  private $Telefono;
  private $Ciudad;
  private $Jornada;
  private $Titulos;
  private $Clave;
  private $Nivel;
  private $Habilidades;
  
  
  
  // CONSTRUCTOR 
    public function __construct() {
        parent::__construct();
    }  
  
  // GETTER Y SETTER 
  public function getIdentificacion() {
      return $this->Identificacion;
  }

  public function getNombre() {
      return $this->Nombre;
  }

  public function getApellidos() {
      return $this->Apellidos;
  }

  public function getFecNac() {
      return $this->FecNac;
  }

  public function getSexo() {
      return $this->sexo;
  }

  public function getEmail() {
      return $this->Email;
  }

  public function getTelefono() {
      return $this->Telefono;
  }

  public function getCiudad() {
      return $this->Ciudad;
  }

  public function getJornada() {
      return $this->Jornada;
  }

  public function getTitulos() {
      return $this->Titulos;
  }

  public function getClave() {
      return $this->Clave;
  }

  public function getNivel() {
      return $this->Nivel;
  }

  public function getHabilidades() {
      return $this->Habilidades;
  }

  public function setIdentificacion($Identificacion) {
      $this->Identificacion = $Identificacion;
  }

  public function setNombre($Nombre) {
      $this->Nombre = $Nombre;
  }

  public function setApellidos($Apellidos) {
      $this->Apellidos = $Apellidos;
  }

  public function setFecNac($FecNac) {
      $this->FecNac = $FecNac;
  }

  public function setSexo($sexo) {
      $this->sexo = $sexo;
  }

  public function setEmail($Email) {
      $this->Email = $Email;
  }

  public function setTelefono($Telefono) {
      $this->Telefono = $Telefono;
  }

  public function setCiudad($Ciudad) {
      $this->Ciudad = $Ciudad;
  }

  public function setJornada($Jornada) {
      $this->Jornada = $Jornada;
  }

  public function setTitulos($Titulos) {
      $this->Titulos = $Titulos;
  }

  public function setClave($Clave) {
      $this->Clave = $Clave;
  }

  public function setNivel($Nivel) {
      $this->Nivel = $Nivel;
  }

  public function setHabilidades($Habilidades) {
      $this->Habilidades = $Habilidades;
  }

    // OBTENCION Y MAPEO DE PARAMETROS 
    
private function mapearPersona(Persona $cand, array $props) {
        if (array_key_exists('Identificacion', $props)) {
            $cand->setIdentificacion($props['Identificacion']);
        }
        if (array_key_exists('Nombre', $props)) {
            $cand->setNombre($props['Nombre']);
        }
        if (array_key_exists('Apellidos', $props)) {
            $cand->setApellidos($props['Apellidos']);
        }
        if (array_key_exists('FecNac', $props)) {
            $cand->setFecNac(self:: crearFecha($props['FecNac']));
        }
        if (array_key_exists('Sexo', $props)) {
            $cand->setSexo($props['Sexo']);
        }
        if (array_key_exists('Telefono', $props)) {
            $cand->setTelefono($props['Telefono']);
        } 
        if (array_key_exists('Email', $props)) {
            $cand->setEmail($props['Email']);
        } 
        if (array_key_exists('Ciudad', $props)) {
            $cand->setCiudad($props['Ciudad']);
        } 
        if (array_key_exists('Jornada', $props)) {
            $cand->setJornada($props['Jornada']);
        }    
        if (array_key_exists('Nivel', $props)) {
            $cand->setNivel($props['Nivel']);
        }
        if (array_key_exists('Clave', $props)) {
            $cand->setClave($props['Clave']);
        } 
        if (array_key_exists('Titulos', $props)) {
            $cand->setTitulos($props['Titulos']);
        } 
        if (array_key_exists('Habilidades', $props)) {
            $cand->setHabilidades($props['Habilidades']);
        }     
    }  
   private function  getParametros (Persona $perso ){
       
             $parametros = array(
                 ':Identificacion' =>$perso->getIdentificacion(),
                 ':Nombre' =>$perso->getNombre(),
                 ':Apellidos' =>$perso->getApellidos(),
                 ':FecNac'  =>$this->formatearFecha($perso->getFecNac()),
                 ':sexo' =>$perso->getSexo(),
                 ':Telefono' =>$perso->getTelefono(),
                 ':Email'  =>$perso->getEmail(),
                 ':Ciudad' =>$perso->getCiudad(), 
                 ':Jornada'  =>$perso->getJornada(),
                 ':Titulos' =>$perso->getTitulos(), 
                 ':Habilidades' =>$perso->getHabilidades(),
                 ':Nivel' =>$perso->getNivel(),
                 ':Clave' =>$perso->getClave(),                     
             );
             return $parametros;
 
   }
  // FUNCIONES CRUD
   
   public function  registrarPersona (Persona $persona){
       $sql = "INSERT INTO persona (Identificacion, Nombre, Apellidos, FecNac, Sexo, Email, Telefono, Ciudad, Jornada, Titulos, Habilidades, Nivel, Clave) " ;
       $sql .= "VALUES (:Identificacion, :Nombre, :Apellidos, :FecNac, :Sexo, :Email, :Telefono, :Ciudad, :Jornada, :Titulos, :Habilidades, :Nivel, :Clave)";
       $this->__setSql($sql);
       $this->ejecutar($this->getParametros($persona));
   }
   
   public function leerPersonas($tipo) {
        $sql = "SELECT * FROM persona where Nivel='$tipo'";
        $this->__setSql($sql);
        $resultado = $this->consultar($sql);
        $personas= array();
        foreach ($resultado as $fila) {
            $afil = new Persona();
            $this->mapearPersona($afil, $fila);
            $personas[$afil->getIdentificacion()] = $afil;
        }
        return $personas;
    }
  
}
