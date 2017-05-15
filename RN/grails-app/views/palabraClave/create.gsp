<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'palabraClave.label', default: 'PalabraClave')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

<!-- Contendor -->
        <div class="container">

            <div class="container-fluid">

                <!-- Nueva linea -->
                <hr size="10" style="color: #5C946E;"/>


                <div id="create-palabraClave" class="content scaffold-create" role="main">
                    <h1 class="text-center">Crear palabra clave</h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${palabraClaveInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${palabraClaveInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
                    </g:hasErrors>
                    <g:form url="[resource:palabraClaveInstance, action:'save']" >
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div
            <!-- Nueva linea -->
            <hr size="10" style="color: #5C946E;"/>            
            <!-- Index -->
            <div class="row">

                <div class="btn btn-success">
                    <p><a href="/RN/palabraClave/index" role="button" class="LetraColor">Lista de palabras</a></p>
                </div> 
            </div> 
<!-- Nueva linea -->
            <hr size="10" style="color: #5C946E;"/>  
        </div>

        <!-- Scripts -->
        <script src="../js/jquery-3.1.1.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>     
    </body>
</html>
