<!DOCTYPE html>
<html>
    <head>
            <meta charset="UTF-8">
            <title>Recursos Naturales</title>
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
            <link rel="stylesheet" href="css/bootstrap.min.css">
            <link rel="stylesheet" href="css/estilos.css">
            <link rel="stylesheet" href="css/index-style.css">
    </head>


    <body>

    <header>
                      
      
    </header>

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
                        <a class="marcarHome nombre LetraColor navbar-brand" href="/RN/" ><img id="logo" src="/RN/images/hoja.png"></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="/RN/recursos/historia" class="LetraColor">¿Quiénes somos?</a></li>
                            <li><a href="#"></a></li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle LetraColor" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Crear<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/RN/trabajo/create">Trabajo</a></li>
                                    <li><a href="/RN/tema/create">Tema</a></li>
                                    <li><a href="/RN/subtema/create">Subtema</a></li>
                                    <li><a href="/RN/palabraClave/index">Palabra Clave</a></li>
                                    <li><a href="/RN/profesor/create">Profesor</a></li>
                                    <li><a href="/RN/bibliografia/create">Bibliografía</a></li>
                                    <li><a href="/RN/document/create">Documentos</a></li>
                                </ul>
                            </li>  
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="/RN/recursos/perfil" class="LetraColor">Perfil</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle LetraColor" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="message">
                                    Usuario ${flash.message} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="/RN/sec/index">iniciar</a></li>
                                    <li><a href="/RN/sec/salida">Salir</a></li>
                                    <li><a href="/RN/cuenta/index">Cuenta</a></li>
                                    <li><a href="/RN/rol/index">Rol</a></li>
                                    <li><a href="/RN/cuentaRol/index">Asignacion</a></li>
                                    <li><a href="/RN/correo/index">Registrarse</a></li>
                                </ul>
                            </li>
                        </ul>
                       
                        </div><!-- /.navbar-collapse -->

                </div><!-- /.navbar-header -->
            </div> <!-- /.container-fluid -->


    <div id="header" class="container-fluid">
        <div class="row">
            <div class="texto-header">
                <h2 class="text-center"><b>Recursos Naturales</b> </h2>
                <br>                        
                   <p>La materia de Recursos Naturales es una asignatura obligatoria del plan de estudios actual  (1997) de la carrera de Biología.</p> 
                   <p>El objetivo es analizar la problemática socio-ambiental, principalmente con un enfoque nacional el cual se cubre a partir de la revisión teórica de conceptos, el desarrollo de un trabajo semestral y una salida a campo.</p>
                   <p>Desde sus inicios, los profesores que imparten el curso conforman el Colegio de la materia, y en conjunto revisan los contenidos, la literatura, los alcances del trabajo semestral entre otros.</p>
            </div>
        </div>
    </div>
    
    
    <!-- Nueva linea -->
    <hr size="10" style="color: #5C946E;"/>
   
    <div class="container">
        <!-- Custom container -->
        <div class="row ">
        <!-- Contenedor 1 -->
          <div class="col-sm-6 col-md-3 text-justify">
            <div class="thumbnail ">
              <img src="/RN/images/professor.png">
              <div class="caption">
                <h4 class="text-center"><b>Profesores</b></h4>
                <h4 class="ajusteHome">
                    <br>
                    <p>Perfiles curriculares de los profesores que imparten el curso y trabajos semestrales asociados que han dirigido...</p>
                </h4>
                <p><a href="/RN/profesor/index" class="center-block btn btn-success" role="button">Descubrir</a></p>
              </div>
            </div>
          </div>  

        <!-- Contenedor 2 -->
          <div class="col-sm-6 col-md-3 text-justify">
            <div class="thumbnail ">
              <img src="/RN/images/calendar.png" >
              <div class="caption">
                <h4 class="text-center"><b>Trabajos semestrales</b></h4>
                <h4 class="ajusteHome">
                    <br>
                    <p>Acervo histórico de los trabajos semestrales que se han desarrollado en la materia...</p>
                </h4>
                <p><a href="/RN/trabajo/index" class="center-block btn btn-success" role="button">Descubrir</a></p>
              </div>
            </div>
          </div>  

        <!-- Contenedor 3 -->
          <div class="col-sm-6 col-md-3 text-justify">
            <div class="thumbnail ">
              <img src="/RN/images/open-book.png" >
              <div class="caption">
                <h4 class="text-center"><b>Acervo bibliográfico</b></h4>
                <h4 class="ajusteHome">
                    <br>
                    <p>Literatura base y complementaria que servirá de guia.a lo largo del curso....</p>
                </h4>
                <p><a href="#" class="center-block btn btn-success" role="button">Descubrir</a></p>
              </div>
            </div>
          </div>  
        

        <!-- Contenedor 4 -->
          <div class="col-sm-6 col-md-3 text-justify">
            <div class="thumbnail ">
              <img src="/RN/images/camping.png">
              <div class="caption">
                <h4 class="text-center"><b>Salidas a campo</b></h4>
                <h4 class="ajusteHome">
                    <br>
                    <p>Catálogo de sitios para realizar prácticas de campo...</p>
                </h4>
                    <p><a href="#" class="center-block btn btn-success " role="button">Descubrir</a></p>
              </div>
            </div>
          </div>  
        </div>  

    </div>

    <!-- Container fluid -->
    <footer class="footer-fixed textoColor piePagina espacio_02">
        <img src="images/Miztli.png" alt="S.C.I." class="estiloLogo img-responsive">
        <h6 class="text-center funteLetra">Desarrollado por Miztli, Scientific Computational Intelligence</h6>


    </footer>





        <!-- Scripts -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
