<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $titulo; ?></title>
    <link href="/<?php echo APPNAME;?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="/<?php echo APPNAME;?>/css/animate.delay.css" rel="stylesheet">
    <link href="/<?php echo APPNAME;?>/css/animate.min.css" rel="stylesheet">
</head>
<body>
  <div class="container-fluid">
    <div class="row-fluid">
      <br>
      <div class="col-md-7 col-sm-8 col-xs-12">
        <div class="panel  panel-primary">
          <div class="panel-heading">Detalles de Oferta de trabajo </div>
            <div class="panel-body">
             <?php if (count($oferta)> 0) { ?>      
              <table class="table table-striped table-hover table-bordered table-responsive" id="publicacion">
                <tr>
                    <td class="col-md-3" scope="row">Codigo</td>
                    <td><?php echo $oferta->getIdOferta();?></td>
                </tr>
                <tr>
                    <td class="col-md-3" scope="row">Nombre</td>
                    <td><?php echo $oferta->getNombre();?></td>
                </tr>
                <tr>
                    <td class="col-md-3" scope="row">Descripción</td>
                    <td><?php echo $oferta->getDescripcion();?></td>
                </tr>
                <tr>
                    <td class="col-md-3" scope="row">Jornada</td>
                    <td><?php echo $oferta->getJornada();?></td>
                </tr>
                <tr>
                    <td class="col-md-3" scope="row">Salario Minimo</td>
                    <td><?php echo $oferta->getSalarioMin();?></td>
                </tr>
                <tr>
                    <td class="col-md-3" scope="row">Requisitos</td>
                    <td><?php echo $oferta->getRequisitos();?></td>
                </tr> 
                <tr>
                    <td class="col-md-3" scope="row">Vacantes</td>
                    <td><?php echo $oferta->getVacantes();?></td>
                </tr> 
                 <tr>
                    <td class="col-md-3" scope="row">Empresa</td>
                    <td><?php echo $oferta->getCodEmpresa();?></td>
                </tr>               
              </table>
             <?php }  else { ?>
              <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Error!</strong> Datos No Encontrados.
              </div>
              <?php } ?> 
            </div>              
          </div>
      </div>
    </div>
  </div>   
</body>
</html>