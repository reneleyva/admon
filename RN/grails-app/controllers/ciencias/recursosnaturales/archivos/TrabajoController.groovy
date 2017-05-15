package ciencias.recursosnaturales.archivos

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import org.springframework.security.access.annotation.Secured


@Transactional(readOnly = true)
class TrabajoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['permitAll'])
    def index(Integer max) {
        params.max = Math.min(max ?: 20, 100)
        respond Trabajo.list(params), model:[trabajoInstanceCount: Trabajo.count()]
    }

    @Secured(['permitAll'])
    def show(Trabajo trabajoInstance) {
        respond trabajoInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Trabajo(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Trabajo trabajoInstance) {
        if (trabajoInstance == null) {
            notFound()
            return
        }

        if (trabajoInstance.hasErrors()) {
            respond trabajoInstance.errors, view:'create'
            return
        }

        trabajoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trabajo.label', default: 'Trabajo'), trabajoInstance.id])
                redirect trabajoInstance
            }
            '*' { respond trabajoInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Trabajo trabajoInstance) {
        respond trabajoInstance
    }
    
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(Trabajo trabajoInstance) {
        if (trabajoInstance == null) {
            notFound()
            return
        }

        if (trabajoInstance.hasErrors()) {
            respond trabajoInstance.errors, view:'edit'
            return
        }

        trabajoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Trabajo.label', default: 'Trabajo'), trabajoInstance.id])
                redirect trabajoInstance
            }
            '*'{ respond trabajoInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Trabajo trabajoInstance) {

        if (trabajoInstance == null) {
            notFound()
            return
        }

        trabajoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Trabajo.label', default: 'Trabajo'), trabajoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    @Secured(['permitAll'])
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trabajo.label', default: 'Trabajo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    @Secured("hasAnyRole('ROLE_PROFE','ROLE_ADMIN')")
    def download(long id) {
        Document documentInstance = Document.get(id)
        if ( documentInstance == null) {
            flash.message = "Document not found."
            redirect (action:'list')
        } else {
            response.setContentType("APPLICATION/OCTET-STREAM")
            response.setHeader("Content-Disposition", "Attachment;Filename=\"${documentInstance.filename}\"")

            def file = new File(documentInstance.fullPath)
            def fileInputStream = new FileInputStream(file)
            def outputStream = response.getOutputStream()

            byte[] buffer = new byte[4096];
            int len;
            while ((len = fileInputStream.read(buffer)) > 0) {
                outputStream.write(buffer, 0, len);
            }
 
            outputStream.flush()
            outputStream.close()
            fileInputStream.close()
        }
    }   
}
