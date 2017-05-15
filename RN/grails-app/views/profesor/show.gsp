
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
                        <a class="active nombre LetraColor navbar-brand" href="/RN" >Home</a>
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








        <div class="container">

            <div class="container-fluid">
<!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>

<!-- Nuevo Contenedor -->
                <div class="container">

                     <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/> 

                    <!-- Nuevo renglon -->
                    <div class="row">
                            <!-- Nombre --> 
                        <g:if test="${profesorInstance?.nombre}">
                            <h2 class="text-right"><strong><em>
                                        <span class="property-value" aria-labelledby="grado-label"><g:fieldValue bean="${profesorInstance}" field="grado"/></span>
                                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${profesorInstance}" field="nombre"/></span>
                                        <span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${profesorInstance}" field="apellidos"/></span>
                                    </em></strong></h2>
                                </g:if>

    <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/> 

                                    <!-- Correo --> 
                        <h3><strong>Contacto</strong></h3>
                        <g:if test="${profesorInstance?.correo}">
                            <span id="correo-label" class="property-label"><h4><g:fieldValue bean="${profesorInstance}" field="correo"/></h4></span>
                                </g:if>
                    </div>
                </div>

<!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>                   

                    <!-- Nuevo Contenedor -->
                <div class="container">
                        <!-- Nuevo renglon -->
                    <div class="row">                              
                        <!-- Semblanza -->
                        <h3><strong>Semblanza</strong></h3>
                        <g:if test="${profesorInstance?.descripcion}">
                            <p class="text-justify">
                                <span class="property-value text-justify" aria-labelledby="descripcion-label"><g:fieldValue bean="${profesorInstance}" field="descripcion"/></span>
                            </p>
                        </g:if>
                    </div>

<!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>        

                            <!-- Nuevo renglon -->
                    <div class="row">                              
                        <!-- Semblanza -->
                        <h3><strong>Trabajos de recursos naturales</strong></h3>                    
                            <!-- Trabajos Recursos Naturales --> 
                        <g:if test="${profesorInstance?.trabajos}">
                            <g:each in="${profesorInstance.trabajos}" var="t">
                                <span class="property-value" aria-labelledby="trabajos-label"><g:link controller="trabajo" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                            </g:each>
                        </g:if>
                    </div>

<!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>

                    <div class="row">
                    <!-- Index -->
                        <div class="btn btn-success">
                            <p><a href="/RN/profesor/index" role="button" class="LetraColor">Lista de Profesores</a></p>
                        </div> 
                    </div> 
<!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>
                        <!-- Nuevo renglon -->
                    <div class="row">
                        <h5 class="text-center " role="button" href="http://www.fciencias.unam.mx/">Facultad de Ciencias, UNAM</h5>
                        <!-- Semblanza -->      
                    </div>


<!-- Editar Solo Admin      -->
                    <div class="row">                              

                        <g:form url="[resource:profesorInstance, action:'delete']" method="DELETE">
                            <fieldset class="buttons">
                                <g:link class="edit" action="edit" resource="${profesorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                    </div>

                    <div class="row">  
                        <g:form url="[resource:profesorInstance, action:'delete']" method="DELETE">
                            <fieldset class="btn-group btn-group-vertical">
                                <button type="button" class="btn btn-warning"><g:link class="edit LetraColor" action="edit" resource="${profesorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                                <button type="button" class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /> Eliminar</button>
                            </fieldset> 
                        </g:form>
                    </div>
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
