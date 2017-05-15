
<%@ page import="ciencias.recursosnaturales.archivos.Trabajo" %>
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
                    <!-- Jumbotron -->
                    <div class="jumbotron">
                        <h1 class="text-center">Trabajos semestrales</h1>
                        <p class="text-justify">Desde los inicios de plan de estudios de la carrera de Biología de la Facultad de Ciencias, el colegio Recursos Naturales ha impulsado el desarrollo de proyectos de investigación originales, diseñados por los alumnos, y dirigidos por sus profesores, que fortalezcan la capacidad de análisis, síntesis y decisión sobre los procesos socio‐ambientales vinculados al manejo de los ecosistemas. Aquí podrás encontrar los resúmenes de los trabajos semestrales y los datos de los autores por si quieres contactar directamente con ellos. </p>
                    </div>
                </div>
            </section>  
        </div>
        
        <!-- Nuevo renglon -->
        <div class="container">
             <!-- Tabla -->
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover ">
                        <!-- Encabezado -->
                        <tr class="bg-2 text-center">
                            <g:sortableColumn class="encabezadoFila text-center" property="titulo" title="${message(code: 'trabajo.titulo.label', default: 'Titulo')}" />
                            <g:sortableColumn class="encabezadoFila text-center" property="tema" title="${message(code: 'trabajo.tema.label', default: 'Tema')}" />
                            <g:sortableColumn class="encabezadoFila text-center" property="fechaCreacion" title="${message(code: 'trabajo.fechaCreacion.label', default: 'Fecha Creacion')}" />
                            
                        </tr>
                        <!-- contenido tabla -->
                        <tbody>
                            <g:each in="${trabajoInstanceList}" status="i" var="trabajoInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="show" id="${trabajoInstance.id}">${fieldValue(bean: trabajoInstance, field: "titulo")}</g:link></td>
                                    <td>${fieldValue(bean: trabajoInstance, field: "tema")}</td>
                                    <td><g:formatDate date="${trabajoInstance.fechaCreacion}"  format="yyyy-MM" /></td>
                                </tr>
                            </g:each>
                        </tbody>
               </table>
            </div>
            
            <br>
            <div class="center-block">
                <ul class="pagination">
                    <li> <g:paginate total="${trabajoInstanceCount ?: 0}" /> </li>
                </ul>
            </div>     

        </div>  

        <!-- Scripts -->
            <script src="../js/jquery-3.1.1.min.js"></script>
            <script src="../js/bootstrap.min.js"></script>

    </body>     
</html>
