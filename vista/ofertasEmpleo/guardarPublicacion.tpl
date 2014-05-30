<!Doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Refresh" content="2; url=/GestionEmpleos/ofertasEmpleo/publicarOferta">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/<?php echo APPNAME;?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="/<?php echo APPNAME;?>/css/animate.delay.css" rel="stylesheet">
    <link href="/<?php echo APPNAME;?>/css/animate.min.css" rel="stylesheet">
    <title><?php echo $titulo; ?> </title>
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <br>
            <hr>
            <div class="col-md-6 col-sm-5 col-xs-12">
                 <?php if($mensaje != "") { ?>
                     <div class="alert alert-success animate0 bounceIn">
                         Oferta <strong> Publicada </strong> Correctamente... !!</h1>
                     </div>
                <?php } else { ?>
                    <div class="alert alert-danger animate0 bounceIn">
                        <strong>Error</strong> al Publicar Oferta
                    </div>
                <?php } ?>
            </div>        
        </div>
    </div>   
</body>
</html>