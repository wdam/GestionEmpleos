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
     public function index() {                        
            $this->vista->set('titulo', 'Inicio de Sesion - INFOTECH');
            $this->vista->set('mensaje', '');
            return $this->vista->imprimir();
    }
    
    //-------- acceder a la aplicacion  
    public function Acceso(){
             
        if (filter_input(INPUT_POST, 'btnInicio')){
            $user= filter_input(INPUT_POST,'txtUsuario') ? filter_input(INPUT_POST,'txtUsuario') : NULL;
            $pass= filter_input(INPUT_POST,'txtContra') ?  filter_input(INPUT_POST,'txtContra')  :NULL;
            $busc= $this->modelo->buscarLogin($user, $pass);
            if ($busc == null){
                $this->setVista('index');
                $this->vista->set('titulo', 'INFOTECH');
                $this->vista->set('mensaje', 'Usuario o Contraseña Incorrecta');
                  
             } else {
                $nivel =$busc->getNivel();
                if ($nivel === 1){
                    $this->setVista('menuAdministrador');
                }
                session_start();
                $_SESSION['usuario.id'] = $busc->getIdentificacion();
                $this->vista->set('mensaje', '');
             }
            return $this->vista->imprimir();
        } else {
            $this->vista->set('mensaje', 'Error al Enviar');
            $this->vista->set('titulo', 'INFOTECH');
            return $this->vista->imprimir();
            
        }
    }
    
    public function menuOperario(){
        return $this->vista->imprimir();
    }

    public function menuAdministrador(){
        return $this->vista->imprimir();
    }

    public function menuCliente(){
        return $this->vista->imprimir();
    }
    
}
