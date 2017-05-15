
<%@ page import="ciencias.recursosnaturales.sec.Correo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'correo.label', default: 'Correo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		  <g:form action="enviar">
                    Nombre : <g:field type="text" name="nombre"/><br>
                    Email  : <g:field type="email" name="email"/><br>
                    Motivos: <g:field type="text" name="motivos"/><br>
                    
                    <g:submitButton name="submit" value="Enviar datos"/>
                </g:form>   
                    <div class="btn">
                        <a href="/RN/correo/show">ver Correo</a>
                    </div>
	</body>
</html>
