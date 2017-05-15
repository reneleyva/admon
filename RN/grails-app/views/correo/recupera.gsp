<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
		
    </head>
    <body>
        <h1>Recupera tu contraseña</h1>
        <g:form controller="correo" action="confirma">
                    numero de conformacion : <g:field type="text" name="confimanum" /><br>
                    nuevaContaseña : <g:field type="password" name="newcontra"/><br>
                    contraseña: <g:field type="password" name="repitecontra"/><br>
                    
                    <g:submitButton name="submit" value="Confirmar"/>
                </g:form>   
    </body>
</html>