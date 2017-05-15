<html>
    <head>
        <meta charset="UTF-8">
        <title>Recursos Naturales</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/estilos.css">
    </head>

    <body>
         <!-- Barra de Navegacion -->
        <div class="container-fluid">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container-fluid ">
                  <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="active nombre LetraColor navbar-brand" href="/RN" >Home</a>
                    </div>
                    <!-- Barra de Navegacion izquierda -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="/RecursosNaturales/profesor/index" class="LetraColor">Profesores</a></li>
                            <li><a href="/RecursosNaturales/trabajo/index" class="LetraColor">Trabajos Semestrales</a></li>
                            <li><a href="#" class="LetraColor">Acervo Bibliográfico</a></li>
                            <li><a href="#" class="LetraColor">Salidas a Campo</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                        <!-- Barra de Navegacion derecha -->
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#" class="LetraColor">¿Quiénes somos?</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle LetraColor" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuario <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Salir</a></li>
                                    <li><a href="#">Configuración</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.navbar-header -->
            </nav> <!-- /.navbar-default -->
        </div> <!-- Fin de barra  --> 


<!-- ///////////////////////////////////////////////////////////////-->
<!--	login 	-->
	<section id="login">
        <div class="container">
        	<div class="row">
            <div class="col-xs-12">
            <div class="form-wrap">
            	<h3 class="text-center">Iniciar sesión</h3>
                        <g:if test='${flash.message}'>
                            <div class='login_message'>${flash.message}</div>
                        </g:if>

                        <form action='${postUrl}' method='POST' id='loginForm' class='cssform form' autocomplete='off' role="form">
                        <div class="form-group">
                        
                            <p>
                            <h4 for='username' class="sr-only">
                                <h1>Correo</h1> 
                            </h4>
                            <input type='email' class='form-control' name='j_username' id='username' placeholder="correo@ejemplo.com"/>
                            </p>
                         </div>
                            <p>
                            <h4 for='password'>
                                <h1>Contraseña</h1>
                            </h4>
                            <input type='password' class='form-control' name='j_password' id='password' placeholder="*********"/>
                            </p>
                            <p>
                                <input type='submit' id="submit" value='ingresar'class="btn btn-custom btn-lg btn-block"/>
                            </p>
                            <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">¿Olvidaste tu contraseña?</a>
                            
                        </form>

                            <g:form controller="correo" action="recupera">
                            	<h1>${flash.message}</h1>
                    			<br>Nombre : <g:field type="text" name="nombre"/><br>
                    			Email  : <g:field type="email" name="email"/><br>
    	                		
        		            	<g:submitButton name="submit" value="Recuperar contra"/>
                			</g:form>
                        </div>
                        </div> <!-- /.col-xs-12 -->
                        </div> <!-- /.row -->
                    </div> <!-- /.container -->

                    </section>
                
                <div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">×</span>
                                    <span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title text-center">Restablecer contraseña</h4>
                            </div>
                            <div class="modal-body text-left">
                                <p>Proporciona tu correo electrónico</p>
                                <input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-custom">Restablecer</button>
                            </div>
                        </div> <!-- /.modal-content -->
                    </div> <!-- /.modal-dialog -->
                </div> <!-- /.modal -->      


            

        </div>
        


<!-- ///////////////////////////////////////////////////////////////-->        
        <script type='text/javascript'>
            (function() {
            document.forms['loginForm'].elements['j_username'].focus();
            })();
        </script>

                <!-- Pie de Página -->
        <footer class="container-fluid textoColor piePagina espacio_02">
            <img src="../images/Miztli.png" alt="S.C.I." class="estiloLogo img-responsive">
            <h6 class="text-center funteLetra">Desarrollado por Miztli, Scientific Computational Intelligence</h6>
        </footer>

                <!-- Scripts -->
        <script src="../js/jquery-3.1.1.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>     
    </body>
</html>