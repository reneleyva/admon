package ciencias.recursosnaturales.archivos

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
class ProfesorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

//todos lo pueden ver
    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 20, 100)
        respond Profesor.list(params), model:[profesorInstanceCount: Profesor.count()]
    }
    
//todos lo pueden ver
    @Secured(['permitAll'])
    def show(Profesor profesorInstance) {
        respond profesorInstance
    }

//solo el admin
    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Profesor(params)
    }

//solo el admin
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Profesor profesorInstance) {
        if (profesorInstance == null) {
            notFound()
            return
        }

        if (profesorInstance.hasErrors()) {
            respond profesorInstance.errors, view:'create'
            return
        }

        profesorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profesor.label', default: 'Profesor'), profesorInstance.id])
                redirect profesorInstance
            }
            '*' { respond profesorInstance, [status: CREATED] }
        }
    }
    
//solo el admin
    @Secured(['ROLE_ADMIN'])
    def edit(Profesor profesorInstance) {
        respond profesorInstance
    }

//solo el admin
    @Secured(['ROLE_ADMIN'])    
    @Transactional
    def update(Profesor profesorInstance) {
        if (profesorInstance == null) {
            notFound()
            return
        }

        if (profesorInstance.hasErrors()) {
            respond profesorInstance.errors, view:'edit'
            return
        }

        profesorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
                redirect profesorInstance
            }
            '*'{ respond profesorInstance, [status: OK] }
        }
    }

//solo el admin
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Profesor profesorInstance) {

        if (profesorInstance == null) {
            notFound()
            return
        }

        profesorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
 
//todos lo pueden ver
    @Secured(['permitAll'])
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesor.label', default: 'Profesor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
