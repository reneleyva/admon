<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Trabajos</title>
    </head>
    <body>
        <div class="container-fluid">

                <!-- Nueva linea -->
            <hr size="10" style="color: #5C946E;"/>


            <!-- Nuevo renglon -->
            <div class="container">

                <div class="row text-center"><h1>Lista de documentos</h1>
                </div>

            <!-- Tabla -->
                <div class="table-responsive">        
                    <table class="table table-striped table-bordered table-hover ">
                        <thead>
                            <tr>
                                <g:sortableColumn property="filename" title="Nombre Archivo" />
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${documentInstanceList}" status="i" var="documentInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="download" id="${documentInstance.id}">${documentInstance.filename}</g:link></td>
                                    </tr>
                            </g:each>
                        </tbody>
                    </table>
                </div>
                <!-- Nuevo renglon -->
                <div class="row">
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                    <!-- Editar Solo Admin      -->
                    <div class="row">                              
                        <!-- Nuevo Profesor -->         
                        <div class="btn btn-primary" role="navigation">
                            <g:link class="create LetraColor" action="create" role="button" >Nuevo documento</g:link></li>
                            </div>
                        </div> 
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>  
                </div>                 
                <div class="center-block">
                    <ul class="pagination">
                        <li> <g:paginate  total="${palabraClaveInstanceCount ?: 0}" /> </li>
                    </ul>
                </div>

            </div>
        </div>
    </body>
</html>