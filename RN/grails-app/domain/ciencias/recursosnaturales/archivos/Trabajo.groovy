package ciencias.recursosnaturales.archivos

class Trabajo {

    String titulo
    Subtema tema

    // Un trabajo tiene muchas palabrasclave
    static hasMany = [palabras: PalabraClave, documento: Document]  

    String descripcion
    Date fechaCreacion
    
    // Un trabajo esta relacionado a un profesor
    static belongsTo = [profesor: Profesor]

    String colaboradores
    String simposio
    
  
    static constraints = {
        titulo                     (blank: false, nullable: false, unique: true )
        //tema                     (blank: false, nullable: false, matches: Constantes.Restric_Nombre,  unique: true )
        descripcion            (blank: false, nullable: false,  maxSize: 4000, widget: 'textarea')
        //descripcion            (blank: false, nullable: false,matches:Constantes.Restric_Texto,  maxSize: 256)
        fechaCreacion        (blank: false, nullable: false)
        //fechaCreacion        (blank: false, nullable: false, format: yyyy-MM-dd )
        colaboradores        (blank: false, nullable: false, maxSize: 2000)
        simposio inList: ["Sí", "No"]
    }
    
    // Mostrar en el sistema   
    public String toString(){   
        return titulo
    }
}
