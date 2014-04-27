<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of EmpresaControl
 *
 * @author WDAM
 */
class EmpresaControl  extends Controlador{
    //put your code here
    
    function __construct($modelo, $accion) {
        parent::__construct($modelo, $accion);
    }
    
    public function index() {                        
        $this->vista->set('titulo', 'Registrar Empresa');
        return $this->vista->imprimir();                   
    }
}
