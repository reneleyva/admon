
<%@ page import="ciencias.recursosnaturales.sec.Recursos" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">

    </head>
    <body>

            <div id="show-recursos" class="content scaffold-show" role="main">
                <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list recursos">

            </ol>

            este es mi perfil
            
        </div>
    </body>
</html>
