<%@ page import="ciencias.recursosnaturales.archivos.Trabajo" %>

<!-- Título -->
<div class="form-group  ${hasErrors(bean: trabajoInstance, field: 'titulo', 'error')} required">
    <h4 for="titulo">
        <g:message code="trabajo.titulo.label" default="Título" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <g:textField class="form-control" name="titulo" required="" value="${trabajoInstance?.titulo}"/>
</div>


<!-- Descripción -->
<div class="form-group ${hasErrors(bean: trabajoInstance, field: 'descripcion', 'error')} required">
    <h4 for="descripcion">
        <g:message code="trabajo.descripcion.label" default="Resumen" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
    <g:textArea class="form-control" name="descripcion" cols="40" rows="5" maxlength="4000" required="" value="${trabajoInstance?.descripcion}"/>
</div>

<section class="row">
<!-- Fecha creación -->
    <div class="form-group col-xs-12 col-sm-6 ${hasErrors(bean: trabajoInstance, field: 'fechaCreacion', 'error')} required">
        <h4 for="fechaCreacion">
            <g:message code="trabajo.fechaCreacion.label" default="Fecha Creación" />
            <span class="required-indicator" style="color: #C1292E;">*</span>
        </h4>
        <g:datePicker name="fechaCreacion" precision="month"  value="${trabajoInstance?.fechaCreacion}"  />
    </div>
    <!-- Profesor -->
    <div class="form-group col-xs-12 col-sm-6 ${hasErrors(bean: trabajoInstance, field: 'profesor', 'error')} required">
        <h4 for="profesor">
            <g:message code="trabajo.profesor.label" default="Profesor" />
            <span class="required-indicator" style="color: #C1292E;">*</span>
        </h4>
        <g:select id="profesor" name="profesor.id" from="${ciencias.recursosnaturales.archivos.Profesor.list()}" optionKey="id" required="" value="${trabajoInstance?.profesor?.id}" class="many-to-one"/>
    </div>
    <!-- Tema -->
    <div class="form-group col-xs-12 col-sm-6 ${hasErrors(bean: trabajoInstance, field: 'tema', 'error')} required">
        <h4 for="tema">
            <g:message code="trabajo.tema.label" default="Tema" />
            <span class="required-indicator" style="color: #C1292E;">*</span>
        </h4>
            <g:select class="form-control" id="tema" name="tema.id" from="${ciencias.recursosnaturales.archivos.Subtema.list()}" optionKey="id" required="" value="${trabajoInstance?.tema?.id}" class="many-to-one"/>
    </div>
    <!-- Simposio -->
    <div class="form-group col-xs-12 col-sm-6 ${hasErrors(bean: trabajoInstance, field: 'simposio', 'error')} required">
        <h4 for="simposio">
            <g:message code="trabajo.simposio.label" default="Trabajo de simposio" />
            <span class="required-indicator" style="color: #C1292E;">*</span>
        </h4>
            <g:select class="form-control" name="simposio" from="${trabajoInstance.constraints.simposio.inList}" required="" value="${trabajoInstance?.simposio}" valueMessagePrefix="trabajo.simposio"/>
    </div>
</section>

<!-- Colaboradores -->
<div class="form-group ${hasErrors(bean: trabajoInstance, field: 'colaboradores', 'error')} required">
    <h4 for="colaboradores">
        <g:message code="trabajo.colaboradores.label" default="Autores" />
        <span class="required-indicator" style="color: #C1292E;">*</span>
    </h4>
        <g:textArea class="form-control" name="colaboradores" cols="40" rows="5" maxlength="2000" required="" value="${trabajoInstance?.colaboradores}"/>
</div>

<section class="row">
<!-- Documentos -->
    <div class="form-group col-sm-6 col-md-6 col-lg-6 ${hasErrors(bean: trabajoInstance, field: 'documento', 'error')} ">
        <h4 for="documento">
            <g:message code="trabajo.documento.label" default="Documento" />
        </h4>
            <g:select class="form-control" name="documento" from="${ciencias.recursosnaturales.archivos.Document.list()}" multiple="multiple" optionKey="id" size="5" value="${trabajoInstance?.documento*.id}" class="many-to-many"/>
        <!-- Subir archivo -->
        <a href="/RN/document/create">Subir archivo</a>
    </div>    


<!-- Palabras Claves -->
    <div class="form-group col-sm-6 col-md-6 col-lg-6 ${hasErrors(bean: trabajoInstance, field: 'palabras', 'error')} ">
        <h4 for="palabras">
            <g:message code="trabajo.palabras.label" default="Palabras" />
        </h4>
            <g:select class="form-control" name="palabras" from="${ciencias.recursosnaturales.archivos.PalabraClave.list()}" multiple="multiple" optionKey="id" size="5" value="${trabajoInstance?.palabras*.id}" class="many-to-many"/>
    </div>
</section>






