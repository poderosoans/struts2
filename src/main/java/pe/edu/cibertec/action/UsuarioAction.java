package pe.edu.cibertec.action;

import static com.opensymphony.xwork2.Action.LOGIN;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import pe.edu.cibertec.model.Usuario;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Java-LM
 */
public class UsuarioAction extends ActionSupport{
    private Usuario usuario;

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    public String inicio() {
        return LOGIN;
    }
    
    public String login() throws Exception {
        
        if("pepe".equals(usuario.getUsername()) && "123".equals(usuario.getPassword()) ){
            // Obtenemos la sesion
            Map session = ActionContext.getContext().getSession();
            
            // Guardamos objetos en sesion
            session.put("usuario", getUsuario().getUsername());
            
            addActionMessage(getText("login.ok"));
            return SUCCESS;
        } else {
            addActionError(getText("login.error"));
            return LOGIN;
        }
    }
    
    public String logout() throws Exception {
        // Obtenemos la session
        Map session = ActionContext.getContext().getSession();
        SessionMap sessionMap = (SessionMap) session;
        sessionMap.invalidate();
        
        return LOGIN;
    }
    
    @Override
    public void validate() {
        
        if (getUsuario() != null) {
            String usuario = getUsuario().getUsername();
            String password = getUsuario().getPassword();
            
            if(usuario == null || usuario.equals("") ) {
                addFieldError("usuario.username", "Ingrese usuario");
            }
            
            if(password == null || password.equals("") ) {
                addFieldError("usuario.password", "Ingrese password");
            }
            
            // n validaciones
        }
    }
    
}
