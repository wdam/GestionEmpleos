<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/slider-bootstrap.css" rel="stylesheet">
    <script src="js/modernizr.js"></script> 
    <script src="js/jquery.js"></script> 
 <!--	<script src="jQueryAssets/jquery-1.8.3.min.js" type="text/javascript"></script> -->
    
    <link href="css/slider-bootstrap.css" rel="stylesheet"> 
    <title>Registrar Oferta</title>
	
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-1 col-md-offset-1">
            	<br>
            	<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="panel-title">Registrar Oferta De Trabajo</div>
					</div>
					<div class="panel-body">
						<form  action="/GestionEmpleos/ofertasEmpleo/guardarOferta" method="post" class="form-horizontal" id="crearOferta" role="form" name="crearOferta">
                            <div id="regAlert" style="display:none" class="alert alert-danger">
                                <p>Error Al Guardar Empresa.........</p>
                            </div>

                            <div class="form-group">
                            	<div class="col-xs-12 col-sm-8 col-md-8">					
                            		<select name="cboEmpresa"  class="form-control" id="cboEmpresa" tabindex="1" title="Nombre de la Empresa" autofocus required>
                            			<?php if (count($empresas) > 0) { ?>   
  										<option value="">Seleccione Empresa </option>
  										<?php foreach ($empresas as $emp){ ?>
                                        <option value="<?php echo $emp->getCodigo(); ?>"><?php echo $emp->getNombre();?></option>  
                  						<?php } ?>
                  						<?php } else { ?>
                  						<option value="">No hay Empresas Registradas</option>
                  						<?php } ?>
									</select>
								</div>
							</div>
                            
                            <div class="form-group">
                            	<div class="col-xs-6 col-sm-4 col-md-4">					
                                    <input Name="txtCodigo" type="text" required class="form-control" id="txtCodigo" placeholder="Codigo"  title="Codigo Oferta de Empleo" value="<?php echo $codigo; ?>"  readonly>
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input Name="txtNombre" type="text"  required class="form-control" id="txtNombre" placeholder="Nombre del Puesto de Trabajo" tabindex="2" title="Nombre">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12 col-sm-12 col-md-12">                	
		                         	<textarea Name="txtDescripcion" id="txtDescripcion" class="form-control" tabindex="3" placeholder="Descripción del Puesto de Trabajo" ="2" title="Descripción" required></textarea>
								</div>
							</div>
							
							<div class="form-group" >
								<div class="col-xs-12 col-sm-4 col-md-4" >
								  <select name="cboJornada" required class="form-control" id="cboJornada" tabindex="4" title="Jornada Laboral">
								    <option value="">Seleccione Jornada Laboral</option>
								    <option value="Completa">Comleta</option>
								    <option value="Parcial">Parcial</option>
								    </select>
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12 col-sm-7 col-md-7">
								 <b>Rango Salarial: $500000&nbsp;&nbsp;   
								 <input name="salMin" type="hidden" id="salMin" value="500000">
								 <input name="salMax" type="hidden" id="salMax" value="1000000">
								 </b>	
								  <div id="Slider1"></div><b>&nbsp;$5000000</b>
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12 col-sm-12 col-md-12">                	
		                         	<textarea Name="txtRequisitos" id="txtRequisitos" class="form-control" tabindex="6" placeholder="Requisitos del Puesto de Trabajo" ="2" title="Requisitos" required></textarea>
								</div>
							</div>
							
                            <div class="row">
								<div class="col-xs-8 col-sm-4 col-md-4">
									<input name="btnGuardar" type="submit"  class="btn btn-primary btn-block" id="btnGuardar"  title="Registrar Empresa" value="Guardar">
								</div>
								<div id="espacio2"class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px"></div>
								<div class="col-xs-8 col-sm-4 col-md-4 ">
									<input type="reset" name="btnCancelar" id="btnCancelar" value="Cancelar" class="btn btn-primary btn-block">  
								</div>

								
							</div>						
						</form>
				    </div>
				</div><!-- Cierre div panel -->		
			</div>			
		</div>
	</div><!-- Cierre Container Fluid-->
	
  	<script src="js/bootstrap-slider.js"></script> 
    <script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	$( "#Slider1" ).slider({
		animate:"normal",
		range:true,
		value:[500000, 1000000],
		step:100,
		min:500000,
		max:5000000
	}).on('slideStop', function(ev){
	         $("#salMin").val(ev.value[0]);
	         $("#salMax").val(ev.value[1]);
	      });
	
});
    </script>
</body>
</html>