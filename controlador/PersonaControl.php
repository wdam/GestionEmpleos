<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PersonaControl
 *
 * @author WDAM
 */
class PersonaControl  extends Controlador{
    
    function __construct($modelo, $accion) {
        parent::__construct($modelo, $accion);
        $this->setModelo($modelo);
    }
    
    public function  index(){
        return $this->vista->imprimir();  
    }
    
    public function registrarCandidato(){
        return $this->vista->imprimir();  
    }
}

  

