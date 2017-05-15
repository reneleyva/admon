/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ciencias.recursosnaturales.sec

/**
 *
 * @author Salvador
 */
import grails.plugin.springsecurity.annotation.Secured

/**
 *
 * @author Salvador
 */
class secController {
    def springSecurityService
    
    @Secured("hasAnyRole('ROLE_PROFE','ROLE_ADMIN')")
    def index() { 
        if(springSecurityService.currentUser?.username == "admin" ){
            flash.message = "admin"
            session.user="admin"
        }else{
            if(springSecurityService.currentUser?.username == "profe"){
                flash.message = "profe"
                session.user="profe"
            }
        }
    redirect(uri: "/")
    }
    
    @Secured(['permitAll'])
    def salida(){
        if (session != null) {
            if (isLoggedIn()){
                session.invalidate();
            }
            
        }
    
     redirect(uri: "/")   
    }	
}

