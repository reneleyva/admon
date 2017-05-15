<%@ page import="ciencias.recursosnaturales.sec.CuentaRol" %>



<div class="fieldcontain ${hasErrors(bean: cuentaRolInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="cuentaRol.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${ciencias.recursosnaturales.sec.Rol.list()}" optionKey="id" required="" value="${cuentaRolInstance?.rol?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaRolInstance, field: 'cuenta', 'error')} required">
	<label for="cuenta">
		<g:message code="cuentaRol.cuenta.label" default="Cuenta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cuenta" name="cuenta.id" from="${ciencias.recursosnaturales.sec.Cuenta.list()}" optionKey="id" required="" value="${cuentaRolInstance?.cuenta?.id}" class="many-to-one"/>

</div>

