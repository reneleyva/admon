<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Añadir Archivos</title>
    </head>
    <body>
<!-- Contendor -->
        <div class="container">

            <div class="container-fluid">
                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>    

                <!-- Index -->
                <div class="row">
                    <div class="btn btn-success">
                        <p><a href="/RN/document/list" role="button" class="LetraColor">Lista de documentos</a></p>
                    </div> 
                </div>


                <div class="content scaffold-create" role="main">
                    <h4 class="text-center">Subir un archivo nuevo</h4>
                    <!-- Nueva linea -->
                    <hr size="10" style="color: #5C946E;"/>
                    <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
                    <g:uploadForm action="upload">
                        <fieldset class="form">
                            <input type="file" name="file" />
                        </fieldset>

                        <fieldset class="btn-group">
                            <g:submitButton name="upload" class="save" value="Cargar" />
                        </fieldset>
                    </g:uploadForm>
                </div>
            </div>

<!-- Nueva linea -->
            <hr size="10" style="color: #5C946E;"/>  
        </div>
    </div>
</div>        

        <!-- Scripts -->
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>     
</body>
</html>
