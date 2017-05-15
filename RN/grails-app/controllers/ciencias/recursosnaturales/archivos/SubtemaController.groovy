package ciencias.recursosnaturales.archivos

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
class SubtemaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    
    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Subtema.list(params), model:[subtemaInstanceCount: Subtema.count()]
    }

    @Secured(['permitAll'])
    def show(Subtema subtemaInstance) {
        respond subtemaInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Subtema(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Subtema subtemaInstance) {
        if (subtemaInstance == null) {
            notFound()
            return
        }

        if (subtemaInstance.hasErrors()) {
            respond subtemaInstance.errors, view:'create'
            return
        }

        subtemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'subtema.label', default: 'Subtema'), subtemaInstance.id])
                redirect subtemaInstance
            }
            '*' { respond subtemaInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Subtema subtemaInstance) {
        respond subtemaInstance
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(Subtema subtemaInstance) {
        if (subtemaInstance == null) {
            notFound()
            return
        }

        if (subtemaInstance.hasErrors()) {
            respond subtemaInstance.errors, view:'edit'
            return
        }

        subtemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Subtema.label', default: 'Subtema'), subtemaInstance.id])
                redirect subtemaInstance
            }
            '*'{ respond subtemaInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Subtema subtemaInstance) {

        if (subtemaInstance == null) {
            notFound()
            return
        }

        subtemaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Subtema.label', default: 'Subtema'), subtemaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    @Secured(['permitAll'])
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'subtema.label', default: 'Subtema'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
