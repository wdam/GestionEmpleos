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
  <link rel="shortcut icon" href="img/favicon.ico">
    <script src="/<?php echo APPNAME;?>/js/jquery.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.dataTables.min.js" ></script>
    <script src="/<?php echo APPNAME;?>/js/bootstrap.min.js"></script>
    <script src="/<?php echo APPNAME;?>/js/dataTables.bootstrap.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.flexslider.js"></script>
    <script src="/<?php echo APPNAME;?>/js/jquery.custom.js"></script>
	<title>Infotech</title>
    
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
$(document).ready(function () {

    $("#btn-blog-next").click(function () {
      $('#blogCarousel').carousel('next')
    });
     $("#btn-blog-prev").click(function () {
      $('#blogCarousel').carousel('prev')
    });

     $("#btn-client-next").click(function () {
      $('#clientCarousel').carousel('next')
    });
     $("#btn-client-prev").click(function () {
      $('#clientCarousel').carousel('prev')
    });
    
});


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
                        <span class="sr-only">Menu</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="">Inicio</a>
                </div>
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
          
            <li ><a href="page-contact.htm" >Quienes Somos</a></li>
            
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="page-full-width.htm">Procesos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="/GestionEmpleos/persona/registrarCandidato">Registrar Candidato</a></li>
                    <li><a href="/GestionEmpleos/empresa/index">Registrar Empresa</a></li>
                    <li><a href="/GestionEmpleos/ofertasEmpleo/registrarOferta">Registrar Oferta de Trabajo</a></li>
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
        <div class="col-md-12" style="padding-bottom: 12px;">
            <h5 class="title-bg"> Procesos </h5>
        </div>  
        </div>  
          
        <div class="row-fluid">
            <div class="col-md-4  text-center">
                <img src="/<?php echo APPNAME;?>/img/icon1.jpg" class="img-thumbnail img-circle">               
                <h3>Registrar Empresa</h3>
            </div>
            <div class="col-md-4 text-center">
                <img src="/<?php echo APPNAME;?>/img/icon2.jpg" class="img-circle img-thumbnail">           
                <h3>Registrar Candidato</h3>
            </div>
            <div class="col-md-4 text-center ">
                <img src="/<?php echo APPNAME;?>/img/icon3.jpg" class="img-circle img-thumbnail">
                 <h3>Registrar Oferta</h3>
            </div>
        
        </div>
          
        <div class="row-fluid"><!-- Begin Bottom Section -->
    
        <!-- Blog Preview

        ================================================== -->
        <div class="col-md-6 col-sm-5 col-xs-12">

            <h5 class="title-bg">Ofertas de Trabajo 
                <small>Agregadas Recientemente</small>
                <button id="btn-blog-next" class="btn btn-xs" type="button">&raquo;</button>
                <button id="btn-blog-prev" class="btn btn-xs" type="button">&laquo;</button>
            </h5>

        <div id="blogCarousel" class="carousel slide ">

            <!-- Carousel items -->
            <div class="carousel-inner">

                 <!-- Blog Item 1 -->
                <div class="active item">
                    <a href="blog-single.htm"><img src="img/gallery/blog-med-img-1.jpg" alt="" class="align-left blog-thumb-preview" /></a>
                    <div class="post-info clearfix">
                        <h4><a href="blog-single.htm">A subject that is beautiful in itself</a></h4>
                        <ul class="blog-details-preview">
                            <li><i class="icon-calendar"></i><strong>Posted on:</strong> Sept 4, 2015<li>
                            <li><i class="icon-user"></i><strong>Posted by:</strong> <a href="#" title="Link">Admin</a><li>
                            <li><i class="icon-comment"></i><strong>Comments:</strong> <a href="#" title="Link">12</a><li>
                            <li><i class="icon-tags"></i> <a href="#">photoshop</a>, <a href="#">tutorials</a>, <a href="#">illustration</a>
                        </ul>
                    </div>
                    <p class="blog-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Vestibulum lectus tellus, aliquet et iaculis sed, volutpat vel erat. <a href="#">Read more</a><p>
                </div>

                <!-- Blog Item 2 -->
                 <div class="item">
                    <a href="blog-single.htm"><img src="img/gallery/blog-med-img-1.jpg" alt="" class="align-left blog-thumb-preview" /></a>
                    <div class="post-info clearfix">
                        <h4><a href="blog-single.htm">A great artist is always before his time</a></h4>
                        <ul class="blog-details-preview">
                            <li><i class="icon-calendar"></i><strong>Posted on:</strong> Sept 4, 2015<li>
                            <li><i class="icon-user"></i><strong>Posted by:</strong> <a href="#" title="Link">Admin</a><li>
                            <li><i class="icon-comment"></i><strong>Comments:</strong> <a href="#" title="Link">12</a><li>
                            <li><i class="icon-tags"></i> <a href="#">photoshop</a>, <a href="#">tutorials</a>, <a href="#">illustration</a>
                        </ul>
                    </div>
                    <p class="blog-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Vestibulum lectus tellus, aliquet et iaculis sed, volutpat vel erat. <a href="#">Read more</a><p>
                </div>

                 <!-- Blog Item 3 -->
                 <div class="item">
                    <a href="blog-single.htm"><img src="img/gallery/blog-med-img-1.jpg" alt="" class="align-left blog-thumb-preview" /></a>
                    <div class="post-info clearfix">
                        <h4><a href="blog-single.htm">Is art everything to anybody?</a></h4>
                        <ul class="blog-details-preview">
                            <li><i class="icon-calendar"></i><strong>Posted on:</strong> Sept 4, 2015<li>
                            <li><i class="icon-user"></i><strong>Posted by:</strong> <a href="#" title="Link">Admin</a><li>
                            <li><i class="icon-comment"></i><strong>Comments:</strong> <a href="#" title="Link">12</a><li>
                            <li><i class="icon-tags"></i> <a href="#">photoshop</a>, <a href="#">tutorials</a>, <a href="#">illustration</a>
                        </ul>
                    </div>
                    <p class="blog-summary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Vestibulum lectus tellus, aliquet et iaculis sed, volutpat vel erat. <a href="#">Read more</a><p>
                </div>
                
            </div>
            </div>  
        </div>
        
        <!-- Client Area
        ================================================== -->
        <div class="col-md-6 col-sm-6 col-xs-12">

            <h5 class="title-bg">Empresas Mas Buscadas
              
                <button id="btn-client-next" class="btn btn-xs" type="button">&raquo;</button>
                <button id="btn-client-prev" class="btn btn-xs" type="button">&laquo;</button>
            </h5>

            <!-- Client Testimonial Slider-->
            <div id="clientCarousel" class="carousel slide no-margin">
            <!-- Carousel items -->
            <div class="carousel-inner">

                <div class="active item">
                    <p class="quote-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Morbi blandit ultricies ultrices. Vivamus nec lectus sed orci molestie molestie."<cite>- Client Name, Big Company</cite></p>
                </div>

                <div class="item">
                    <p class="quote-text">"Adipiscing elit. In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Morbi blandit ultricies ultrices. Vivamus nec lectus sed orci molestie molestie."<cite>- Another Client Name, Company Name</cite></p>
                </div>

                <div class="item">
                    <p class="quote-text">"Mauris eget tellus sem. Cras sollicitudin sem eu elit aliquam quis condimentum nulla suscipit. Nam sed magna ante. Ut eget suscipit mauris."<cite>- On More Client, The Company</cite></p>
                </div>
                
            </div>
            </div>

            <!-- Client Logo Thumbs-->
            <ul class="client-logos">
                <li><a href="#" class="client-link"><img src="img/gallery/client-img-1.png" alt="Client"></a></li>
                <li><a href="#" class="client-link"><img src="img/gallery/client-img-2.png" alt="Client"></a></li>
                <li><a href="#" class="client-link"><img src="img/gallery/client-img-3.png" alt="Client"></a></li>
                <li><a href="#" class="client-link"><img src="img/gallery/client-img-4.png" alt="Client"></a></li>
                <li><a href="#" class="client-link"><img src="img/gallery/client-img-5.png" alt="Client"></a></li>
            </ul>

        </div>
        
    </div><!-- End Bottom Section -->   
    </div>

    <div class="footer-container"><!-- Begin Footer -->
        <div class="container-fluid">
            <div class="row-fluid footer-row">
                <div class="col-md-3 footer-col">
                    <h5>About Us</h5>
                   <img src="img/piccolo-footer-logo.png" alt="Piccolo" /><br /><br />
                    <address>
                        <strong>Design Team</strong><br />
                        123 Main St, Suite 500<br />
                        New York, NY 12345<br />
                    </address>
                    <ul class="social-icons">
                        <li><a href="#" class="social-icon facebook"></a></li>
                        <li><a href="#" class="social-icon twitter"></a></li>
                        <li><a href="#" class="social-icon dribble"></a></li>
                        <li><a href="#" class="social-icon rss"></a></li>
                        
                    </ul>
                </div>
                <div class="col-md-3 footer-col">
                    <h5>Latest Tweets</h5>
                    <ul>
                        <li><a href="#">@room122</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                        <li><a href="#">@room122</a> In interdum felis fermentum ipsum molestie sed porttitor ligula rutrum. Morbi blandit ultricies ultrices.</li>
                        <li><a href="#">@room122</a> Vivamus nec lectus sed orci molestie molestie. Etiam mattis neque eu orci rutrum aliquam.</li>
                    </ul>
                </div>
                <div class="col-md-3 footer-col">
                    <h5>Latest Posts</h5>
                     <ul class="post-list">
                        <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                        <li><a href="#">Consectetur adipiscing elit est lacus gravida</a></li>
                        <li><a href="#">Lectus sed orci molestie molestie etiam</a></li>
                        <li><a href="#">Mattis consectetur adipiscing elit est lacus</a></li>
                        <li><a href="#">Cras rutrum, massa non blandit convallis est</a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer-col">
                    <h5>Flickr Photos</h5>
                    <ul class="img-feed">
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                        <li><a href="#"><img src="img/gallery/flickr-img-1.jpg" alt="Image Feed"></a></li>
                       
                    </ul>
                </div>
            </div>

            <div class="row-fluid"><!-- Begin Sub Footer -->
                <div class="col-md-12 footer-col footer-sub">
                    <div class="row-fluid no-margin">
                        <div class="col-md-6"><span class="left">Copyright 2012 Piccolo Theme. All rights reserved.</span></div>
                        <div class="col-md-6">
                            <span class="right">
                            <a href="#">Inicio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Features</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Gallery</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Blog</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Contact</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div><!-- End Sub Footer -->

        </div>
    </div><!-- End Footer --> 
     <!-- Scroll to Top -->  
    <div id="toTop" class="hidden-xs" style="display: block;">Back to Top</div>
    
</body>
</html>