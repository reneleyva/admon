
<%@ page import="ciencias.recursosnaturales.archivos.Profesor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Recursos Naturales</title>        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/estilos.css">
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
                    <!--Jumbotron -->
                    <div class="jumbotron">
                        <h1 class="text-center">Profesores</h1>
                        <p class="text-justify">La planta docente está conformada por especialistas de diversos temas relacionados con la materia que en muchos casos trabajan en instituciones de gobierno u organizaciones de la sociedad civil. Aquí podrás encontrar sus perfiles curriculares y los trabajos semestrales que han dirigido.</p>
                    </div>
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

                        <g:sortableColumn class="encabezadoFila text-center" property="nombre" title="${message(code: 'profesor.nombre.label', default: 'Nombre')}" />
                        <g:sortableColumn class="encabezadoFila text-center" property="apellidos" title="${message(code: 'profesor.apellidos.label', default: 'Apellidos')}" />
                            <g:sortableColumn class="encabezadoFila text-center" property="correo" title="${message(code: 'profesor.correo.label', default: 'Correo')}" />

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${profesorInstance.id}">${fieldValue(bean: profesorInstance, field: "nombre")}</g:link></td>
                            <td>${fieldValue(bean: profesorInstance, field: "apellidos")}</td>
                            <td>${fieldValue(bean: profesorInstance, field: "correo")}</td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
            
                <br>
                <div class="center-block">
                    <ul class="pagination">
                        <li> <g:paginate  total="${profesorInstanceCount ?: 0}" /> </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
