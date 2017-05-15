
<%@ page import="ciencias.recursosnaturales.archivos.Trabajo" %>
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
                    <div id="show-trabajo" class="content scaffold-show" role="main">

<!-- Lista de trabajos -->
                        <div class="row">
                            <!-- Index -->
                            <div class="btn btn-success">
                                <p><a href="/RN/trabajo/index" role="button" class="LetraColor">Lista de trabajos semestrales</a></p>
                            </div> 
                        </div>                         

                        <h3 class="text-right"><em>Detalle de trabajo semestral</em></h3>

                                <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>


                        <div class="row">

                            <!-- Título -->
                            <g:if test="${trabajoInstance?.titulo}">
                                <h4 class="text"><strong>
                                        <h4><strong>Título:</strong></h4>
                                    </strong> <em>
                                        <span class="property-value text-center" aria-labelledby="titulo-label"><g:fieldValue bean="${trabajoInstance}" field="titulo"/></span>
                                    </em></h4>
                                </g:if>

                            <!-- Nueva linea -->
                            <hr size="10" style="color: #5C946E;"/>                             

                            <!-- Descripción -->
                            <g:if test="${trabajoInstance?.descripcion}">
                                <h4 class="text"><strong>
                                        <h4><strong>Descripción:</strong></h4>
                                    </strong><em>
                                        <span class="property-value text-justify" aria-labelledby="descripcion-label"><g:fieldValue bean="${trabajoInstance}" field="descripcion"/></span>
                                    </em></h4>
                                </g:if>

                        </div>  

                            <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/>  

                        <div class="row">                           

                            <!-- Profesor -->
                            <g:if test="${trabajoInstance?.profesor}">
                                <h4 class="text col-xs-12 col-sm-6 col-md-3"><strong>
                                        <h4><strong>Profesor responsable:</strong></h4>   
                                    </strong><em>
                                        <span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor" action="show" id="${trabajoInstance?.profesor?.id}">${trabajoInstance?.profesor?.encodeAsHTML()}</g:link></span>
                                        </em></h4>
                                </g:if>                     

                            <!-- Tema -->                            
                                <g:if test="${trabajoInstance?.tema}">
                                <h4 class="text col-xs-12 col-sm-6 col-md-3 "><strong>
                                        <h4><strong>Tema:</strong></h4>   
                                    </strong><em>
                                        <span class="property-value" aria-labelledby="tema-label"><g:link controller="subtema" action="show" id="${trabajoInstance?.tema?.id}">${trabajoInstance?.tema?.encodeAsHTML()}</g:link></span>
                                        </em></h4>
                                </g:if> 

                                <!-- Palabras claves -->
                                <g:if test="${trabajoInstance?.palabras}">
                                <h4 class="text col-xs-12 col-sm-6 col-md-3 "><strong>
                                        <h4><strong>Palabras clave:</strong></h4>   
                                    </strong><em>
                                        <g:each in="${trabajoInstance.palabras}" var="p">
                                            <span class="property-value" aria-labelledby="palabras-label"><g:link controller="palabraClave" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
                                        </g:each>
                                    </em></h4>
                                </g:if>                            

                        <!-- Fecha de creacion -->
                                <g:if test="${trabajoInstance?.fechaCreacion}">
                                <h4 class="text col-xs-12 col-sm-6 col-md-3"><strong>
                                        <h4><strong>Fecha de creación:</strong></h4>   
                                    </strong><em>
                                        <span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${trabajoInstance?.fechaCreacion}"  format="yyyy-MM"/></span>
                                    </em></h4>
                                </g:if>                              

                        </div>

    <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/>                                     

                        <div class="row">
                    <!-- Colaboradores -->
                            <g:if test="${trabajoInstance?.colaboradores}">
                                <h4 class="text"><strong>
                                        <h4><strong>Autores:</strong></h4>   
                                    </strong><em>
                                        <span class="property-value" aria-labelledby="colaboradores-label"><g:fieldValue bean="${trabajoInstance}" field="colaboradores"/></span>
                                    </em></h4>
                                </g:if>

                        </div>

                        <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/> 

                        <div class="row">
                        <!-- Archivos -->
                            <g:if test="${trabajoInstance?.documento}">
                                <h4 class="text"><strong>
                                        <h4><strong>Archivos:</strong></h4>   
                                    </strong><em>
                                        <g:each in="${trabajoInstance.documento}" var="d">
                                            <span class="property-value" aria-labelledby="documento-label"><g:link controller="document" action="download" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
                                        </g:each>
                                    </em></h4>
                                </g:if>
                        </div>

                    </div>

                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>


                    <!-- Editar Solo Admin      -->
                    <div class="row">                
                        <button type="button" class="edit btn btn-warning btn-center" >
                            <h5><g:link class="edit LetraColor" action="edit" resource="${trabajoInstance}">Editar</g:link></h5>
                            </button>  
                                      <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/>      
                        <button type="button" class="btn btn-danger " class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" >
                            <h5>Eliminar</h5>
                        </button>   
                                            <!-- Nueva linea -->
                        <hr size="10" style="color: #5C946E;"/>

                        <!-- Nuevo Profesor -->         
                        <div class="btn btn-primary" role="navigation">
                            <g:link class="create LetraColor" action="create" role="button" >Nuevo trabajo</g:link></li>
                        </div>
                        </div> 
                    </div>
                </div>

        </div>
        <!-- Nueva linea -->
        <hr size="10" style="color: #5C946E;"/>

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
