<!doctype html>
<html lang="en">
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
						<form name="frmEmpresa" class="form-horizontal" role="form">
                            <div id="regAlert" style="display:none" class="alert alert-danger">
                                <p>Error Al Guardar Empresa.........</p>
                            </div>
                            <div class="form-group">
                            	<div class="col-xs-6 col-sm-4 col-md-4">					
                                 	<input id="txtCodigo" Name="txtCodigo"type="text" class="form-control" placeholder="Codigo Empresa" title="Codigo Empresa" tabindex="1">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input id="txtNombre" Name="txtNombre"type="text" class="form-control" placeholder="Nombre de la Empresa" title="Nombre de la Empresa" tabindex="2">
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-6 col-md-6">					
		                         	<input id="txtTelefono" Name="txtTelefono"type="text" class="form-control" placeholder="Telefono" title="Telefono" tabindex="3">								
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6 hidden-xs">
		                         	<input id="txtCelular" Name="txtCelular"type="text" class="form-control" placeholder="Celular" title="Celular" tabindex="4">							
								</div>
								<div class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px">					
		                         	<input id="txtCelular" Name="txtCelular"type="text" class="form-control" placeholder="Celular" title="Celular" tabindex="4">							
								</div>
							</div>

							<div class="form-group" style="margin-top: 15px">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input id="txtEmail" Name="txtEmail"type="text" class="form-control" placeholder="Correo Electronico" title="Correo Electronico" tabindex="5">
								</div>
							</div>

                            <div class="row">
  								<div class="col-xs-12 col-sm-6 col-md-6">
  									<select class="form-control" title="Departamento" tabindex="6">
  										<option>Seleccione Departamento</option>
									</select>
  								</div>
  								<div class="col-xs-12 col-sm-6 col-md-6 hidden-xs">
    								<select class="form-control" title="Ciudad O Municipio" tabindex="7">
  										<option>Seleccione Ciudad</option>
									</select>
  								</div>
  								<div class="col-xs-12 col-sm-6 col-md-6 visible-xs" style="margin-top: 15px" >
    								<select class="form-control" title="Ciudad O Municipio" tabindex="7">
  										<option>Seleccione Ciudad</option>
									</select>
  								</div>
							</div>
								
							<div class="form-group" style="margin-top: 15px">
								<div class="col-xs-12 col-sm-12 col-md-12">
		                         	<input id="txtDireccion" Name="txtDireccion"type="text" class="form-control" placeholder="Dirección" title="Dirección" tabindex="8">
								</div>
							</div>
							
                            <div class="row">
								<div class="col-xs-8 col-sm-4 col-md-4">
									<input type="submit" name="btnGuardar" id="btnGuardar" value="Guardar" class="btn btn-primary btn-block" tabindex="9"></div>
								<div class="col-xs-8 col-sm-4 col-md-4 hidden-xs">
									<input type="reset" name="btnCancelar" id="btnCancelar" value="Cancelar" class="btn btn-primary btn-block">  
								</div>

								<div class="col-xs-8 col-sm-4 col-md-4 visible-xs" style="margin-top: 15px">
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