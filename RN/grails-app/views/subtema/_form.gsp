<%@ page import="ciencias.recursosnaturales.archivos.Subtema" %>


<div class="form-group ${hasErrors(bean: subtemaInstance, field: 'nombre', 'error')} required">
    <h4 for="nombre">
        <g:message code="subtema.nombre.label" default="Nombre" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <h5>
        <g:textField class="form-control"  name="nombre" required="" value="${temaInstance?.nombre}"/>
    </h5>
</div>

<div class="form-group ${hasErrors(bean: subtemaInstance, field: 'tema', 'error')} required">
	<h4 for="tema">
            <g:message code="subtema.tema.label" default="Tema" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
	</h4>
        <h5>
            <g:select id="tema" name="tema.id" from="${ciencias.recursosnaturales.archivos.Tema.list()}" optionKey="id" required="" value="${subtemaInstance?.tema?.id}" class="many-to-one"/>
        </h5>
</div>



