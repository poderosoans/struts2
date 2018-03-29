/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import pe.edu.cibertec.dao.DaoCliente;
import pe.edu.cibertec.dao.implement.PersistenciaBDDaoCliente;
import pe.edu.cibertec.model.Cliente;


/**
 *
 * @author portatil
 */
public class ClienteAction extends ActionSupport {
    
    private Cliente cliente;
    private Map operadores;
    private List<Cliente> clientList = new ArrayList<Cliente>();
    private DaoCliente dao = new PersistenciaBDDaoCliente();
    
    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Map getOperadores() {
        return operadores;
    }

    public void setOperadores(Map operadores) {
        this.operadores = operadores;
    }

    public List<Cliente> getClientList() {
        return clientList;
    }

    public void setClientList(List<Cliente> clientList) {
        this.clientList = clientList;
    }
    public String inicializar() throws Exception {
        
        //inicializar lista de operadores según país de cliente  - según IP
        String pais="PERU";
        operadores=new HashMap();
        if(pais.equals("PERU")){
            operadores.put("O1", "OPERADOR 1");
            operadores.put("O2", "OPERADOR 2");
            operadores.put("O3", "OPERADOR 3");
        }else{
            operadores.put("OF", "OPERADOR FORANEO");
        }
        
        return SUCCESS;  
    }
    
    public String registrar() throws Exception {
        if(cliente.getCodigo() != 0) {
            dao.modificarCliente(cliente);
            return SUCCESS; 
        }
        dao.insertarCliente(cliente);
        return SUCCESS;  
    }
    
    public String editar() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
	cliente = dao.obtenerCliente(Integer.parseInt(request.getParameter("id")));
	return SUCCESS;
    }
    
    public String eliminar() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
	dao.eliminarCliente(Integer.parseInt(request.getParameter("id")));

        addActionMessage(getText("cliente.eliminado"));
        return SUCCESS;  
    }
    
    public String listar() throws Exception {
        clientList = dao.listarCliente();
	return SUCCESS;
    }
    
}
