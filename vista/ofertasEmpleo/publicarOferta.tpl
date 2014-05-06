<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dataTable.bootstrap.css" rel="stylesheet" >
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery.dataTables.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
	<title>Publicar Ofertas</title>
    
    <script type="text/javascript" charset="utf-8"> 
        $(document).ready(function() {
            $('#publicacion').dataTable( {
            "sLengthMenu": false,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "pagingType": "full_numbers",
            "aaSorting": [[ 1, "desc" ]]
             } );
        } );
</script>
 <script type="text/javascript"> 
		$(document).ready(function() {
        $(".dataTables_filter input").addClass("hidden-xs").attr("placeholder","Buscar");
        $(".dataTables_filter label").addClass("hidden-xs");
         });   
</script>	   


</head>
<body>
	<div class="container-fluid">
		<br>
		<div class="row-fluid">
            <div class="col-md-10 col-sm-12 col-xs-12">
                 <br>
                <div class="panel  panel-primary">
                    <div class="panel-heading">Ofertas de trabajo Por Publicar</div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover table-bordered" id="publicacion">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Cargo</th>
                                        <th>Jornada</th>
                                        <th>Empresa</th>
                                        <th>Ubicación</th>
                                        <th>Publicar</th>
                                    </tr>  
                                </thead> 
                                <tbody>
                                    <?php foreach ($ofertas as $ofer) { ?>
                                    <tr>
                                        <td><?php echo $ofer->getFecha()->Format('Y-m-d');?></td>
                                        <td><a href="/GestionEmpleos/ofertasEmpleo/detalle/<?php echo $ofer->getIdOferta();?>"> <?php echo $ofer->getNombre();?></a></td>
                                        <td><?php echo $ofer->getJornada();?></td>
                                        <td><?php echo $ofer->getCodEmpresa();?></td>
                                        <td><?php echo $ofer->getRequisitos();?></td>
                                        <td><div class="text-center"><a class="btn btn-xs btn-primary" title="Publicar" data-toggle="tooltip" data-original-title="Publicar">
                                            <i class="fa fa-pencil"></i>
                                        </a></div></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                                </table>
                             </div>
                        </div>
                    </div>
                </div>
            </div>    
    	</div>
    </div>
</body>
</html>