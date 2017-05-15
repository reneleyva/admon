<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Añadir Archivos</title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <ul><li><g:link class="list" action="list">Lista documentos</g:link></li></ul>
            </div>
            <div class="content scaffold-create" role="main">
                <h1>Cargar nuevo documento</h1>

            <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>
            <g:uploadForm action="upload">
                <fieldset class="form">
                    <input type="file" name="file" />
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="upload" class="save" value="Cargar" />
                </fieldset>
            </g:uploadForm>
        </div>
    </body>
</html>
