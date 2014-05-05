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
	<title>Tablas</title>
    
    <script type="text/javascript" charset="utf-8"> 
        $(document).ready(function() {
            $('#alumnos').dataTable( {
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
        $(".dataTables_filter input").addClass("form-control").attr("placeholder","Buscar"); });   
</script>	   


</head>
<body>
	<div class="container-fluid">
		<br>
		<div class="row-fluid">
            <div class="col-md-12">
                 <br>
                 <div class="panel  panel-primary">
  
                        <div class="panel-heading">Listado de Usuarios</div>
                            <div class="panel-body">
                                  <table class="table table-striped table-hover table-bordered dataTable" id="alumnos">
                    <thead>
                 <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Telefono</th>
                        <th>Email</th>
                    </tr>  
                    </thead> 
                    <tbody>
                <tr>
                    <td>Columna 1</td>
                    <td>malo 2</td>
                    <td>Columna 3</td>
                    <td>Columna 4</td>
                </tr>
                <tr>
                    <td>columna 5</td>
                    <td>hola 6</td>
                    <td>columna 7</td>
                    <td>columna 8</td>
                </tr>
                <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>html5 </td>
                    <td>sss </td>
                    <td>css </td>
                    <td>php </td>
                </tr>
                <tr>
                    <td>daniel </td>
                    <td>arias </td>
                    <td>wendell </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>aaaa </td>
                    <td>arias </td>
                    <td>cccc </td>
                    <td>martinez </td>
                </tr>
                 <tr>
                    <td>java </td>
                    <td>C# </td>
                    <td>bbbb </td>
                    <td>martinez </td>
                </tr>
                </tbody>
                </table>
                         </div>
              
            </div>
            </div>
        </div>
        
	</div>
</div>
	
     
</body>
</html>