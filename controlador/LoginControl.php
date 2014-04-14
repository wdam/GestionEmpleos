<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LoginControl
 *
 * @author WDAM
 */
class LoginControl  extends Controlador{
    
    function __construct($modelo, $accion) {
        parent::__construct($modelo, $accion);
        $this->setModelo($modelo);
    }
     public function inicio() {
                          
            $this->vista->set('titulo', 'Inicio de Sesion - INFOTECH');
            return $this->vista->imprimir();
       
    }
}
