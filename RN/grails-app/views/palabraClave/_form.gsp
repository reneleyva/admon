<%@ page import="ciencias.recursosnaturales.archivos.PalabraClave" %>

<!-- Nombre -->
<div class="form-group ${hasErrors(bean: palabraClaveInstance, field: 'palabra', 'error')} ">
    <h4 for="palabra">
        <g:message code="palabraClave.palabra.label" default="Palabra" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <h5>        
        <g:textField class="form-control" name="palabra" value="${palabraClaveInstance?.palabra}"/>
    </h5>
</div>

<!-- Palabras clave -->
<div class="form-group ${hasErrors(bean: palabraClaveInstance, field: 'trabajos', 'error')} ">
    <h4 for="trabajos">
        <g:message class="form-control" code="palabraClave.trabajos.label" default="Trabajos" />
    </h4>
</div>

