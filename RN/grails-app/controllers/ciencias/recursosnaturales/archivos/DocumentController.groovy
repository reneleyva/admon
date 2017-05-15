package ciencias.recursosnaturales.archivos

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class DocumentController {

    static allowedMethods = [save: "POST"]

    @Secured("hasAnyRole('ROLE_PROFE','ROLE_ADMIN')")
    def index() {
        redirect(action: "list", params: params)
    }

    @Secured("hasAnyRole('ROLE_PROFE','ROLE_ADMIN')")
    def list() {
        params.max = 100
        [documentInstanceList: Document.list(params), documentInstanceTotal: Document.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
    }

    @Secured(['ROLE_ADMIN'])
    def upload() {
        def file = request.getFile('file')
        if(file.empty) {
            flash.message = "Archivo vacio, selecciona otro"
        } else {
            def documentInstance = new Document()
            documentInstance.filename = file.originalFilename
            
            documentInstance.fullPath = grailsApplication.config.uploadFolder + documentInstance.filename
            file.transferTo(new File(documentInstance.fullPath))
            documentInstance.save()
        }
        redirect (action:'list')

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
