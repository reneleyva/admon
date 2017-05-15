package ciencias.recursosnaturales.archivos

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
class PalabraClaveController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PalabraClave.list(params), model:[palabraClaveInstanceCount: PalabraClave.count()]
    }

    @Secured(['permitAll'])
    def show(PalabraClave palabraClaveInstance) {
        respond palabraClaveInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new PalabraClave(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(PalabraClave palabraClaveInstance) {
        if (palabraClaveInstance == null) {
            notFound()
            return
        }

        if (palabraClaveInstance.hasErrors()) {
            respond palabraClaveInstance.errors, view:'create'
            return
        }

        palabraClaveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'palabraClave.label', default: 'PalabraClave'), palabraClaveInstance.id])
                redirect palabraClaveInstance
            }
            '*' { respond palabraClaveInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(PalabraClave palabraClaveInstance) {
        respond palabraClaveInstance
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(PalabraClave palabraClaveInstance) {
        if (palabraClaveInstance == null) {
            notFound()
            return
        }

        if (palabraClaveInstance.hasErrors()) {
            respond palabraClaveInstance.errors, view:'edit'
            return
        }

        palabraClaveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PalabraClave.label', default: 'PalabraClave'), palabraClaveInstance.id])
                redirect palabraClaveInstance
            }
            '*'{ respond palabraClaveInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(PalabraClave palabraClaveInstance) {

        if (palabraClaveInstance == null) {
            notFound()
            return
        }

        palabraClaveInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PalabraClave.label', default: 'PalabraClave'), palabraClaveInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    @Secured(['permitAll'])
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'palabraClave.label', default: 'PalabraClave'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
