
<%@ page import="ciencias.recursosnaturales.sec.Correo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'correo.label', default: 'Correo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
            <div id="registro">
                <h2>Registrarse</h2>
		  <g:form action="enviar" >
                      <b>Nombre :</b> <br><g:field type="text" name="nombre"/><br>
                      <b> Email  :</b> <br><g:field type="email" name="email"/><br>
                      <b> Motivos  :</b> <br><g:field type="text" name="motivos"/><br>
                      <button type="submit" class="btn btn-default">Enviar</button>
                   <!-- <g:submitButton name="submit" value="Enviar datos"/>-->
                </g:form>   
                        <!--<a href="/RN/correo/show" class="btn btn-default">Ver Correo</a>-->
            </div>
	</body>
</html>
