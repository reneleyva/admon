package ciencias.recursosnaturales.sec


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class CuentaRolController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CuentaRol.list(params), model:[cuentaRolInstanceCount: CuentaRol.count()]
    }

    def show(CuentaRol cuentaRolInstance) {
        respond cuentaRolInstance
    }

    def create() {
        respond new CuentaRol(params)
    }

    @Transactional
    def save(CuentaRol cuentaRolInstance) {
        if (cuentaRolInstance == null) {
            notFound()
            return
        }

        if (cuentaRolInstance.hasErrors()) {
            respond cuentaRolInstance.errors, view:'create'
            return
        }

        cuentaRolInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cuentaRol.label', default: 'CuentaRol'), cuentaRolInstance.id])
                //redirect cuentaRolInstance
                redirect(uri: "/cuentaRol/index")
            }
            '*' { respond cuentaRolInstance, [status: CREATED] }
            redirect(uri: "/cuentaRol/index")  
        }
    }

    def edit(CuentaRol cuentaRolInstance) {
        respond cuentaRolInstance
    }

    @Transactional
    def update(CuentaRol cuentaRolInstance) {
        if (cuentaRolInstance == null) {
            notFound()
            return
        }

        if (cuentaRolInstance.hasErrors()) {
            respond cuentaRolInstance.errors, view:'edit'
            return
        }

        cuentaRolInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CuentaRol.label', default: 'CuentaRol'), cuentaRolInstance.id])
                redirect cuentaRolInstance
            }
            '*'{ respond cuentaRolInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CuentaRol cuentaRolInstance) {

        if (cuentaRolInstance == null) {
            notFound()
            return
        }

        cuentaRolInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CuentaRol.label', default: 'CuentaRol'), cuentaRolInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cuentaRol.label', default: 'CuentaRol'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
