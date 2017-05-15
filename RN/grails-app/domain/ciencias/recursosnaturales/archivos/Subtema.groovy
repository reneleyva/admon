package ciencias.recursosnaturales.archivos

class Subtema {

    Trabajo Trabajo
    
    // Atributos
    String nombre
    
    // Muchos subtemas tiene un tema 
    static belongsTo = [tema: Tema]
    
    // Restricciones   
    static constraints = {
        nombre (blank: false, nullable: false, unique: true  )
    }

    // Mapeo a la base de datos
    static mapping  = {
        table "subtema"
        sort "nombre"
        id generator: "sequence", params: [sequence: "subtema_seq"]
        nombre          sqltype: "varchar2(50)"
    }   
    
    // Mostrar en el sistema
    public String toString(){
        return nombre
    } 
}
