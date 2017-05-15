<%@ page import="ciencias.recursosnaturales.archivos.Tema" %>

<!-- Nombre -->
<div class="form-group  ${hasErrors(bean: temaInstance, field: 'nombre', 'error')} required">
    <h4 for="nombre">
        <g:message code="tema.nombre.label" default="Nombre" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <h5>
        <g:textField class="form-control"  name="nombre" required="" value="${temaInstance?.nombre}"/>
    </h5>
</div>
