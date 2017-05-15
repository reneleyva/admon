<%@ page import="ciencias.recursosnaturales.sec.Cuenta" %>



<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="cuenta.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${cuentaInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="cuenta.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${cuentaInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="cuenta.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${cuentaInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="cuenta.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${cuentaInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="cuenta.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${cuentaInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="cuenta.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${cuentaInstance?.passwordExpired}" />

</div>

