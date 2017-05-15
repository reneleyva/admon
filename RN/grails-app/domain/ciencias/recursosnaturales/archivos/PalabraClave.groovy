package ciencias.recursosnaturales.archivos

class PalabraClave {

    // Una palabra tiene relacion con muchos trabajos
    static belongsTo = Trabajo
    static hasMany = [trabajos:Trabajo]
    
    // Atributos
    String palabra
    
    // Restricciones   
    static constraints = {
         palabra (blank: false, nullable: true )
    }

    // Mapeo a la base de datos
    static mapping  = {
        
        table "palabra_clave"
        sort "palabra"
        id generator: "sequence", params: [sequence: "palabra_clave_seq"]
        palabra          sqltype: "varchar2(50)"

    }    
    
    // Mostrar en el sistema   
    public String toString(){
        return palabra
    }    
}
