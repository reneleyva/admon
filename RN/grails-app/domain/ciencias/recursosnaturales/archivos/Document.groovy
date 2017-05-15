package ciencias.recursosnaturales.archivos

class Document {
    

    
    // Atributos
    String filename
    String fullPath
    
    Date uploadDate = new Date()
       
    static constraints = {
        filename(unique:true)
        fullPath()
    }
    
    public String toString(){   
        return filename
    }
}
