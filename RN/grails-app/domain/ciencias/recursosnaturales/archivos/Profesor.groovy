package ciencias.recursosnaturales.archivos



class Profesor {

    // Un profesor tiene muchos trabajos 
    static hasMany = [trabajos: Trabajo]    
    
    // Atributos
    String nombre
    String apellidos
    String grado
    String correo
    String descripcion
    String academia
    
    // Restricciones
    static constraints = {
        
        nombre (blank: false, nullable: false )
        apellidos (blank: false, nullable: false )
        grado inList: ["Dra.", "M. en C.", "Dr.", "Biol.", "Lic. en D.", "M. en Est. Reg.",  "M. ",  "Lic.", "-"]             
        correo (email: true, blank: true, nullable: false )
        descripcion (blank: true, nullable: true, maxSize: 5000)
        academia inList: ["Sí", "No"]        
        
    }
    
    // Mapeo a la base de datos
    static mapping  = {
        
        table "profesor"
        sort "apellidos"
        id generator: "sequence", params: [sequence: "profesor_seq"]
        nombre          sqltype: "varchar2(50)"
        apellidos       sqltype: "varchar2(100)"
        grado           sqltype: "varchar2(20)"
        correo          sqltype: "varchar2(50)"
        descripcion     sqltype: "varchar2(5000)"
        academia        sqltype: "varchar2(2)"
    }
    

    
    // Mostrar en el sistema
    public String toString(){
        return nombre+" "+apellidos
    }
}
