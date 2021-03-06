<%@ page import="ciencias.recursosnaturales.archivos.Profesor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Recursos Naturales</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/estilos.css">
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
                        <a class="active nombre LetraColor navbar-brand" href="/RecursosNaturales" >Home</a>
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


<!-- Contendor -->
        <div class="container">

            <div class="container-fluid">

                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/> 

                <div id="edit-profesor" class="content scaffold-edit" role="main">
                    <h1 class="text-center"><strong>Editar profesor</strong></h1>
                <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>   

                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${profesorInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${profesorInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
                    </g:hasErrors>
                    <g:form url="[resource:profesorInstance, action:'update']" method="PUT" >
                        <g:hiddenField name="version" value="${profesorInstance?.version}" />
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <div class="btn">
                            <g:actionSubmit class="save" action="update" value="Guardar" />
                        </div>
                    </g:form>
                </div>

               <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                    <!-- Editar Solo Admin      -->
                    <div class="row">                              
                        <!-- Nuevo Profesor -->         
                        <div class="btn btn-primary" role="navigation">
                            <g:link class="create LetraColor" action="create" role="button" >Nuevo Profesor</g:link></li>
                            </div>
                        </div> 
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                </div>
            </div>
        </div>

<!-- Pie de Página -->
        <footer class="container-fluid textoColor piePagina espacio_02">
            <img src="../../images/Miztli.png" alt="S.C.I." class="estiloLogo img-responsive">
            <h6 class="text-center funteLetra">Desarrollado por Miztli, Scientific Computational Intelligence</h6>
        </footer>


        <!-- Scripts -->
        <script src="../../js/jquery-3.1.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>     
    </body>
</html>
