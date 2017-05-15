package ciencias.recursosnaturales.sec



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CorreoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def mailService
    def codigo=1234 
    
    def index() {
//        params.max = Math.min(max ?: 10, 100)
//        respond Correo.list(params), model:[correoInstanceCount: Correo.count()]
    
 
    
 
    }
    def enviar(){
         [datos:params]
        
        //se envia el correo de alta de nuevo usuario
        mailService.sendMail {
            //to "salvador360201@gmail.com"
            //to "aaron_guerrero21@ciencias.unam.mx "
            to "rnsistemaunam@gmail.com"
            from "rnsistemaunam@gmail.com"
            subject "Nuevo Registro XD"
            html "hola soy : <br>    " + params.nombre +"<br> <br> mis motivos para registrarme son: <br>" +"<b>"+params.motivos+"</b> <br> <br>" +"el correo es : " + params.email +"<br><br><br> mensaje automatico desde la pagina XD"
            
           
        }
         redirect(uri: "/")
        
    }
    
    def recupera(){
        
        [datos:params]
        
        //se envia el correo de alta de nuevo usuario
        mailService.sendMail {
            //to "salvador360201@gmail.com"
            //to "aaron_guerrero21@ciencias.unam.mx "
            to params.email
            from "rnsistemaunam@gmail.com"
            subject "Recuperacion de Contraseña XD"
            html "hola : <br> " + params.nombre +"<br> <br> tu codigo de recuperacion es:<br>"+codigo +"</b> <br> <br>"  +"<br><br><br> mensaje automatico desde la pagina XD"  
            
           
        }
         
        
    }
    
    def confirma(){
        [datos:params]
        // revisar si existet en sistema
        if("123" == params.confimanum){
            
            if (params.newcontra == params.repitecontra){
                    //cambiar la contraseña
                    flash.message = "Cambio exitoso"
                redirect(uri: "/")
            }else{
                flash.message = "las contraseñas no coinciden "
                redirect(uri: "/login/auth")
            }
            
            
        }else{
            flash.message = "numero de identificacion incorrecto"
            redirect(uri: "/login/auth")
        }
        
    }
    
    
    def show(Correo correoInstance) {
        respond correoInstance
    }

    def create() {
        respond new Correo(params)
    }

    @Transactional
    def save(Correo correoInstance) {
        if (correoInstance == null) {
            notFound()
            return
        }

        if (correoInstance.hasErrors()) {
            respond correoInstance.errors, view:'create'
            return
        }

        correoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'correo.label', default: 'Correo'), correoInstance.id])
                redirect correoInstance
            }
            '*' { respond correoInstance, [status: CREATED] }
        }
    }

    def edit(Correo correoInstance) {
        respond correoInstance
    }

    @Transactional
    def update(Correo correoInstance) {
        if (correoInstance == null) {
            notFound()
            return
        }

        if (correoInstance.hasErrors()) {
            respond correoInstance.errors, view:'edit'
            return
        }

        correoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Correo.label', default: 'Correo'), correoInstance.id])
                redirect correoInstance
            }
            '*'{ respond correoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Correo correoInstance) {

        if (correoInstance == null) {
            notFound()
            return
        }

        correoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Correo.label', default: 'Correo'), correoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'correo.label', default: 'Correo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
