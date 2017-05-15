<%@ page import="ciencias.recursosnaturales.archivos.Profesor" %>

<!-- Nombre -->
<div class="form-group  ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">  
    <h4 for="nombre" class="control-label" for="inputSuccess1">
        <g:message code="profesor.nombre.label" default="Nombre" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <h5>
        <g:textField  class="form-control" name="nombre" required="" value="${profesorInstance?.nombre}"/>
    </h5>
</div>

<!-- Apellido -->
<div class="form-group ${hasErrors(bean: profesorInstance, field: 'apellidos', 'error')} required">
    <h4 for="apellidos">
        <g:message code="profesor.apellidos.label" default="Apellidos" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <h5>  
        <g:textField class="form-control" name="apellidos" required="" value="${profesorInstance?.apellidos}"/>
    </h5>
</div>

<!-- Grado -->
<div class="form-group ${hasErrors(bean: profesorInstance, field: 'grado', 'error')} required">
    <h4 for="grado">
        <g:message code="profesor.grado.label" default="Grado" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <g:select class="form-control" name="grado" from="${profesorInstance.constraints.grado.inList}" required="" value="${profesorInstance?.grado}" valueMessagePrefix="profesor.grado"/>
</div>

<!-- Correo -->
<div class="form-group ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required">
    <h4 for="correo">
        <g:message code="profesor.correo.label" default="Correo" />
    </h4>
    <g:field class="form-control" type="email" name="correo" required="" value="${profesorInstance?.correo}"/>
</div>

<!-- Descripcion -->
<div class="form-group ${hasErrors(bean: profesorInstance, field: 'descripcion', 'error')} required">
    <h4 for="descripcion">
        <g:message code="profesor.descripcion.label" default="Descripción" />
    </h4>
    <g:textArea class="form-control" name="descripcion" cols="40" rows="5" maxlength="5000" value="${profesorInstance?.descripcion}"/>
</div>

<!-- Colegio Recursos Naturales -->
<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'academia', 'error')} required">
    <h4 for="academia">
        ¿Activo en el colegio de profesores?
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <g:select class="form-control" name="academia" from="${profesorInstance.constraints.academia.inList}" required="" value="${profesorInstance?.academia}" valueMessagePrefix="profesor.academia"/>
</div>

<!-- Nueva linea -->
<hr size="10" style="color: #5C946E;"/>

<!-- Trabajos -->
<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'trabajos', 'error')} ">
    <h4 for="trabajos">
        <g:message code="profesor.trabajos.label" default="Trabajos" />
    </h4>

    <ul class="one-to-many">
        <g:each in="${profesorInstance?.trabajos?}" var="t">
            <li><g:link controller="trabajo" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
       </g:each>
      
        <!-- Nueva linea -->
       <hr size="10" style="color: #5C946E;"/>     

        <div class="btn btn-success">
            <g:link class="LetraColor" controller="trabajo" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'trabajo.label', default: 'Trabajo')])}</g:link>
        </div>
    </ul>
<!-- Nueva linea -->
    <hr size="10" style="color: #5C946E;"/>    
</div>

