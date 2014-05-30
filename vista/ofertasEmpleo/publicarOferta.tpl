<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/<?php echo APPNAME;?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="/<?php echo APPNAME;?>/css/dataTable.bootstrap.css" rel="stylesheet" >
    <link rel="stylesheet" href="/<?php echo APPNAME;?>/css/flexslider.css" />
    <link rel="stylesheet" href="/<?php echo APPNAME;?>/css/default.css">
    <link rel="stylesheet" href="/<?php echo APPNAME;?>/font-awesome/css/font-awesome.min.css">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
    <script src="/<?php echo APPNAME;?>/js/jquery.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.dataTables.min.js" ></script>
    <script src="/<?php echo APPNAME;?>/js/bootstrap.min.js"></script>
    <script src="/<?php echo APPNAME;?>/js/dataTables.bootstrap.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.flexslider.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.custom.js"></script>
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
<script type="text/javascript">


 $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
    });  
});

</script>

</head>
<body>
    <div class="color-bar-1"></div>
    <div class="color-bar-2 color-bg"></div>
    
	<div class="container-fluid">
		<div class="row-fluid"><!-- Begin Header -->
      
        <!-- Logo
        ================================================== -->
        <div class="col-md-5 logo">
            <a href="index.htm"><img src="img/piccolo-logo.png" alt="" /></a>
            <h5>Encuentra Trabajo YA...!!</h5>
        </div>
        
        <!-- Main Navigation
        ================================================== -->
        <div class="col-md-7 navigation">
            <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="">Menu</a>
                </div>
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            <li ><a href="page-contact.htm" >Inicio</a></li>
            <li ><a href="page-contact.htm" >Quienes Somos</a></li>
            
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="page-full-width.htm">Procesos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="/GestionEmpleos/persona/registrarCandidato">Registrar Candidato</a></li>
                    <li><a href="/GestionEmpleos/empresa/index">Registrar Empresa</a></li>
                    <li><a href="/GestionEmpleos/ofertasEmpleo/registrarOferta">Registrar Oferta de Trabajo</a></li>
                </ul>
            </li>
             <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="gallery-4col.htm">Gallery <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="gallery-3col.htm">Gallery 3 Column</a></li>
                    <li><a href="gallery-4col.htm">Gallery 4 Column</a></li>
                    <li><a href="gallery-6col.htm">Gallery 6 Column</a></li>
                    <li><a href="gallery-4col-circle.htm">Gallery 4 Round</a></li>
                    <li><a href="gallery-single.htm">Gallery Single</a></li>
                </ul>
             </li>
            
             <li><a href="page-contact.htm">Contactenos</a></li>
            </ul>
             </div>
            </div>
            </nav>
        </div>
        
      </div><!-- End Header -->
      <div class="row-fluid headline"><!-- Begin Headline -->
    
        <!-- Slider Carousel
        ================================================== -->
        <div class="col-md-8">
            <div class="flexslider">
              <ul class="slides">
                <li><a href="gallery-single.htm"><img src="img/gallery/333.jpg" alt="slider" /></a></li>
                <li><a href="gallery-single.htm"><img src="img/gallery/222.jpg" alt="slider" /></a></li>
                <li><a href="gallery-single.htm"><img src="img/gallery/slider-img-1.jpg" alt="slider" /></a></li>
                <li><a href="gallery-single.htm"><img src="img/gallery/444.jpg" alt="slider" /></a></li>
                <li><a href="gallery-single.htm"><img src="img/gallery/333.jpg" alt="slider" /></a></li>
              </ul>
            </div>
        </div>
        
        <!-- Headline Text
        ================================================== -->
        <div class="col-md-4">
            <h3>Welcome to Piccolo. <br />
            A Big Theme in a Small Package.</h3>
            <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pretium vulputate magna sit amet blandit.</p>
            <p>Cras rutrum, massa non blandit convallis, est lacus gravida enim, eu fermentum ligula orci et tortor. In sit amet nisl ac leo pulvinar molestie. Morbi blandit ultricies ultrices.</p>
            <a href="#"><i class="icon-plus-sign"></i>Read More</a> 
        </div>
    </div><!-- End Headline -->
		<div class="row-fluid">
            <div class="col-md-10 col-sm-12 col-xs-12">
                 <br>
                <div class="panel  panel-primary">
                  
                    <div class="panel-heading">Ofertas de Trabajo Por Publicar</div>
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
                                        <td><div class="text-center"><a class="btn btn-xs btn-primary" title="Publicar" data-toggle="tooltip" data-original-title="Publicar" href="/GestionEmpleos/ofertasEmpleo/guardarPublicacion/<?php echo $ofer->getIdOferta(); ?>">
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