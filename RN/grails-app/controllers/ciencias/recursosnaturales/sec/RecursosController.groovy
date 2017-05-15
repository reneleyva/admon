package ciencias.recursosnaturales.sec

/**
 *
 * @author Aaron
 */

import grails.plugin.springsecurity.annotation.Secured

/**
 *
 * @author Salvador
 */
class RecursosController {
    def springSecurityService

    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    //todos lo pueden ver
    @Secured(['permitAll'])
    def historia(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recursos.list(params), model:[recursosInstanceCount: Recursos.count()]
    }

    //todos lo pueden ver
    @Secured("hasAnyRole('ROLE_PROFE','ROLE_ADMIN')")
    def perfil() {
        println "Hello world!   antes"
        respond cuentaInstance.errors, view:'perfil'
         redirect(uri: "/")   
        println "Hello world!   despues"

    }

    def create() {
        respond new Recursos(params)
    }

    def save(Recursos recursosInstance) {
        if (recursosInstance == null) {
            notFound()
            return
        }

        if (recursosInstance.hasErrors()) {
            respond recursosInstance.errors, view:'create'
            return
        }

        recursosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recursos.label', default: 'Recursos'), recursosInstance.id])
                redirect recursosInstance
            }
            '*' { respond recursosInstance, [status: CREATED] }
        }
    }

    def edit(Recursos recursosInstance) {
        respond recursosInstance
    }

    def update(Recursos recursosInstance) {
        if (recursosInstance == null) {
            notFound()
            return
        }

        if (recursosInstance.hasErrors()) {
            respond recursosInstance.errors, view:'edit'
            return
        }

        recursosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recursos.label', default: 'Recursos'), recursosInstance.id])
                redirect recursosInstance
            }
            '*'{ respond recursosInstance, [status: OK] }
        }
    }

    def delete(Recursos recursosInstance) {

        if (recursosInstance == null) {
            notFound()
            return
        }

        recursosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recursos.label', default: 'Recursos'), recursosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recursos.label', default: 'Recursos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
