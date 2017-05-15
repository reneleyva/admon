
<%@ page import="ciencias.recursosnaturales.sec.Correo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'correo.label', default: 'Correo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
            <p> Nombre: ${datos.nombre}
            <br>motivoa: ${datos.motivos}
            <br>Email: ${datos.email} </p>
	</body>
</html>
