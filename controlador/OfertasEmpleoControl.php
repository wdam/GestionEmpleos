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
class OfertasEmpleoControl  extends Controlador{
    //put your code here
    
    function __construct($modelo, $accion) {
        parent::__construct($modelo, $accion);
    }
    
    public function registrarOferta(){
        //$this->vista->set('titulo', 'Inicio de Sesion - INFOTECH');
        //$this->vista->set('mensaje', '');
        $empresa = new Empresa();
        $this->vista->set('empresas', $empresa->leerEmpresas());
        $oferta = new OfertasEmpleo();
        $this->vista->set('codigo',$oferta->contar());
        return $this->vista->imprimir();  
    }
    
    public function guardarOferta(){
        if (filter_input(INPUT_POST, 'btnGuardar')){
            $empresa= filter_input(INPUT_POST,'cboEmpresa') ? filter_input(INPUT_POST,'cboEmpresa') : NULL;
            $codigo =filter_input(INPUT_POST,'txtCodigo') ? filter_input(INPUT_POST,'txtCodigo') : NULL;
            $nombre= filter_input(INPUT_POST,'txtNombre') ? filter_input(INPUT_POST,'txtNombre') : NULL;
            $descripcion= filter_input(INPUT_POST,'txtDescripcion') ? filter_input(INPUT_POST,'txtDescripcion') : NULL;
            $jornada= filter_input(INPUT_POST,'cboJornada') ? filter_input(INPUT_POST,'cboJornada') : NULL;
            $salarioMin= filter_input(INPUT_POST,'salMin') ? filter_input(INPUT_POST,'salMin') : NULL;
            $salarioMax= filter_input(INPUT_POST,'salMax') ? filter_input(INPUT_POST,'salMax') : NULL;
            $requisitos= filter_input(INPUT_POST,'txtRequisitos') ? filter_input(INPUT_POST,'txtRequisitos') : NULL;
            $estado= "registrada";
        
            try {
                $oferta = new OfertasEmpleo();
                $oferta->setIdOferta($codigo);
                $oferta->setNombre($nombre);
                $oferta->setDescripcion($descripcion);
                $oferta->setJornada($jornada);
                $oferta->setSalarioMin($salarioMin);
                $oferta->setSalarioMax($salarioMax);
                $oferta->setRequisitos($requisitos);
                $oferta->setEstado($estado);
                $oferta->setCodEmpresa($empresa);
                $oferta->registrarEmpresa($oferta);
                $this->vista->set('titulo', 'Datos almacenados');
                $this->vista->set('mensaje', 'Se ha guardado la informacion de manera satisfactoria');
            } catch (Exception $ex){
                $this->vista->set('titulo', 'Error');
                $this->vista->set('mensaje', 'Error al guardar los datos...: ' . $ex->getMessage());
            }
            return $this->vista->imprimir();
        }
      
    }
    public function publicarOferta(){
         $oferta = new OfertasEmpleo();
         $this->vista->set('ofertas', $oferta->buscarOfertaEstado("registrada"));
         return $this->vista->imprimir();
    }
}
