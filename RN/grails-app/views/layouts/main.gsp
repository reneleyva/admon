<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
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
                        <a class="activeHome nombre LetraColor navbar-brand" href="/RN" >Home</a>
                    </div>
                    <!-- Barra de Navegacion izquierda -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="/RN/profesor/index" class="LetraColor">Profesores</a></li>
                            <li><a href="/RN/trabajo/index" class="LetraColor">Trabajos Semestrales</a></li>
                            <li><a href="#" class="LetraColor">Acervo Bibliográfico</a></li>
                            <li><a href="#" class="LetraColor">Salidas a Campo</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                        <!-- Barra de Navegacion derecha -->
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle LetraColor" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="message">
                                    Usuario ${flash.message} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/RN/sec/index">iniciar</a></li>
                                    <li><a href="/RN/sec/salida">Salir</a></li>
                                    <li><a href="/RN/cuenta/index">Cuenta</a></li>
                                    <li><a href="/RN/rol/index">Rol</a></li>
                                    <li><a href="/RN/cuentaRol/index">Asignacion</a></li>
                                    <li><a href="/RN/correo/index">Enviar Correo</a></li>
                                </ul>
                            </li>
                        </ul>

                    </div><!-- /.navbar-collapse -->
                </div><!-- /.navbar-header -->
            </nav> <!-- /.navbar-default -->
        </div> <!-- Fin de barra  -->

        <!-- Nuevo renglon -->
        <div class="container">
            <section class="row">
                <div class="container">
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/> 
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>
                </div>
            </section>  
        </div>        

        <div class="container ajustePagina">

            <g:layoutBody/>

        </div>        

        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner colorError" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

    <!-- Container fluid -->
        <footer class="container-fluid textoColor piePagina espacio_02">
            <img src="../images/Miztli.png" alt="S.C.I." class="estiloLogo img-responsive">
            <h6 class="text-center funteLetra">Desarrollado por Miztli, Scientific Computational Intelligence</h6>

        </footer>
    </body>
</html>
