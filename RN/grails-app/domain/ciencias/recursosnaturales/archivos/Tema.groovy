package ciencias.recursosnaturales.archivos

class Tema {

    // Un tema tiene muchos subtemas 
    static hasMany = [subtemas: Subtema]    
    
    // Atributos
    String nombre
    
    // Restricciones   
    static constraints = {
        nombre (blank: false, nullable: false, unique: true)
    }

    // Mapeo a la base de datos
    static mapping  = {
        
        table "tema"
        sort "nombre"
        id generator: "sequence", params: [sequence: "tema_seq"]
        nombre          sqltype: "varchar2(50)"

    }   

    // Mostrar en el sistema   
    public String toString(){
        return nombre
    } 
}
