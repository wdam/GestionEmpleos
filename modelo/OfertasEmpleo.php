<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of OfertasEmpleo
 *
 * @author WDAM
 */
class OfertasEmpleo extends Modelo {

    //put your code here
    private $idOferta;
    private $Nombre;
    private $Descripcion;
    private $Jornada;
    private $SalarioMin;
    private $SalarioMax;
    private $Requisitos;
    private $Estado;
    private $codEmpresa;
    private $Vacantes;
    private $Fecha;

    public function __construct() {
        parent::__construct();
    }

    // GETTER Y SETTER
    public function getIdOferta() {
        return $this->idOferta;
    }

    public function setIdOferta($idOferta) {
        $this->idOferta = $idOferta;
    }

    public function getNombre() {
        return $this->Nombre;
    }

    public function setNombre($Nombre) {
        $this->Nombre = $Nombre;
    }

    public function getDescripcion() {
        return $this->Descripcion;
    }

    public function setDescripcion($Descripcion) {
        $this->Descripcion = $Descripcion;
    }

    public function getJornada() {
        return $this->Jornada;
    }

    public function setJornada($Jornada) {
        $this->Jornada = $Jornada;
    }

    public function getSalarioMin() {
        return $this->SalarioMin;
    }

    public function setSalarioMin($SalarioMin) {
        $this->SalarioMin = $SalarioMin;
    }

    public function getSalarioMax() {
        return $this->SalarioMax;
    }

    public function setSalarioMax($SalarioMax) {
        $this->SalarioMax = $SalarioMax;
    }

    public function getRequisitos() {
        return $this->Requisitos;
    }

    public function setRequisitos($Requisitos) {
        $this->Requisitos = $Requisitos;
    }

    public function getEstado() {
        return $this->Estado;
    }

    public function setEstado($Estado) {
        $this->Estado = $Estado;
    }
    public function getCodEmpresa() {
        return $this->codEmpresa;
    }

    public function setCodEmpresa($codEmpresa) {
        $this->codEmpresa = $codEmpresa;
    }
    public function getVacantes() {
        return $this->Vacantes;
    }

    public function setVacantes($Vacantes) {
        $this->Vacantes = $Vacantes;
    }

    public function getFecha() {
        return $this->Fecha;
    }

    public function setFecha(DateTime $Fecha) {
        $this->Fecha = $Fecha;
    }

    
        

    // MAPEO Y OBTENCION DE PARAMETROS
    private function mapearOferta(OfertasEmpleo $ofer, array $props) {
        if (array_key_exists('idOferta', $props)) {
            $ofer->setIdOferta($props['idOferta']);
        }
        if (array_key_exists('Nombre', $props)) {
            $ofer->setNombre($props['Nombre']);
        }
        if (array_key_exists('Descripcion', $props)) {
            $ofer->setDescripcion($props['Descripcion']);
        }
        if (array_key_exists('Jornada', $props)) {
            $ofer->setJornada($props['Jornada']);
        }
        if (array_key_exists('SalarioMin', $props)) {
            $ofer->setSalarioMin($props['SalarioMin']);
        }
        if (array_key_exists('SalarioMax', $props)) {
            $ofer->setSalarioMax($props['SalarioMax']);
        }
        if (array_key_exists('Requisitos', $props)) {
            $ofer->setRequisitos($props['Requisitos']);
        }
        if (array_key_exists('Estado', $props)) {
            $ofer->setEstado($props['Estado']);
        }
        if (array_key_exists('codEmpresa', $props)) {
            $ofer->setCodEmpresa($props['codEmpresa']);
        }
        if (array_key_exists('Vacantes', $props)) {
            $ofer->setVacantes($props['Vacantes']);
        }
        if (array_key_exists('Fecha', $props)) {
            $ofer->setFecha(self::crearFecha($props['Fecha']));
        }
    }

    private function getParametros(OfertasEmpleo $ofer) {

        $parametros = array(
            ':idOferta' => $ofer->getIdOferta(),
            ':Nombre' => $ofer->getNombre(),
            ':Descripcion' => $ofer->getDescripcion(),
            ':Jornada' => $ofer->getJornada(),
            ':SalarioMin' => $ofer->getSalarioMin(),
            ':SalarioMax' => $ofer->getSalarioMax(),
            ':Requisitos' => $ofer->getRequisitos(),
            ':Estado' => $ofer->getEstado(),
            ':codEmpresa' => $ofer->getCodEmpresa(),
            ':Vacantes' => $ofer->getVacantes(),
            ':Fecha' => $this->formatearFecha($ofer->getFecha())
            
        );
        return $parametros;
    }

    // FUNCIONES 
    public function registrarEmpresa(OfertasEmpleo $ofer) {
        $sql = "INSERT INTO ofertaempleo (idOferta, Nombre, Descripcion, Jornada, SalarioMin, SalarioMax, Requisitos, Estado, codEmpresa, Vacantes, Fecha) ";
        $sql.= "VALUES (:idOferta, :Nombre, :Descripcion, :Jornada, :SalarioMin, :SalarioMax, :Requisitos, :Estado, :codEmpresa, :Vacantes, :Fecha)";
        $this->__setSql($sql);
        $this->ejecutar($this->getParametros($ofer));
    }

    public function contar() {
        $sql = "SELECT count(*) as total FROM ofertaempleo";
        $this->__setSql($sql);
        $resultado = $this->consultar($sql);
        $regi = "001";
        foreach ($resultado as $fila) {
            $nreg = $fila['total'] + 1;
        }
        if ($nreg < '10') {
            $regi = date('m') . '000' . $nreg;
        } elseif (($nreg >= '10' ) && ($nreg <= '99')) {
            $regi = date('m') . '00' . $nreg;
        } elseif (($nreg > '99' ) && ($nreg <= '999')) {
            $regi = date('m') . '0' . $nreg;
        } else {
            $regi = date('m') . $nreg;
        }
        return $regi;
    }
    
      public function buscarOfertaEstado($estado) {
      $sql = "SELECT f.Fecha, f.idOferta, f.Nombre, f.Jornada, em.Nombre as codEmpresa, mu.Nombre as Requisitos FROM ofertaempleo f
                INNER JOIN empresa em ON f.CodEmpresa = em.Codigo
                inner join municipios mu on em.Ciudad = mu.idMuni
                where f.Estado='$estado'";  
        $param = array($estado);
        $this->__setSql($sql);
        $res = $this->consultar($sql, $param);
        $oferta = array();
        foreach ($res as $fila) {
            $ofer = new OfertasEmpleo();
            $this->mapearOferta($ofer, $fila);
              $oferta[$ofer->getIdOferta()] = $ofer;
        }
        return $oferta;
    }
     
    public function buscarOfertaCodigo($codigo) {
    // $sql = "SELECT f.Fecha, f.idOferta, f.Nombre, f.Jornada, em.Nombre as codEmpresa, mu.Nombre as Requisitos FROM ofertaempleo f
    //           INNER JOIN empresa em ON f.CodEmpresa = em.Codigo
    //         inner join municipios mu on em.Ciudad = mu.idMuni
    //       where f.idOferta='$codigo'";  
        $sql="SELECT f.*, em.Nombre as codEmpresa FROM ofertaempleo f INNER JOIN empresa em ON f.CodEmpresa = em.Codigo WHERE idOferta ='$codigo'";
        $param = array($codigo);
        $this->__setSql($sql);
        $res = $this->consultar($sql, $param);
        $oferta = null;
        foreach ($res as $fila) {
            $oferta = new OfertasEmpleo();
            $this->mapearOferta($oferta, $fila);           
        }
        return $oferta;
    }

}
