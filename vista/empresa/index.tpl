<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<title><?php echo $titulo; ?></title>

	<style type="text/css">
	   .colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
	</style>
	<script type="text/javascript">
            //Funcion de Ajax
            function getAjax() {
                var xmlhttp;
                if (window.XMLHttpRequest) {
                    xmlhttp = new XMLHttpRequest();
                } else {
                    xmlhttp = new ActiveObject("Microsoft.XMLHTTP");
                }
                return xmlhttp;
            }

           function llenarCiudades(depto, div) {
                var ajax = getAjax();
                ajax.onreadystatechange = function() {
                    if (ajax.readyState == 4) {
                        if (ajax.status == 200) {
                            var datos = ajax.responseText;
                             document.getElementById(div).innerHTML=datos;
                             
		       }
                    }
                }
                ajax.open("GET", "/GestionEmpleos/empresa/listarmunicipios/" + depto, true);
                ajax.send(null);
            }
            window.onload = function() { 
                document.getElementById('cboDepartamento').onchange = function() {
                    var depto = document.getElementById('cboDepartamento').options[document.getElementById('cboDepartamento').selectedIndex].value;
                   llenarCiudades(depto, 'combociudad');
               }
            }
        </script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-12">
				<hr class="colorgraph">
			</div>
			<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="panel-title">Registrar Empresa</div>
					</div>
					<div class="panel-body">
                        <form  name="crearEmpresa" method="post"  class="form-horizontal"action="/GestionEmpleos/empresa/registrarempresa" id="crearEmpresa" role="form">
                            <div id="regAlert" style="display:none" class="alert alert-danger">
                                <p>Error Al Guardar Empresa.........</p>
                            </div>
                            <div class="form-group">
                            	<div class="col-xs-6 col-sm-4 col-md-4">					
                                 	<input Name="txtCodigo" type="text" required class="form-control" id="txtCodigo" placeholder="Codigo Empresa" tabindex="1" title="Codigo Empresa" value="<?php echo $Codigo; ?>" readonly >
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input Name="txtNombre" type="text" autofocus required class="form-control" id="txtNombre" placeholder="Nombre de la Empresa" tabindex="2" title="Nombre de la Empresa">
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6">					
		                         	<input Name="txtTelefono" type="text" required class="form-control" id="txtTelefono" placeholder="Telefono" tabindex="3" title="Telefono">								
								</div>
								<div id="espacio3"class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px"></div>
								<div class="col-xs-12 col-sm-6 col-md-6 ">
		                         	<input Name="txtCelular" type="text"  class="form-control" id="txtCelular" placeholder="Celular" tabindex="4" title="Celular">							
								</div>
								
							</div>

							<div class="form-group" style="margin-top: 15px">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input Name="txtEmail" type="email" required class="form-control" id="txtEmail" placeholder="Correo Electronico" tabindex="5" title="Correo Electronico">
								</div>
							</div>

                            <div class="row">
  								<div class="col-xs-12 col-sm-6 col-md-6">
  									<select name="cboDepartamento" required class="form-control" id="cboDepartamento" tabindex="6" title="Departamento">
  										<option value="">Seleccione Departamento </option>
                 						<?php foreach ($deptos as $depto){ ?>
                                        <option value="<?php echo $depto->getCodDepart(); ?>"><?php echo $depto->getNombre();?></option>  
                  						<?php } ?>
									</select>
  								</div>
  								<div id="espacio1"class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px"></div>
  								<div id="combociudad" name="combociudad"></div>
							</div>
								
							<div class="form-group" style="margin-top: 15px">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input Name="txtDireccion" type="text" required class="form-control" id="txtDireccion" placeholder="Dirección" tabindex="8" title="Dirección">
								</div>
							</div>
							
                            <div class="row">
								<div class="col-xs-8 col-sm-4 col-md-4">
									<input type="submit" name="btnGuardar"  class="btn btn-primary btn-block" id="btnGuardar"  title="Registrar Empresa" value="Guardar">
								</div>
								<div id="espacio2"class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px"></div>
								<div class="col-xs-8 col-sm-4 col-md-4 ">
									<input type="reset" name="btnCancelar" id="btnCancelar" value="Cancelar" class="btn btn-primary btn-block">  
								</div>
							
							</div>						
						</form>

					</div>
				
				</div>
			</div>
			<div class="col-md-12 col-xs-12 col-sm-12">
				<hr class="colorgraph">
			</div>	
		</div>
	</div>
	 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>