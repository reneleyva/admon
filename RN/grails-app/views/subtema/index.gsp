
<%@ page import="ciencias.recursosnaturales.archivos.Subtema" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'tema.label', default: 'Tema')}" />
        <title>Temario</title>
    </head>
    <body>
        <!-- Nuevo renglon -->
        <div class="container">
            <section class="row">
                <div class="container">
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>
                </div>
            </section>  
        </div>

        <!-- Nuevo renglon -->
        <div class="container">
            <section class="row">
                <div class="container">
                        <h1 class="text-center">Subtemas</h1>
                 </div>
            </section>  
        </div>

        <!-- Nuevo renglon -->
        <div class="container">
             <!-- Tabla -->
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover ">
                    <thead>
                        <tr>
                            <g:sortableColumn property="nombre" title="${message(code: 'subtema.nombre.label', default: 'Nombre')}" />
                            <g:sortableColumn property="tema" title="${message(code: 'subtema.tema.label', default: 'Tema')}" />
                        </tr>                        
                    </thead>
                    <tbody>        
                        <g:each in="${subtemaInstanceList}" status="i" var="subtemaInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td><g:link action="show" id="${subtemaInstance.id}">${fieldValue(bean: subtemaInstance, field: "nombre")}</g:link></td>
                                <td>${fieldValue(bean: subtemaInstance, field: "tema")}</td>
                            </tr>
                        </g:each>                        
                    </tbody>
                </table>
                <br>
                <nav class="center-block">
                    <ul class="pagination">
                        <li> <g:paginate  total="${subtemaInstanceCount ?: 0}" /> </li>
                    </ul>
                </nav>
            </div>                        
                        
            <!-- Nuevo renglon -->
            <div class="row">
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>  
                <!-- Crear Solo Admin      -->
                <div class="row">                              
                    <!-- Nuevo Tema -->         
                    <div class="btn btn-primary" role="navigation">
                        <g:link class="create LetraColor" action="create" role="button" >Nuevo Subtema</g:link></li>
                        </div>
                    </div> 
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>  
            </div>
        </div>

    </body>
</html>
