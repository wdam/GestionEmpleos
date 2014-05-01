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
        $depart = new Departamento();
        $this->vista->set('deptos',$depart->leerDepartamentos());
        $con = new Empresa();
        $this->vista->set('Codigo', $con->contar());
        $this->vista->set('titulo', 'Registrar Empresa');
        return $this->vista->imprimir();                   
    }
    
    public function listarmunicipios($departamento=''){
       if ($departamento != null) {
        $Muni = new Municipios();
        $this->vista->set('municipios',$Muni->leerMunicipios($departamento));
        return $this->vista->imprimir();
       }
    }
    
    public function registrarEmpresa(){   
        
        if (filter_input(INPUT_POST, 'btnGuardar')){
            $codigo= filter_input(INPUT_POST,'txtCodigo') ? filter_input(INPUT_POST,'txtCodigo') : NULL;
            $nombre= filter_input(INPUT_POST,'txtNombre') ? filter_input(INPUT_POST,'txtNombre') : NULL;
            $telefono= filter_input(INPUT_POST,'txtTelefono') ? filter_input(INPUT_POST,'txtTelefono') : NULL;
            $celular= filter_input(INPUT_POST,'txtCelular') ? filter_input(INPUT_POST,'txtCelular') : NULL;
            $email= filter_input(INPUT_POST,'txtEmail') ? filter_input(INPUT_POST,'txtEmail') : NULL;
            $depart= filter_input(INPUT_POST,'cboDepartamento') ? filter_input(INPUT_POST,'cboDepartamento') : NULL;
            $ciudad= filter_input(INPUT_POST,'cboCiudad') ? filter_input(INPUT_POST,'cboCiudad') : NULL;
            $direccion= filter_input(INPUT_POST,'txtDireccion') ? filter_input(INPUT_POST,'txtDireccion') : NULL;
        
            try {
                $empresa = new Empresa();
                $empresa->setCodigo($codigo);
                $empresa->setNombre($nombre);
                $empresa->setTelefono($telefono);
                $empresa->setCelular($celular);
                $empresa->setEmail($email);
                $empresa->setDepartamento($depart);
                $empresa->setCiudad($ciudad);
                $empresa->setDireccion($direccion);
                $empresa->registrarEmpresa($empresa);
                $this->vista->set('titulo', 'Datos almacenados');
                $this->vista->set('mensaje', 'Se ha guardado la informacion de manera satisfactoria');
            } catch (Exception $ex){
                $this->vista->set('titulo', 'Error');
                $this->vista->set('mensaje', 'Error al guardar los datos...: ' . $ex->getMessage());
            }
            return $this->vista->imprimir();
        }
        
    }
}
