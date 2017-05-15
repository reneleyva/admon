
<%@ page import="ciencias.recursosnaturales.archivos.PalabraClave" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'palabraClave.label', default: 'PalabraClave')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="container-fluid">

                <!-- Nueva linea -->
            <hr size="10" style="color: #5C946E;"/>


<!-- Nuevo renglon -->
            <div class="container">

                <div class="row text-center"><h1>Lista de palabras clave</h1>
                </div>

 <!-- Tabla -->
                <div class="table-responsive">        
                    <table class="table table-striped table-bordered table-hover ">
                        <thead>
                            <tr>
                                <g:sortableColumn class="text-center" property="palabra" title="${message(code: 'palabraClave.palabra.label', default: 'Palabras clave')}" />
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${palabraClaveInstanceList}" status="i" var="palabraClaveInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td><g:link action="show" id="${palabraClaveInstance.id}">${fieldValue(bean: palabraClaveInstance, field: "palabra")}</g:link></td>

                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                
                

                <div class="center-block">
                    <ul class="pagination">
                        <li> <g:paginate  total="${palabraClaveInstanceCount ?: 0}" /> </li>
                    </ul>
                </div>

                
                
                <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                    <!-- Editar Solo Admin      -->
                    <div class="row">                              
                        <!-- Nuevo Profesor -->         
                        <div class="btn btn-primary" role="navigation">
                            <g:link class="create LetraColor" action="create" role="button" >Nueva palabra clave</g:link></li>
                            </div>
                        </div> 
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                </div> 

            </div>
        </div>
    </body>
</html>
