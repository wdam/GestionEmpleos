<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $titulo; ?></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <link href="css/animate.delay.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <script type="text/javascript">
        var init = function() {
            var efectoFlip = document.getElementById('efectoFlip');
            document.getElementById('flip').addEventListener('click', function(){efectoFlip.toggleClassName('flipped');}, false);
          document.getElementById('flip1').addEventListener('click', function(){efectoFlip.toggleClassName('flipped');}, false);};
        window.addEventListener('DOMContentLoaded', init, false);
    </script>
  </head>
  <body>
	 <div class="container-fluid">
	 	<div class="row-fluid">
	 		<div class="col-md-12">
                <div id="login">
                    <div class="inicio-container">
                    <div id="efectoFlip">
                 
                    
                    <div class="front">
                                                         
    				        <div class="panel panel-info  animate1 bounceIn">
    				 	      <div class="panel-heading">
    				 		     <div class="panel-title"> Control de Acceso</div>
    				 		     <div class="titulo"><a id="flip" href="#">Recordar Contraseña?</a></div>

    				 	      </div>
    				 	<div class="panel-body">
    				 		<div style="display:none" id="loginAlert" class="alert alert-danger col-sm-12"></div>  
                        <form name="frmcontroldeAcceso" class="form-horizontal" role="form" id="fcontroldeAcceso">                                                                    
                            <div id="alinear" class="input-group animate2 bounceIn">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <input name="txtUsuario" type="text" autofocus required class="form-control" id="txtUsuario"  placeholder="Usuario o email">                                        
                            </div>
                                
                            <div id="alinear" class="input-group animate3 bounceIn">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-lock"></i>
                                </span>
                                <input name="txtContra" type="password" required class="form-control" id="txtContra" placeholder="Contraseña">
                            </div>                                   
                              
                            <div class="input-group animate4 bounceIn">
                                    <div class="checkbox">
                                        <label>
                                            <input id="chkRecordar" type="checkbox" name="chkRecordar" value="1"> Recordarme
                                        </label>
                                      </div>
                            </div>
							<div style="margin-top:10px" class="form-group animate5 bounceIn">
                                <div class="col-sm-12">
                                    <input name="btnInicio" type="submit" class="btn btn-success" id="btnInicio" value="Iniciar Sesion">
                                    <input type="reset" name="btnCancelar" id="btnCancelar" value="Cancelar &nbsp;&nbsp;&nbsp;" class="btn btn-success">  
                                </div>                                                       
                            </div>


                                <div class="form-group animate6 bounceIn">
                                    <div class="col-md-12 control">
                                        <div >No tiene Cuenta!
                                        <a href="#" onClick="$('#login').hide(); $('#registroNuevo').show()">
                                            Registrese Aqui.. </a>
                                        </div>
                                    </div>
                                </div>    
                            
                              </form> 
    				 	</div> <!-- cierre panel-body-->
    				 </div><!-- cierre panel-info-->
                    </div><!-- cierre front--> 
                
                  <div class="back">    
                    <div class="panel panel-info " >
                        <div class="panel-heading">
                            <div class="panel-title">Recordar Contraseña</div>
                             <div class="titulo"><a id="flip1" href="#">Iniciar Sesion</a></div>
                        </div>
                        <div class="panel-body">
                             <form name="frmRecordarPass" class="form-horizontal" role="form" id="fRecordarPass">
                                <div id="alinear" class="input-group">
                                    <span class="input-group-addon">@</span>
                                    <input name="txtRecordar" type="text" autofocus required class="form-control" id="txtRecordar"  placeholder="Email">                                        
                                </div>

                                <div style="margin-top:10px" class="form-group">
                                <div class="col-sm-12">
                                    <input name="btnInicio2" type="submit" class="btn btn-success" id="btnInicio2" value="Recordar Contraseña">
                                    <input type="reset" name="btnCancelar2" id="btnCancelar2" value="Cancelar &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-success">  
                                </div>
                             </div>
                         </form>
                       </div>
                      
                     </div>
                     </div><!-- cierre back--> 
                    </div><!-- cierre efectoFlip--> 
                   </div><!-- cierre inicio-containeer -->
           </div><!-- cierre login-->
                   
                <div id="registroNuevo" Style="display:none"> <!-- div registro Nuevo -->
                <div class="inicio-container">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Crear Cuenta</div>
                        <div class="titulo"><a href="#" onclick="$('#registroNuevo').hide(); $('#login').show()">Iniciar Sesion</a></div>
                    </div>
                    <div class="panel-boy">
                        <form name="frmRegistroUsuario" class="form-horizontal" role="form">
                            <div id="registroAlert" style="display:none" class="alert alert-danger">
                                <p>Error Al registrarse.........</p>
                            </div>
                             
                           
                            <div class="form-group">
                                    <label for="nombres" class="col-md-3 control-label">Nombres</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="txtNombre" placeholder="Nombres" autofocus required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="apellidos" class="col-md-3 control-label">Apellidos</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="txtApellidos" placeholder="Apellidos" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sexo" class="col-md-3 control-label">Sexo</label>
                                    <div class="col-md-9">
                                <select id="cboSexo" class="form-control" required>
                                    <option></option>
                                    <option>Masculino</option>
                                    <option>Femenino</option>
                                   
                                </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email" required>
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <label for="clave" class="col-md-3 control-label">Contraseña</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="txtPass" placeholder="Contraseña" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label text-center">Confirmar Contraseña</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="txtPassConf" placeholder="Confirmar Contraseña" required>
                                    </div>
                                </div>                                    
                                <div class="form-group">
                                                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btnRegistrar" type="submit" class="btn btn-success">Registrarse</button>
                                        <input type="reset" name="btnCancelar1" id="btnCancelar1" value="Cancelar" class="btn btn-success">  
                                    </div>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
             </div> <!--cierre div registro Nuevo -->
                    
            
	 		</div>
	 	</div>
	 	
	 </div>

   

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
     <script src="js/utils.js"></script>
  </body>
</html>
