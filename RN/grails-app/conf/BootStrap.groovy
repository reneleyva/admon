
import ciencias.recursosnaturales.sec.Cuenta
import ciencias.recursosnaturales.sec.CuentaRol
import ciencias.recursosnaturales.sec.Rol

class BootStrap {

    def init = { servletContext ->
         def adminRol= new Rol(authority: 'ROLE_ADMIN').save(flush: true)
        def adminProfe= new Rol(authority: 'ROLE_PROFE').save(flush: true)
        
        def adminUsuario= new Cuenta(username: 'admin@admin.com', enabled: true, password: 'admin')
        def profeUsuario= new Cuenta(username: 'profe', enabled: true, password: 'profe')
        adminUsuario.save(flush: true)
        profeUsuario.save(flush: true)
        
        CuentaRol.create adminUsuario, adminRol, true
        CuentaRol.create profeUsuario, adminProfe, true
            
        assert Cuenta.count() >= 2
        assert Rol.count() >= 2
        assert CuentaRol.count() >= 2
    }
    def destroy = {
    }
}
