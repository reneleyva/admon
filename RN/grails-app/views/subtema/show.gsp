
<%@ page import="ciencias.recursosnaturales.archivos.Subtema" %>
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

                    <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/> 
                <div class="row">
                    <h2 class="text-right"><em>Detalle subtema</em></h2>
                </div>
                <!-- Index -->
                <div class="row">
                    <div class="btn btn-success">
                        <p><a href="/RN/subtema/index" role="button" class="LetraColor">Lista de subtemas</a></p>
                    </div> 
                </div> 
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/> 
                
                <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Nombre --> 
                <g:if test="${subtemaInstance?.nombre}">
                    <div class="fieldcontain">
                        <h3><strong>Subtema:</strong></h3>                            
                        <h4 class="text">
                            <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${subtemaInstance}" field="nombre"/></span>
                        </h4>
                    </div>
                </g:if>
                </div>
              
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>
                    
                <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Tema relacionado --> 
                    <g:if test="${subtemaInstance?.tema}">
                        <div class="fieldcontain">
                            <h3><strong>Tema relacionado:</strong></h3>                            
                            <h4 class="text">                            
                                <span class="property-value" aria-labelledby="tema-label"><g:link controller="tema" action="show" id="${subtemaInstance?.tema?.id}">${subtemaInstance?.tema?.encodeAsHTML()}</g:link></span>
                            </h4>
                        </div>
                    </g:if>
                </div>
              
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>

                <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Trabajos Relacionados --> 
                    <g:if test="${subtemaInstance?.trabajo}">
                        <div class="fieldcontain">
                            <h3><strong>Tema relacionado:</strong></h3>                            
                            <h4 class="text">  
                                <span class="property-value" aria-labelledby="trabajo-label"><g:link controller="trabajo" action="show" id="${subtemaInstance?.trabajo?.id}">${subtemaInstance?.trabajo?.encodeAsHTML()}</g:link></span>
                            </h4>
                        </div>
                    </g:if>
                </div>
              
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/> 

                <!-- Editar Solo Admin      -->
                <div class="row">                              
                    <g:form url="[resource:subtemaInstance, action:'delete']" method="DELETE">
                        <fieldset class="buttons">
                            <g:link class="edit" action="edit" resource="${subtemaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
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
                
   